import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/data/params/go_online_params.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/map_cubit/map_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/driver_status_toggle.dart';

class WaitingForRideCard extends StatefulWidget {
  const WaitingForRideCard({super.key});

  @override
  State<WaitingForRideCard> createState() => _WaitingForRideCardState();
}

class _WaitingForRideCardState extends State<WaitingForRideCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _dotController;

  @override
  void initState() {
    super.initState();
    _dotController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    )..repeat();
  }

  @override
  void dispose() {
    _dotController.dispose();
    super.dispose();
  }

  Future<void> _handleToggle(BuildContext context) async {
    var position = context.read<MapCubit>().state.currentPosition;
    if (position == null) {
      try {
        final pos = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
        position = LatLng(pos.latitude, pos.longitude);
      } catch (_) {
        position = const LatLng(0, 0);
      }
    }
    if (!context.mounted) return;
    context.read<DriverStatusCubit>().toggleOnlineStatus(
          GoOnlineParams(
            lat: position.latitude,
            lng: position.longitude,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DriverStatusCubit, DriverStatusState>(
      builder: (context, driverState) {
        final isDark = Theme.of(context).brightness == Brightness.dark;
        final isOnline = driverState.isOnline;

        return Container(
          margin: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
          padding: EdgeInsets.all(AppSpacing.md.r),
          decoration: BoxDecoration(
            color: isDark ? AppColors.cardDark : AppColors.cardLight,
            borderRadius: BorderRadius.circular(AppRadius.lg.r),
            boxShadow: AppShadows.card,
          ),
          child: Row(
            children: [
              // ── Status Icon ─────────────────────────────────────
              Container(
                width: 44.r,
                height: 44.r,
                decoration: BoxDecoration(
                  color: isOnline
                      ? (isDark
                          ? AppColors.primaryLight.withValues(alpha: 0.15)
                          : AppColors.primarySurface)
                      : (isDark
                          ? AppColors.surfaceVariantDark
                          : AppColors.offlineSurface),
                  borderRadius: BorderRadius.circular(AppRadius.sm.r),
                ),
                child: Icon(
                  isOnline
                      ? Icons.search_rounded
                      : Icons.power_settings_new_rounded,
                  color: isOnline
                      ? (isDark
                          ? AppColors.primaryLight
                          : AppColors.primaryColor)
                      : AppColors.offline,
                  size: 24.r,
                ),
              ),

              SizedBox(width: AppSpacing.md.w),

              // ── Labels ──────────────────────────────────────────
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      isOnline
                          ? S.of(context).homeLookingForPassengers
                          : S.of(context).homeOffline,
                      style: AppTextStyles.w600_14.copyWith(
                        color: isDark
                            ? AppColors.onSurfaceDark
                            : AppColors.onSurface,
                      ),
                    ),
                    SizedBox(height: 3.h),
                    if (isOnline)
                      AnimatedBuilder(
                        animation: _dotController,
                        builder: (_, _) {
                          final dots = '.' *
                              ((_dotController.value * 4).floor().clamp(1, 3));
                          return Text(
                            '${S.of(context).homeSearching}$dots',
                            style: AppTextStyles.w400_12.copyWith(
                              color: isDark
                                  ? AppColors.primaryLight
                                  : AppColors.primaryColor,
                            ),
                          );
                        },
                      )
                    else
                      Text(
                        S.of(context).homeGoOnlineHint,
                        style: AppTextStyles.w400_12.copyWith(
                          color: isDark
                              ? AppColors.textGreyDark
                              : AppColors.textGrey,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
              ),

              SizedBox(width: AppSpacing.sm.w),

              // ── Status Toggle Button ──────────────────────────────
              DriverStatusToggle(
                state: driverState,
                onTap: () => _handleToggle(context),
              ),
            ],
          ),
        );
      },
    );
  }
}
