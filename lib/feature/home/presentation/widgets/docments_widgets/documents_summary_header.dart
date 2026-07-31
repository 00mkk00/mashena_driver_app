import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_document_entity.dart';

class DocumentsSummaryHeader extends StatelessWidget {
  final List<DriverDocumentEntity> documents;

  const DocumentsSummaryHeader({super.key, required this.documents});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final verified = documents.where((d) => d.status == DriverDocStatus.approved).length;
    final pending = documents.where((d) => d.status == DriverDocStatus.pending).length;
    final rejected = documents.where((d) => d.status == DriverDocStatus.rejected).length;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: isDark ? AppColors.borderColorDark : AppColors.borderColor.withValues(alpha: 0.3),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.3 : 0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10.r),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.folder_shared_rounded,
                  color: AppColors.primaryColor,
                  size: 22.r,
                ),
              ),
              SizedBox(width: 12.w),
              Text(
                S.of(context).docsStatusOverview,
                style: AppTextStyles.w600_16.copyWith(
                  color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              _buildStatChip(
                context: context,
                label: S.of(context).docsFilterVerified,
                count: verified,
                color: AppColors.success,
                bgColor: AppColors.successSurface,
                icon: Icons.check_circle_rounded,
                isDark: isDark,
              ),
              SizedBox(width: 8.w),
              _buildStatChip(
                context: context,
                label: S.of(context).docsFilterPending,
                count: pending,
                color: AppColors.warningDark,
                bgColor: AppColors.warningSurface,
                icon: Icons.hourglass_top_rounded,
                isDark: isDark,
              ),
              SizedBox(width: 8.w),
              _buildStatChip(
                context: context,
                label: S.of(context).docsFilterRejected,
                count: rejected,
                color: AppColors.danger,
                bgColor: AppColors.dangerSurface,
                icon: Icons.cancel_rounded,
                isDark: isDark,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatChip({
    required BuildContext context,
    required String label,
    required int count,
    required Color color,
    required Color bgColor,
    required IconData icon,
    required bool isDark,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
        decoration: BoxDecoration(
          color: isDark ? color.withValues(alpha: 0.12) : bgColor,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: color.withValues(alpha: 0.25),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 14.r, color: color),
                SizedBox(width: 4.w),
                Text(
                  '$count',
                  style: AppTextStyles.w700_16.copyWith(color: color),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Text(
              label,
              style: AppTextStyles.w500_12.copyWith(
                color: isDark ? AppColors.onSurfaceDark.withValues(alpha: 0.8) : AppColors.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
