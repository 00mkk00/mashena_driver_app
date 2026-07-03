import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class EarningsSummaryCard extends StatelessWidget {
  const EarningsSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSpacing.md.r),
      decoration: BoxDecoration(
        color: AppColors.cardLight,
        borderRadius: BorderRadius.circular(AppRadius.lg.r),
        boxShadow: AppShadows.card,
      ),
      child: Column(
        children: [
          _SummaryRow(label: 'Today', value: '320.00', trips: 4),
          Divider(color: AppColors.divider, height: AppSpacing.lg.h),
          _SummaryRow(label: 'This Week', value: '1,750.00', trips: 21),
          Divider(color: AppColors.divider, height: AppSpacing.lg.h),
          _SummaryRow(label: 'This Month', value: '6,420.00', trips: 87),
        ],
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final String label;
  final String value;
  final int trips;
  const _SummaryRow({
    required this.label,
    required this.value,
    required this.trips,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: AppTextStyles.w500_12.copyWith(
                color: AppColors.onSurfaceVariant,
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              '$trips trips',
              style: AppTextStyles.w400_10.copyWith(color: AppColors.textGrey),
            ),
          ],
        ),
        Text(
          'EGP $value',
          style: AppTextStyles.w700_16.copyWith(color: AppColors.earning),
        ),
      ],
    );
  }
}
