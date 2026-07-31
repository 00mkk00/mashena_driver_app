import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
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

  const EarningsSummaryCard({super.key, this.summary, this.currency});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final curr = currency ?? S.of(context).commonCurrencySyria;
    final todayAmount = summary?.today.amount.toString() ?? '0';
    final todayTrips = summary?.today.tripsCount ?? 0;

    final weekAmount = summary?.thisWeek.amount.toString() ?? '0';
    final weekTrips = summary?.thisWeek.tripsCount ?? 0;

    final monthAmount = summary?.thisMonth.amount.toString() ?? '0';
    final monthTrips = summary?.thisMonth.tripsCount ?? 0;

    return Container(
      padding: EdgeInsets.all(AppSpacing.md.r),
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
        borderRadius: BorderRadius.circular(AppRadius.lg.r),
        boxShadow: AppShadows.card,
      ),
      child: Column(
        children: [
          _SummaryRow(
            label: S.of(context).walletToday,
            value: '$curr $todayAmount',
            trips: todayTrips,
          ),
          Divider(
            color: isDark ? AppColors.dividerDark : AppColors.divider,
            height: AppSpacing.lg.h,
          ),
          _SummaryRow(
            label: S.of(context).walletThisWeek,
            value: '$curr $weekAmount',
            trips: weekTrips,
          ),
          Divider(
            color: isDark ? AppColors.dividerDark : AppColors.divider,
            height: AppSpacing.lg.h,
          ),
          _SummaryRow(
            label: S.of(context).walletThisMonth,
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
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: AppTextStyles.w500_12.copyWith(
                color: isDark
                    ? AppColors.onSurfaceVariantDark
                    : AppColors.onSurfaceVariant,
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              S.of(context).walletTripsCount(trips),
              style: AppTextStyles.w400_10.copyWith(
                color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
              ),
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
