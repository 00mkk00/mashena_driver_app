import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSpacing.lg.r),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primaryColor, AppColors.primaryLight],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(AppRadius.xl.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withValues(alpha: 0.35),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Available Balance',
                style: AppTextStyles.w400_12.copyWith(
                  color: Colors.white.withValues(alpha: 0.8),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm.w,
                  vertical: AppSpacing.xs.h,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(AppRadius.full.r),
                ),
                child: Text(
                  'EGP',
                  style: AppTextStyles.w600_12.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.sm.h),
          Text(
            '1,840.50',
            style: AppTextStyles.w700_36.copyWith(
              color: Colors.white,
              letterSpacing: -1,
            ),
          ),
          SizedBox(height: AppSpacing.lg.h),
          Divider(color: Colors.white.withValues(alpha: 0.2), height: 1),
          SizedBox(height: AppSpacing.md.h),
          Row(
            children: [
              _CardStat(label: 'Total Earned', value: '12,340.00'),
              Container(
                width: 1,
                height: 32.h,
                color: Colors.white.withValues(alpha: 0.25),
                margin: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
              ),
              _CardStat(label: 'Total Withdrawn', value: '10,499.50'),
            ],
          ),
        ],
      ),
    );
  }
}

class _CardStat extends StatelessWidget {
  final String label;
  final String value;
  const _CardStat({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.w400_10.copyWith(
            color: Colors.white.withValues(alpha: 0.7),
          ),
        ),
        SizedBox(height: 2.h),
        Text(value, style: AppTextStyles.w600_14.copyWith(color: Colors.white)),
      ],
    );
  }
}
