import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_state.dart';

class SharedTripSummarySheet extends StatelessWidget {
  final VoidCallback onClose;

  const SharedTripSummarySheet({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder<SharedRideCubit, SharedRideState>(
      builder: (context, state) {
        final ride = state.ride;
        final passengerCount = ride?.passengers.length ?? 0;
        final totalDistance =
            ride?.actualDistanceKm ?? ride?.totalDistanceKm ?? 0;
        final totalDurationMins =
            ((ride?.actualDurationSec ?? ride?.totalDurationSec ?? 0) / 60)
                .round();
        final fare =
            ride?.passengers.fold<num>(0, (sum, p) => sum + p.finalFare) ?? 0;

        return Padding(
          padding: EdgeInsets.all(AppSpacing.md.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(Icons.check_circle, color: AppColors.success, size: 64.r),
              SizedBox(height: AppSpacing.sm.h),
              Text(
                S.of(context).sharedTripCompleted,
                style: AppTextStyles.w700_24.copyWith(
                  color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: AppSpacing.lg.h),

              Container(
                padding: EdgeInsets.all(AppSpacing.md.r),
                decoration: BoxDecoration(
                  color: isDark
                      ? AppColors.surfaceVariantDark
                      : AppColors.surfaceVariant,
                  borderRadius: BorderRadius.circular(AppRadius.md.r),
                ),
                child: Column(
                  children: [
                    _buildSummaryRow(
                      S.of(context).sharedPassengers,
                      '$passengerCount',
                      isDark,
                    ),
                    SizedBox(height: AppSpacing.sm.h),
                    _buildSummaryRow(
                      S.of(context).sharedTotalDistance,
                      S.of(context).sharedDistanceKmFormat(
                        totalDistance.toStringAsFixed(1),
                      ),
                      isDark,
                    ),
                    SizedBox(height: AppSpacing.sm.h),
                    _buildSummaryRow(
                      S.of(context).sharedTime,
                      S.of(context).sharedDurationMinsFormat(
                        '$totalDurationMins',
                      ),
                      isDark,
                    ),
                    Divider(
                      color: isDark ? AppColors.dividerDark : AppColors.divider,
                      height: 24.h,
                    ),
                    _buildSummaryRow(
                      S.of(context).sharedTotalEarnings,
                      S.of(context).sharedFareAmountFormat(
                        fare.toStringAsFixed(0),
                        S.of(context).commonCurrencySyria,
                      ),
                      isDark,
                      isBold: true,
                    ),
                  ],
                ),
              ),

              SizedBox(height: AppSpacing.lg.h),
              ElevatedButton(
                onPressed: () {
                  context.read<SharedRideCubit>().reset();
                  onClose();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadius.md.r),
                  ),
                ),
                child: Text(
                  S.of(context).sharedClose,
                  style: AppTextStyles.w600_16.copyWith(color: Colors.white),
                ),
              ),
              SizedBox(height: AppSpacing.md.h),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSummaryRow(
    String label,
    String value,
    bool isDark, {
    bool isBold = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: isBold
              ? AppTextStyles.w600_16.copyWith(
                  color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
                )
              : AppTextStyles.w400_14.copyWith(
                  color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
                ),
        ),
        Text(
          value,
          style: isBold
              ? AppTextStyles.w700_18.copyWith(color: AppColors.primaryColor)
              : AppTextStyles.w600_14.copyWith(
                  color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
                ),
        ),
      ],
    );
  }
}
