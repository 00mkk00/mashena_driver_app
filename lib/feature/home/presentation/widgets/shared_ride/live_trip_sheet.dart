import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/shared_ride_entity.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/map_cubit/map_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_state.dart';

class LiveTripSheet extends StatelessWidget {
  const LiveTripSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder<SharedRideCubit, SharedRideState>(
      builder: (context, state) {
        final ride = state.ride;
        final passengers = ride?.passengers ?? [];
        final allDroppedOff =
            passengers.isNotEmpty &&
            passengers.every((p) => p.status.toLowerCase() == 'dropped_off');

        return Padding(
          padding: EdgeInsets.all(AppSpacing.md.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8.r),
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.directions_car,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: AppSpacing.md.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).sharedTripInProgress,
                        style: AppTextStyles.w700_18.copyWith(
                          color: isDark
                              ? AppColors.onSurfaceDark
                              : AppColors.onSurface,
                        ),
                      ),
                      Text(
                        S.of(context).sharedEnRouteDestinations,
                        style: AppTextStyles.w400_14.copyWith(
                          color: isDark
                              ? AppColors.textGreyDark
                              : AppColors.textGrey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: AppSpacing.lg.h),

              if (passengers.isEmpty)
                Container(
                  padding: EdgeInsets.all(AppSpacing.md.r),
                  decoration: BoxDecoration(
                    color: isDark
                        ? AppColors.surfaceVariantDark
                        : AppColors.surfaceVariant,
                    borderRadius: BorderRadius.circular(AppRadius.md.r),
                  ),
                  child: Center(
                    child: Text(
                      S.of(context).sharedNoActivePassengers,
                      style: AppTextStyles.w400_14.copyWith(
                        color: isDark
                            ? AppColors.textGreyDark
                            : AppColors.textGrey,
                      ),
                    ),
                  ),
                )
              else
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: passengers.length,
                  itemBuilder: (context, index) {
                    final p = passengers[index];
                    return _buildDropOffTile(context, p, state, isDark);
                  },
                ),

              SizedBox(height: AppSpacing.md.h),
              ElevatedButton(
                onPressed: state.isCompleting || !allDroppedOff
                    ? null
                    : () =>
                          context.read<SharedRideCubit>().completeSharedRide(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.danger,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadius.md.r),
                  ),
                  disabledBackgroundColor: isDark
                      ? AppColors.surfaceVariantDark
                      : AppColors.surfaceVariant,
                ),
                child: state.isCompleting
                    ? const CupertinoActivityIndicator(color: Colors.white)
                    : Text(
                        S.of(context).sharedEndTrip,
                        style: AppTextStyles.w600_16.copyWith(
                          color: allDroppedOff
                              ? Colors.white
                              : AppColors.textGrey,
                        ),
                      ),
              ),
              SizedBox(height: AppSpacing.md.h),
            ],
          ),
        );
      },
    );
  }

  Widget _buildDropOffTile(
    BuildContext context,
    SharedRidePassengerEntity p,
    SharedRideState state,
    bool isDark,
  ) {
    final isDroppedOff = p.status.toLowerCase() == 'dropped_off';
    final isDroppingOffThis = state.droppingOffPassengers.contains(p.id);

    return Container(
      margin: EdgeInsets.only(bottom: AppSpacing.sm.h),
      padding: EdgeInsets.all(AppSpacing.sm.r),
      decoration: BoxDecoration(
        color: isDark ? AppColors.surfaceVariantDark : AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(AppRadius.md.r),
        border: Border.all(
          color: isDroppedOff ? AppColors.textGrey : Colors.transparent,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            color: isDroppedOff ? AppColors.textGrey : AppColors.primaryColor,
          ),
          SizedBox(width: AppSpacing.md.w),
          Expanded(
            child: Text(
              p.riderName.isNotEmpty
                  ? p.riderName
                  : S.of(context).sharedPassengerNumber(p.riderProfileId),
              style: AppTextStyles.w600_16.copyWith(
                color: isDroppedOff
                    ? AppColors.textGrey
                    : (isDark ? AppColors.onSurfaceDark : AppColors.onSurface),
                decoration: isDroppedOff ? TextDecoration.lineThrough : null,
              ),
            ),
          ),
          if (isDroppingOffThis)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CupertinoActivityIndicator(),
            )
          else if (!isDroppedOff)
            TextButton(
              onPressed: () {
                final mapPos = context.read<MapCubit>().state.currentPosition;
                final lat = mapPos?.latitude ?? 30.0444;
                final lng = mapPos?.longitude ?? 31.2357;
                context.read<SharedRideCubit>().dropOffPassenger(
                  passengerId: p.id,
                  seatsToDrop: p.activeSeats > 0 ? p.activeSeats : 1,
                  currentLat: lat,  
                  currentLng: lng,
                );
              },
              style: TextButton.styleFrom(foregroundColor: AppColors.danger),
              child: Text(S.of(context).sharedDropOff),
            )
          else
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  S.of(context).sharedDroppedOff,
                  style: const TextStyle(color: AppColors.textGrey),
                ),
                Text(
                  S.of(context).sharedFareAmountFormat(
                    p.totalPaidFare.toStringAsFixed(0),
                    S.of(context).commonCurrencySyria,
                  ),
                  style: AppTextStyles.w600_14.copyWith(
                    color: AppColors.success,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
