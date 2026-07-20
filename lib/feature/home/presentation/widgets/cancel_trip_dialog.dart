import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_cubit.dart';

void showCancelTripDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (dialogCtx) => Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.lg.r),
      ),
      backgroundColor: AppColors.cardLight,
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(AppSpacing.lg.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon
            Container(
              padding: EdgeInsets.all(AppSpacing.md.r),
              decoration: BoxDecoration(
                color: AppColors.danger.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.warning_amber_rounded,
                color: AppColors.danger,
                size: 32.r,
              ),
            ),
            SizedBox(height: AppSpacing.md.h),

            // Title
            Text(
              'Cancel Trip',
              style: AppTextStyles.w700_18.copyWith(color: AppColors.onSurface),
            ),
            SizedBox(height: AppSpacing.sm.h),

            // Description
            Text(
              'Are you sure you want to cancel this trip? This action cannot be undone.',
              textAlign: TextAlign.center,
              style: AppTextStyles.w400_14.copyWith(
                color: AppColors.textGrey,
                height: 1.5,
              ),
            ),
            SizedBox(height: AppSpacing.lg.h),

            // Actions
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(dialogCtx),
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      side: const BorderSide(color: AppColors.borderColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppRadius.md.r),
                      ),
                    ),
                    child: Text(
                      'No, Keep it',
                      style: AppTextStyles.w600_14.copyWith(
                        color: AppColors.onSurface,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: AppSpacing.md.w),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(dialogCtx);
                      context.read<RideRequestCubit>().cancelTrip();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.danger,
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppRadius.md.r),
                      ),
                    ),
                    child: Text(
                      'Yes, Cancel',
                      style: AppTextStyles.w600_14.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
