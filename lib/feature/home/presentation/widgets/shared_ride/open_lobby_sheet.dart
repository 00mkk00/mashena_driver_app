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
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_state.dart';

class OpenLobbySheet extends StatelessWidget {
  const OpenLobbySheet({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder<SharedRideCubit, SharedRideState>(
      builder: (context, state) {
        final ride = state.ride;
        final passengers = ride?.passengers ?? [];
        final calculatedOccupied = passengers.fold<int>(
          0,
          (sum, p) => sum + (p.seatsNeeded > 0 ? p.seatsNeeded : 1),
        );
        final occupiedSeats =
            (ride?.occupiedSeats != null && ride!.occupiedSeats > 0)
            ? (calculatedOccupied > ride.occupiedSeats
                  ? calculatedOccupied
                  : ride.occupiedSeats)
            : calculatedOccupied;
        final maxPassengers = ride?.maxPassengers ?? 4;

        return Padding(
          padding: EdgeInsets.all(AppSpacing.md.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).sharedLobbyOpen,
                    style: AppTextStyles.w700_20.copyWith(
                      color: isDark
                          ? AppColors.onSurfaceDark
                          : AppColors.onSurface,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 6.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(AppRadius.full.r),
                    ),
                    child: Text(
                      S
                          .of(context)
                          .sharedSeatsFilled(occupiedSeats, maxPassengers),
                      style: AppTextStyles.w600_14.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSpacing.xs.h),
              if (ride != null) ...[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.my_location,
                          size: 16.r,
                          color: AppColors.primaryColor,
                        ),
                        SizedBox(width: AppSpacing.xs.w),
                        Expanded(
                          child: Text(
                            ride.originAddress,
                            style: AppTextStyles.w500_14.copyWith(
                              color: isDark
                                  ? AppColors.onSurfaceDark
                                  : AppColors.onSurface,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 16.r,
                          color: AppColors.danger,
                        ),
                        SizedBox(width: AppSpacing.xs.w),
                        Expanded(
                          child: Text(
                            ride.destAddress,
                            style: AppTextStyles.w500_14.copyWith(
                              color: isDark
                                  ? AppColors.onSurfaceDark
                                  : AppColors.onSurface,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: AppSpacing.xs.h),
              ],
              Text(
                S.of(context).sharedWaitingPassengers,
                style: AppTextStyles.w400_14.copyWith(
                  color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
                ),
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
                      S.of(context).sharedNoPassengersJoined,
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
                    final passenger = passengers[index];
                    return _buildPassengerTile(context, passenger, isDark);
                  },
                ),

              SizedBox(height: AppSpacing.md.h),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: state.isCancelling
                          ? null
                          : () {
                              context
                                  .read<SharedRideCubit>()
                                  .cancelSharedRide();
                            },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppColors.danger,
                        side: const BorderSide(color: AppColors.danger),
                        padding: EdgeInsets.symmetric(vertical: 14.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppRadius.md.r),
                        ),
                      ),
                      child: state.isCancelling
                          ? const CupertinoActivityIndicator(
                              color: AppColors.danger,
                            )
                          : Text(
                              S.of(context).sharedCancelRide,
                              style: AppTextStyles.w600_16,
                            ),
                    ),
                  ),
                  SizedBox(width: AppSpacing.md.w),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (state.isReadying || passengers.isEmpty)
                          ? null
                          : () => context
                                .read<SharedRideCubit>()
                                .readySharedRide(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        foregroundColor: Colors.white,
                        disabledBackgroundColor: isDark
                            ? AppColors.surfaceVariantDark
                            : AppColors.surfaceVariant,
                        padding: EdgeInsets.symmetric(vertical: 14.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppRadius.md.r),
                        ),
                      ),
                      child: state.isReadying
                          ? const CupertinoActivityIndicator(
                              color: Colors.white,
                            )
                          : Text(
                              S.of(context).sharedStartBoarding,
                              style: AppTextStyles.w600_16.copyWith(
                                color: passengers.isNotEmpty
                                    ? Colors.white
                                    : AppColors.textGrey,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSpacing.md.h),
            ],
          ),
        );
      },
    );
  }

  Widget _buildPassengerTile(
    BuildContext context,
    SharedRidePassengerEntity passenger,
    bool isDark,
  ) {
    return Container(
      margin: EdgeInsets.only(bottom: AppSpacing.sm.h),
      padding: EdgeInsets.all(AppSpacing.sm.r),
      decoration: BoxDecoration(
        color: isDark ? AppColors.surfaceVariantDark : AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(AppRadius.md.r),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.primaryColor.withValues(alpha: 0.2),
            child: Icon(Icons.person, color: AppColors.primaryColor),
          ),
          SizedBox(width: AppSpacing.md.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  passenger.riderName.isNotEmpty
                      ? passenger.riderName
                      : S
                          .of(context)
                          .sharedPassengerNumber(passenger.riderProfileId),
                  style: AppTextStyles.w600_16.copyWith(
                    color: isDark
                        ? AppColors.onSurfaceDark
                        : AppColors.onSurface,
                  ),
                ),
                Text(
                  '${S.of(context).sharedSeatsCount(passenger.seatsNeeded)} • ${S.of(context).sharedStatus(passenger.status)}',
                  style: AppTextStyles.w400_12.copyWith(
                    color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
