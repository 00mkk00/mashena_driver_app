import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_wallet_summary_entity.dart';

class EarningsSummaryCard extends StatelessWidget {
  final EarningsSummaryEntity? summary;
  final String? currency;

  const EarningsSummaryCard({
    super.key,
    this.summary,
    this.currency,
  });

  @override
  Widget build(BuildContext context) {
    final curr = currency ?? 'SYR';
    final todayAmount = summary?.today.amount.toString() ?? '0';
    final todayTrips = summary?.today.tripsCount ?? 0;

    final weekAmount = summary?.thisWeek.amount.toString() ?? '0';
    final weekTrips = summary?.thisWeek.tripsCount ?? 0;

    final monthAmount = summary?.thisMonth.amount.toString() ?? '0';
    final monthTrips = summary?.thisMonth.tripsCount ?? 0;

    return Container(
      padding: EdgeInsets.all(AppSpacing.md.r),
      decoration: BoxDecoration(
        color: AppColors.cardLight,
        borderRadius: BorderRadius.circular(AppRadius.lg.r),
        boxShadow: AppShadows.card,
      ),
      child: Column(
        children: [
          _SummaryRow(
            label: 'Today',
            value: '$curr $todayAmount',
            trips: todayTrips,
          ),
          Divider(color: AppColors.divider, height: AppSpacing.lg.h),
          _SummaryRow(
            label: 'This Week',
            value: '$curr $weekAmount',
            trips: weekTrips,
          ),
          Divider(color: AppColors.divider, height: AppSpacing.lg.h),
          _SummaryRow(
            label: 'This Month',
            value: '$curr $monthAmount',
            trips: monthTrips,
          ),
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
          value,
          style: AppTextStyles.w700_16.copyWith(color: AppColors.earning),
        ),
      ],
    );
  }
}
