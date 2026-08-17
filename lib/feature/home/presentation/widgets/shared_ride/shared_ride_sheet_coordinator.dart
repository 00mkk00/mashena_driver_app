import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/toast_helper.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_state.dart';

import 'create_ride_sheet.dart';
import 'open_lobby_sheet.dart';
import 'boarding_sheet.dart';
import 'live_trip_sheet.dart';
import 'shared_trip_summary_sheet.dart';

class SharedRideSheetCoordinator extends StatefulWidget {
  final VoidCallback? onClose;
  const SharedRideSheetCoordinator({super.key, this.onClose});

  @override
  State<SharedRideSheetCoordinator> createState() =>
      _SharedRideSheetCoordinatorState();
}

class _SharedRideSheetCoordinatorState extends State<SharedRideSheetCoordinator>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = true;

  late AnimationController _slideController;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _slideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
    );
    _slideAnimation = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: _slideController, curve: Curves.easeOutCubic),
        );
    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _slideController, curve: Curves.easeIn));
    _slideController.forward();
  }

  @override
  void dispose() {
    _slideController.dispose();
    super.dispose();
  }

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  void _closeSheet() {
    context.read<SharedRideCubit>().reset();
    if (widget.onClose != null) {
      widget.onClose!();
    } else {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocConsumer<SharedRideCubit, SharedRideState>(
      listenWhen: (prev, curr) =>
          prev.errorMessage != curr.errorMessage || prev.status != curr.status,
      listener: (context, state) {
        if (state.errorMessage != null && state.errorMessage!.isNotEmpty) {
          context.showErrorToast(state.errorMessage!);
        }
        if (state.status == SharedRideStatus.cancelled) {
          context.showInfoToast(S.of(context).sharedRideCancelledToast);
          _closeSheet();
        }
      },
      builder: (context, state) {
        final screenHeight = MediaQuery.of(context).size.height;
        final viewInsetsBottom = MediaQuery.of(context).viewInsets.bottom;
        final availableHeight = screenHeight - viewInsetsBottom;

        return SlideTransition(
          position: _slideAnimation,
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Padding(
              padding: EdgeInsets.only(bottom: viewInsetsBottom),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: (viewInsetsBottom > 0
                      ? availableHeight * 0.7
                      : screenHeight * 0.8),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
                  decoration: BoxDecoration(
                    color: isDark ? AppColors.cardDark : AppColors.cardLight,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(AppRadius.xl.r),
                      bottom: Radius.circular(AppRadius.lg.r),
                    ),
                    boxShadow: AppShadows.card,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _DragHandle(onTap: _toggleExpanded),
                      Flexible(
                        child: AnimatedCrossFade(
                          firstChild: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: AnimatedSwitcher(
                              duration: const Duration(milliseconds: 300),
                              child: _buildCurrentSheet(state.status),
                            ),
                          ),
                          secondChild: const SizedBox.shrink(),
                          crossFadeState: _isExpanded
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                          duration: const Duration(milliseconds: 300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildCurrentSheet(SharedRideStatus status) {
    switch (status) {
      case SharedRideStatus.idle:
      case SharedRideStatus.creating:
        return const CreateRideSheet(key: ValueKey('createRide'));
      case SharedRideStatus.lobby:
        return const OpenLobbySheet(key: ValueKey('openLobby'));
      case SharedRideStatus.boarding:
        return const BoardingSheet(key: ValueKey('boarding'));
      case SharedRideStatus.liveTrip:
        return const LiveTripSheet(key: ValueKey('liveTrip'));
      case SharedRideStatus.summary:
        return SharedTripSummarySheet(
          key: const ValueKey('summary'),
          onClose: _closeSheet,
        );
      case SharedRideStatus.cancelled:
        return const SizedBox.shrink();
    }
  }
}

class _DragHandle extends StatelessWidget {
  final VoidCallback onTap;
  const _DragHandle({required this.onTap});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppSpacing.sm.h),
        child: Center(
          child: Container(
            width: 36.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: isDark ? AppColors.dividerDark : AppColors.divider,
              borderRadius: BorderRadius.circular(AppRadius.full.r),
            ),
          ),
        ),
      ),
    );
  }
}
