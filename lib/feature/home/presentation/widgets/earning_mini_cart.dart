import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/data/home_models.dart';
//////////////////////////////////////////////////////////////////

class EarningsMiniCard extends StatelessWidget {
  final DriverProfileModel driver;

  const EarningsMiniCard({super.key, required this.driver});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 20,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon
            Container(
              width: 32.w,
              height: 32.w,
              decoration: BoxDecoration(
                color: AppColors.onlineSurface,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Icon(
                Icons.account_balance_wallet_outlined,
                size: 18.sp,
                color: AppColors.online,
              ),
            ),
            SizedBox(width: 8.w),

            // Today
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Today',
                  style: AppTextStyles.w500_12.copyWith(
                    color: AppColors.onSurfaceVariant,
                  ),
                ),
                Text(
                  'EGP ${driver.todayEarnings.toStringAsFixed(0)}',
                  style: AppTextStyles.w700_14.copyWith(
                    color: AppColors.online,
                  ),
                ),
              ],
            ),

            SizedBox(width: 14.w),
            Container(width: 1.w, height: 28.h, color: AppColors.divider),
            SizedBox(width: 14.w),

            // This week
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'This week',
                  style: AppTextStyles.w500_12.copyWith(
                    color: AppColors.onSurfaceVariant,
                  ),
                ),
                Text(
                  'EGP ${driver.weeklyEarnings.toStringAsFixed(0)}',
                  style: AppTextStyles.w600_14,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
