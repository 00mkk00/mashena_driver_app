import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/utils/app_toast.dart';
import 'package:mashena_driver_app/core/widgets/shimmer.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/socket_cubit/socket_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/route_row.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/stops_section.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/trip_meta_row.dart';

class RideRequestCard extends StatefulWidget {
  const RideRequestCard({super.key});

  @override
  State<RideRequestCard> createState() => _RideRequestCardState();
}

class _RideRequestCardState extends State<RideRequestCard>
    with SingleTickerProviderStateMixin {
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

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder<RideRequestCubit, RideRequestState>(
      builder: (context, state) {
        return SlideTransition(
          position: _slideAnimation,
          child: FadeTransition(
            opacity: _fadeAnimation,
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
                  _DragHandle(
                    onTap: () =>
                        context.read<RideRequestCubit>().toggleBottomSheet(),
                  ),
                  _CountdownBar(
                    context,
                    seconds: state.countdownSeconds,
                    total: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      AppSpacing.md.w,
                      AppSpacing.sm.h,
                      AppSpacing.md.w,
                      AppSpacing.md.h,
                    ),
                    child: state.isLoadingDetails
                        ? _TripDetailsShimmer()
                        : state.rideRequestEntity != null
                        ? _TripDetailsContent(ride: state.rideRequestEntity!)
                        : _TripDetailsError(
                            message:
                                state.errorMessage ??
                                S.of(context).rideRequestFailedToLoad,
                          ),
                  ),
                  // ── Action buttons always visible ──────────────────
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      AppSpacing.md.w,
                      0,
                      AppSpacing.md.w,
                      AppSpacing.md.h,
                    ),
                    child: _ActionButtons(
                      onAccept: () {
                        final id = context
                            .read<RideRequestCubit>()
                            .state
                            .rideRequestId!;
                        final sent = context.read<SocketCubit>().acceptOffer(
                          id,
                        );
                        if (sent) {
                          context.read<RideRequestCubit>().acceptRequest();
                          context.read<DriverStatusCubit>().acceptRide();
                        } else {
                          AppToast.show(
                            context,
                            message: S.of(context).commonError,
                            type: AppToastType.error,
                          );
                        }
                      },
                      onReject: () async {
                        final id = context
                            .read<RideRequestCubit>()
                            .state
                            .rideRequestId!;
                        final sent = context.read<SocketCubit>().rejectOffer(
                          id,
                        );
                        if (sent) {
                          context.read<RideRequestCubit>().rejectRequest();
                          context.read<DriverStatusCubit>().rejectRide();
                        } else {
                          AppToast.show(
                            context,
                            message: S.of(context).commonError,
                            type: AppToastType.error,
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// ─── Trip Details Content ─────────────────────────────────────────────────────
class _TripDetailsContent extends StatelessWidget {
  final RideRequestEntity ride;
  const _TripDetailsContent({required this.ride});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5),
        TripMetaRow(ride: ride),
        const SizedBox(height: 10),
        RouteRow(trip: ride),
        SizedBox(height: 14.h),
        if (ride.stops.isNotEmpty) ...[
          StopsSection(stops: ride.stops),
          SizedBox(height: 14.h),
        ],
        // _TripStatusChip(status: ride.status),
      ],
    );
  }
}

// ─── Route Details ────────────────────────────────────────────────────────────

// // ─── Trip Status Chip ─────────────────────────────────────────────────────────
// class _TripStatusChip extends StatelessWidget {
//   final String status;
//   const _TripStatusChip({required this.status});

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.centerLeft,
//       child: Container(
//         padding: EdgeInsets.symmetric(
//           horizontal: AppSpacing.sm.w,
//           vertical: AppSpacing.xs.h,
//         ),
//         decoration: BoxDecoration(
//           color: AppColors.primarySurface,
//           borderRadius: BorderRadius.circular(AppRadius.full.r),
//         ),
//         child: Text(
//           status.toUpperCase(),
//           style: AppTextStyles.w400_10.copyWith(color: AppColors.primaryColor),
//         ),
//       ),
//     );
//   }
// }

// ─── Shimmer while loading ────────────────────────────────────────────────────
class _TripDetailsShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShimmerCard(height: 20.h),
        SizedBox(height: AppSpacing.sm.h),
        ShimmerCard(height: 20.h),
        SizedBox(height: AppSpacing.sm.h),
        ShimmerCard(height: 16.h),
      ],
    );
  }
}

// ─── Error state ──────────────────────────────────────────────────────────────
class _TripDetailsError extends StatelessWidget {
  final String message;
  const _TripDetailsError({required this.message});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.error_outline_rounded, size: 16.r, color: AppColors.danger),
        SizedBox(width: AppSpacing.xs.w),
        Expanded(
          child: Text(
            message,
            style: AppTextStyles.w400_12.copyWith(color: AppColors.danger),
          ),
        ),
      ],
    );
  }
}

// ─── Drag Handle ──────────────────────────────────────────────────────────────
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

// ─── Countdown Bar ────────────────────────────────────────────────────────────
class _CountdownBar extends StatelessWidget {
  final int seconds;
  final int total;
  final BuildContext context;
  const _CountdownBar(
    this.context, {
    required this.seconds,
    required this.total,
  });

  Color get _barColor {
    final ratio = seconds / total;
    if (ratio > 0.5) return AppColors.online;
    if (ratio > 0.25) return AppColors.warning;
    return AppColors.danger;
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.of(context).rideRequestNew,
                style: AppTextStyles.w600_16.copyWith(
                  color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm.w,
                  vertical: 3.h,
                ),
                decoration: BoxDecoration(
                  color: _barColor.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(AppRadius.full.r),
                ),
                child: Text(
                  S.of(context).rideRequestSeconds(seconds),
                  style: AppTextStyles.w600_12.copyWith(color: _barColor),
                ),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.sm.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.full.r),
            child: LinearProgressIndicator(
              value: seconds / total,
              backgroundColor: isDark
                  ? AppColors.dividerDark
                  : AppColors.divider,
              valueColor: AlwaysStoppedAnimation<Color>(_barColor),
              minHeight: 5.h,
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Action Buttons ───────────────────────────────────────────────────────────
class _ActionButtons extends StatelessWidget {
  final VoidCallback onAccept;
  final VoidCallback onReject;
  const _ActionButtons({required this.onAccept, required this.onReject});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            onPressed: onReject,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: AppColors.danger, width: 1.5),
              foregroundColor: AppColors.danger,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppRadius.md.r),
              ),
              padding: EdgeInsets.symmetric(vertical: 13.h),
            ),
            icon: Icon(Icons.close_rounded, size: 17.r),
            label: Text(
              S.of(context).commonReject,
              style: AppTextStyles.w600_14.copyWith(color: AppColors.danger),
            ),
          ),
        ),
        SizedBox(width: AppSpacing.sm.w),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: onAccept,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.online,
              foregroundColor: Colors.white,
              elevation: 0,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppRadius.md.r),
              ),
              padding: EdgeInsets.symmetric(vertical: 13.h),
            ),
            icon: Icon(Icons.check_rounded, size: 17.r),
            label: Text(
              S.of(context).commonAccept,
              style: AppTextStyles.w700_14.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
