import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/utils/toast_helper.dart';
import 'package:mashena_driver_app/core/widgets/shimmer.dart';

import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/route_row.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/stops_section.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/trip_meta_row.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/start_trip_slider.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/wait_timer_view.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/cancel_trip_dialog.dart';

class TripAcceptedCard extends StatelessWidget {
  const TripAcceptedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RideRequestCubit, RideRequestState>(
      listenWhen: (prev, curr) =>
          (curr.errorMessage != null &&
              prev.errorMessage != curr.errorMessage) ||
          (prev.status != curr.status &&
              (curr.status == RideRequestStatus.rejected ||
                  curr.status == RideRequestStatus.started)),
      listener: (context, state) {
        if (state.errorMessage != null) {
          context.showErrorToast(state.errorMessage!);
        }
        if (state.status == RideRequestStatus.rejected) {
          context.read<DriverStatusCubit>().rejectRide();
        }
        if (state.status == RideRequestStatus.started) {
          context.read<DriverStatusCubit>().startTrip();
        }
      },
      builder: (context, rideState) {
        final trip = rideState.rideRequestEntity;
        final isArrived = rideState.status == RideRequestStatus.arrived;
        final isArriving = rideState.isArrivingTrip;
        final isCanceling = rideState.isCancelingTrip;
        final isStarting = rideState.isStartingTrip;

        final isDark = Theme.of(context).brightness == Brightness.dark;

        return Container(
          margin: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
          padding: EdgeInsets.all(AppSpacing.md.r),
          decoration: BoxDecoration(
            color: isDark ? AppColors.cardDark : AppColors.cardLight,
            borderRadius: BorderRadius.circular(AppRadius.lg.r),
            boxShadow: AppShadows.card,
            border: Border.all(
              color: AppColors.primaryColor.withValues(alpha: 0.25),
            ),
          ),
          child: Column(
            children: [
              // ── Header ──────────────────────────────────────────
              // Row(
              //   children: [
              //     Container(
              //       padding: EdgeInsets.symmetric(
              //         horizontal: AppSpacing.sm.w,
              //         vertical: AppSpacing.xs.h,
              //       ),
              //       decoration: BoxDecoration(
              //         color: AppColors.primarySurface,
              //         borderRadius: BorderRadius.circular(AppRadius.full.r),
              //       ),
              //       child: Text(
              //         isArrived ? S.of(context).tripArrivedCheck : S.of(context).tripAcceptedCheck,
              //         style: AppTextStyles.w700_12.copyWith(
              //           color: AppColors.primaryColor,
              //         ),
              //       ),
              //     ),
              //     const Spacer(),
              //     if (trip != null)
              //       Text(
              //         S.of(context).tripId(trip.id),
              //         style: AppTextStyles.w600_12.copyWith(
              //           color: AppColors.cardDark,
              //         ),
              //       ),
              //   ],
              // ),

              // SizedBox(height: AppSpacing.sm.h),
              // Divider(color: AppColors.divider, height: 1),
              // SizedBox(height: AppSpacing.sm.h),

              // ── Route ───────────────────────────────────────────
              if (trip != null) ...[
                TripMetaRow(ride: trip),
                SizedBox(height: AppSpacing.sm.h),

                Divider(
                  color: isDark ? AppColors.dividerDark : AppColors.divider,
                  height: 1,
                ),
                SizedBox(height: AppSpacing.sm.h),

                SizedBox(height: AppSpacing.sm.h),
                RouteRow(trip: trip),
                if (trip.stops.isNotEmpty) ...[
                  SizedBox(height: AppSpacing.sm.h),
                  StopsSection(stops: trip.stops),
                ],
                SizedBox(height: AppSpacing.sm.h),
              ] else ...[
                ShimmerCard(height: 50.h),
                SizedBox(height: AppSpacing.sm.h),
              ],

              // ── Action button(s) ─────────────────────────────────
              if (isArriving || isCanceling || isStarting) ...[
                // Loading state — shimmer placeholder
                ShimmerCard(height: 48.h),
              ] else if (isArrived) ...[
                if (rideState.freeWaitTimeSeconds > 0) ...[
                  WaitTimerView(totalSeconds: rideState.freeWaitTimeSeconds),
                  SizedBox(height: AppSpacing.md.h),
                ],
                // After arriving — two disabled buttons
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 48.h,
                      child: ElevatedButton.icon(
                        onPressed: () => showCancelTripDialog(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade400,
                          disabledBackgroundColor: Colors.red.shade400
                              .withValues(alpha: 0.5),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppRadius.md.r),
                          ),
                        ),
                        icon: Icon(Icons.cancel_outlined, size: 18.r),
                        label: Text(
                          S.of(context).commonCancel,
                          style: AppTextStyles.w700_14.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: AppSpacing.sm.h),
                    StartTripSlider(
                      onStartTrip: () =>
                          context.read<RideRequestCubit>().startTrip(),
                    ),
                  ],
                ),
              ] else ...[
                // Default accepted state — Cancel & Mark as Arrived buttons
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 48.h,
                      child: ElevatedButton.icon(
                        onPressed: () => showCancelTripDialog(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade400,
                          disabledBackgroundColor: Colors.red.shade400
                              .withValues(alpha: 0.5),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppRadius.md.r),
                          ),
                        ),
                        icon: Icon(Icons.cancel_outlined, size: 18.r),
                        label: Text(
                          S.of(context).commonCancel,
                          style: AppTextStyles.w700_14.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: AppSpacing.sm.h),
                    SizedBox(
                      width: double.infinity,
                      height: 48.h,
                      child: ElevatedButton.icon(
                        onPressed: trip == null
                            ? null
                            : () =>
                                  context.read<RideRequestCubit>().arriveTrip(),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          disabledBackgroundColor: AppColors.primaryColor
                              .withValues(alpha: 0.5),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppRadius.md.r),
                          ),
                        ),
                        icon: Icon(Icons.location_on_rounded, size: 18.r),
                        label: Text(
                          S.of(context).tripMarkAsArrived,
                          style: AppTextStyles.w700_14.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
