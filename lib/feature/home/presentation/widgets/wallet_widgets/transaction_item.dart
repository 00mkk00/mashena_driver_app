import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class TransactionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String amount;
  final bool isCredit;

  const TransactionItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.isCredit,
  });

  @override
  Widget build(BuildContext context) {
    final color = isCredit ? AppColors.online : AppColors.danger;
    final surface = isCredit
        ? AppColors.onlineSurface
        : AppColors.dangerSurface;

    return Container(
      margin: EdgeInsets.only(bottom: AppSpacing.sm.h),
      padding: EdgeInsets.all(AppSpacing.md.r),
      decoration: BoxDecoration(
        color: AppColors.cardLight,
        borderRadius: BorderRadius.circular(AppRadius.md.r),
        boxShadow: AppShadows.card,
      ),
      child: Row(
        children: [
          Container(
            width: 44.r,
            height: 44.r,
            decoration: BoxDecoration(
              color: surface,
              borderRadius: BorderRadius.circular(AppRadius.sm.r),
            ),
            child: Icon(icon, color: color, size: 20.r),
          ),
          SizedBox(width: AppSpacing.md.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.w600_14.copyWith(
                    color: AppColors.onSurface,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  subtitle,
                  style: AppTextStyles.w400_12.copyWith(
                    color: AppColors.textGrey,
                  ),
                ),
              ],
            ),
          ),
          Text(
            'EGP $amount',
            style: AppTextStyles.w700_14.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}
