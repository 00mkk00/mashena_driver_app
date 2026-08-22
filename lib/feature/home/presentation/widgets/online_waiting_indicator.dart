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
import 'package:mashena_driver_app/core/utils/app_toast.dart';
import 'package:mashena_driver_app/feature/home/data/params/go_online_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/map_cubit/map_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/socket_cubit/socket_cubit.dart';
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
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocListener<RideRequestCubit, RideRequestState>(
      listenWhen: (prev, curr) =>
          prev.reconsiderSuccessMessage != curr.reconsiderSuccessMessage ||
          prev.reconsiderErrorMessage != curr.reconsiderErrorMessage,
      listener: (context, rideState) {
        if (rideState.reconsiderSuccessMessage != null) {
          AppToast.show(
            context,
            message: rideState.reconsiderSuccessMessage!,
            type: AppToastType.success,
          );
        } else if (rideState.reconsiderErrorMessage != null) {
          AppToast.show(
            context,
            message: rideState.reconsiderErrorMessage!,
            type: AppToastType.error,
          );
        }
      },
      child: BlocBuilder<DriverStatusCubit, DriverStatusState>(
        builder: (context, driverState) {
          final isOnline = driverState.isOnline;

          return BlocBuilder<RideRequestCubit, RideRequestState>(
            builder: (context, rideState) {
              final showMissedRide =
                  isOnline && rideState.hasExpiredRide;

              return Container(
                margin: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
                padding: EdgeInsets.all(AppSpacing.md.r),
                decoration: BoxDecoration(
                  color: isDark ? AppColors.cardDark : AppColors.cardLight,
                  borderRadius: BorderRadius.circular(AppRadius.lg.r),
                  boxShadow: AppShadows.card,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // ── Status Row ───────────────────────────────────
                    Row(
                      children: [
                        // ── Status Icon ──────────────────────────────
                        Container(
                          width: 44.r,
                          height: 44.r,
                          decoration: BoxDecoration(
                            color: isOnline
                                ? (isDark
                                    ? AppColors.primaryLight
                                        .withValues(alpha: 0.15)
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

                        // ── Labels ───────────────────────────────────
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
                                        ((_dotController.value * 4)
                                            .floor()
                                            .clamp(1, 3));
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

                        // ── Status Toggle Button ───────────────────────
                        DriverStatusToggle(
                          state: driverState,
                          onTap: () => _handleToggle(context),
                        ),
                      ],
                    ),

                    // ── Missed Ride Section ──────────────────────────
                    if (showMissedRide) ...[
                      SizedBox(height: AppSpacing.md.h),
                      _MissedRideSection(
                        rideId: rideState.lastExpiredRideRequestId!,
                        ride: rideState.lastExpiredRideRequest,
                        isReconsidering: rideState.isReconsidering,
                      ),
                    ],
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// ─── Missed Ride Section ──────────────────────────────────────────────────────

class _MissedRideSection extends StatelessWidget {
  final int rideId;
  final RideRequestEntity? ride;
  final bool isReconsidering;

  const _MissedRideSection({
    required this.rideId,
    required this.ride,
    required this.isReconsidering,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.all(AppSpacing.sm.r),
      decoration: BoxDecoration(
        color: isDark
            ? AppColors.primaryLight.withValues(alpha: 0.08)
            : AppColors.primarySurface.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(AppRadius.md.r),
        border: Border.all(
          color: isDark
              ? AppColors.primaryLight.withValues(alpha: 0.25)
              : AppColors.primaryColor.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // ── Header Row ──────────────────────────────────────────────
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(4.r),
                decoration: BoxDecoration(
                  color: isDark
                      ? AppColors.warning.withValues(alpha: 0.2)
                      : AppColors.warningSurface,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.history_rounded,
                  size: 16.r,
                  color: isDark ? AppColors.warning : AppColors.warningDark,
                ),
              ),
              SizedBox(width: 6.w),
              Expanded(
                child: Text(
                  '${S.of(context).missedRideTitle} (#$rideId)',
                  style: AppTextStyles.w600_12.copyWith(
                    color: isDark
                        ? AppColors.onSurfaceDark
                        : AppColors.onSurface,
                  ),
                ),
              ),
              // Dismiss button
              InkWell(
                onTap: isReconsidering
                    ? null
                    : () => context.read<RideRequestCubit>().dismissExpiredRide(),
                borderRadius: BorderRadius.circular(AppRadius.full.r),
                child: Padding(
                  padding: EdgeInsets.all(4.r),
                  child: Icon(
                    Icons.close_rounded,
                    size: 16.r,
                    color: isDark
                        ? AppColors.textGreyDark
                        : AppColors.textGrey,
                  ),
                ),
              ),
            ],
          ),

          // ── Route Preview (if available) ────────────────────────────
          if (ride != null &&
              (ride!.pickupAddress.isNotEmpty ||
                  ride!.destAddress.isNotEmpty)) ...[
            SizedBox(height: 6.h),
            Row(
              children: [
                Icon(
                  Icons.trip_origin_rounded,
                  size: 12.r,
                  color: AppColors.primaryColor,
                ),
                SizedBox(width: 4.w),
                Expanded(
                  child: Text(
                    ride!.pickupAddress,
                    style: AppTextStyles.w400_12.copyWith(
                      color: isDark
                          ? AppColors.onSurfaceVariantDark
                          : AppColors.onSurfaceVariant,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (ride!.destAddress.isNotEmpty) ...[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      size: 12.r,
                      color: isDark
                          ? AppColors.textGreyDark
                          : AppColors.textGrey,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      ride!.destAddress,
                      style: AppTextStyles.w400_12.copyWith(
                        color: isDark
                            ? AppColors.onSurfaceVariantDark
                            : AppColors.onSurfaceVariant,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ],
            ),
          ],

          SizedBox(height: 8.h),

          // ── Reconsider Button ───────────────────────────────────────
          SizedBox(
            height: 36.h,
            child: ElevatedButton(
              onPressed: isReconsidering
                  ? null
                  : () {
                      context.read<RideRequestCubit>().startReconsidering();
                      final sent = context
                          .read<SocketCubit>()
                          .reconsiderOffer(rideId);
                      if (!sent) {
                        context
                            .read<RideRequestCubit>()
                            .onOfferReconsiderError(
                              message: S.of(context).commonError,
                            );
                      }
                    },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.sm.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.w),
              ),
              child: isReconsidering
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 14.r,
                          height: 14.r,
                          child: const CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          S.of(context).rejoiningQueue,
                          style: AppTextStyles.w600_12.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.replay_rounded, size: 16.r),
                        SizedBox(width: 6.w),
                        Text(
                          S.of(context).reconsiderRideButton,
                          style: AppTextStyles.w600_12.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
