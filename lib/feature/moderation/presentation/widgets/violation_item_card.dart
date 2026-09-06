import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/moderation/data/enums/moderation_enums.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/violation_entity.dart';

class ViolationItemCard extends StatelessWidget {
  final ViolationEntity violation;
  final bool isViolation;

  const ViolationItemCard({
    super.key,
    required this.violation,
    required this.isViolation,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = S.of(context);
    final severityColor = _getSeverityColor(violation.severity);

    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        border: Border.all(
          color: isDark ? AppColors.borderColorDark : AppColors.borderColor,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.2 : 0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header: Type & Severity
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: severityColor.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(AppRadius.sm),
                ),
                child: Icon(
                  Icons.report_problem_rounded,
                  color: severityColor,
                  size: 18.sp,
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _formatViolationType(violation.violationType),
                      style: AppTextStyles.w600_14.copyWith(
                        color: isDark
                            ? AppColors.onSurfaceDark
                            : AppColors.onSurface,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      _formatDate(violation.occurredAt),
                      style: AppTextStyles.w400_10.copyWith(
                        color: isDark
                            ? AppColors.textGreyDark
                            : AppColors.textGrey,
                      ),
                    ),
                  ],
                ),
              ),
              // Severity badge
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: severityColor.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(AppRadius.full),
                  border: Border.all(
                    color: severityColor.withValues(alpha: 0.3),
                  ),
                ),
                child: Text(
                  violation.rawSeverity,
                  style: AppTextStyles.w700_12.copyWith(
                    fontSize: 10.sp,
                    color: severityColor,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSpacing.sm),

          // Description
          if (violation.description.isNotEmpty) ...[
            Text(
              violation.description,
              style: AppTextStyles.w400_12.copyWith(
                color: isDark
                    ? AppColors.onSurfaceDark.withValues(alpha: 0.85)
                    : AppColors.onSurface.withValues(alpha: 0.85),
                height: 1.4,
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
          ],

          // Footer Chips (Source & Status)
          if (!isViolation)
            Row(
              children: [
                if (violation.sourceType.isNotEmpty) ...[
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.xs,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: isDark
                          ? AppColors.surfaceVariantDark
                          : AppColors.surfaceVariant,
                      borderRadius: BorderRadius.circular(AppRadius.sm),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.directions_car_filled_outlined,
                          size: 12.sp,
                          color: isDark
                              ? AppColors.textGreyDark
                              : AppColors.textGrey,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          violation.sourceId != null
                              ? l10n.moderationSourceTrip(
                                  violation.sourceId.toString(),
                                )
                              : violation.sourceType,
                          style: AppTextStyles.w400_10.copyWith(
                            color: isDark
                                ? AppColors.textGreyDark
                                : AppColors.textGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: AppSpacing.xs),
                ],
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xs,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: isDark
                        ? AppColors.surfaceVariantDark
                        : AppColors.surfaceVariant,
                    borderRadius: BorderRadius.circular(AppRadius.sm),
                  ),
                  child: Text(
                    'Source: ${violation.source}',
                    style: AppTextStyles.w400_10.copyWith(
                      color: isDark
                          ? AppColors.textGreyDark
                          : AppColors.textGrey,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xs,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(AppRadius.sm),
                  ),
                  child: Text(
                    violation.status,
                    style: AppTextStyles.w600_12.copyWith(
                      fontSize: 10.sp,
                      color: isDark
                          ? AppColors.primaryLight
                          : AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  Color _getSeverityColor(ModerationSeverity severity) {
    switch (severity) {
      case ModerationSeverity.low:
        return AppColors.info;
      case ModerationSeverity.medium:
        return AppColors.warning;
      case ModerationSeverity.high:
        return Colors.deepOrange;
      case ModerationSeverity.critical:
        return AppColors.danger;
      case ModerationSeverity.unknown:
        return AppColors.primaryColor;
    }
  }

  String _formatViolationType(String type) {
    return type
        .replaceAll('_', ' ')
        .toLowerCase()
        .split(' ')
        .map((word) {
          if (word.isEmpty) return word;
          return '${word[0].toUpperCase()}${word.substring(1)}';
        })
        .join(' ');
  }

  String _formatDate(String rawDate) {
    if (rawDate.isEmpty) return '-';
    try {
      final parsed = DateTime.parse(rawDate).toLocal();
      return '${parsed.year}-${parsed.month.toString().padLeft(2, '0')}-${parsed.day.toString().padLeft(2, '0')} ${parsed.hour.toString().padLeft(2, '0')}:${parsed.minute.toString().padLeft(2, '0')}';
    } catch (_) {
      return rawDate;
    }
  }
}
