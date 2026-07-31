import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_wallet_summary_entity.dart';

class TransactionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String amount;
  final bool isCredit;
  final String? type;

  const TransactionItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.isCredit,
    this.type,
  });

  factory TransactionItem.fromEntity(RecentTransactionEntity tx) {
    final isPos = tx.isPositive;
    return TransactionItem(
      icon: isPos
          ? Icons.directions_car_rounded
          : Icons.account_balance_wallet_rounded,
      title: tx.title,
      subtitle: tx.subtitle,
      amount: tx.formattedAmount,
      isCredit: isPos,
      type: tx.type,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final color = isCredit ? AppColors.online : AppColors.danger;
    final surface = isCredit
        ? (isDark
              ? AppColors.online.withValues(alpha: 0.15)
              : AppColors.onlineSurface)
        : (isDark
              ? AppColors.danger.withValues(alpha: 0.15)
              : AppColors.dangerSurface);

    return Container(
      margin: EdgeInsets.only(bottom: AppSpacing.sm.h),
      padding: EdgeInsets.all(AppSpacing.md.r),
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
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
                    color: isDark
                        ? AppColors.onSurfaceDark
                        : AppColors.onSurface,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  subtitle,
                  style: AppTextStyles.w400_12.copyWith(
                    color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
                  ),
                ),
                if (type != null && type!.isNotEmpty) ...[
                  SizedBox(height: 4.h),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSpacing.xs.w,
                      vertical: 2.h,
                    ),
                    decoration: BoxDecoration(
                      color: color.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(AppRadius.sm.r),
                    ),
                    child: Text(
                      type!.replaceAll('_', ' '),
                      style: AppTextStyles.w400_10.copyWith(color: color),
                    ),
                  ),
                ],
              ],
            ),
          ),
          Text(amount, style: AppTextStyles.w700_14.copyWith(color: color)),
        ],
      ),
    );
  }
}
