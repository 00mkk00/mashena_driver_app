import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/moderation/data/enums/moderation_enums.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/appeal_entity.dart';

class AppealItemCard extends StatelessWidget {
  final AppealEntity appeal;
  final VoidCallback? onTap;

  const AppealItemCard({
    super.key,
    required this.appeal,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = S.of(context);
    final statusColor = _getStatusColor(appeal.status);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppRadius.lg),
      child: Container(
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
            // Header: Appeal ID & Status
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(AppRadius.sm),
                  ),
                  child: Icon(
                    _getStatusIcon(appeal.status),
                    color: statusColor,
                    size: 18.sp,
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Appeal #${appeal.id} · Penalty #${appeal.penaltyId}',
                        style: AppTextStyles.w600_14.copyWith(
                          color: isDark
                              ? AppColors.onSurfaceDark
                              : AppColors.onSurface,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        l10n.moderationSubmittedAt(_formatDate(appeal.submittedAt)),
                        style: AppTextStyles.w400_10.copyWith(
                          color: isDark
                              ? AppColors.textGreyDark
                              : AppColors.textGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.sm,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(AppRadius.full),
                    border: Border.all(color: statusColor.withValues(alpha: 0.3)),
                  ),
                  child: Text(
                    _formatStatusText(appeal.status, l10n),
                    style: AppTextStyles.w700_12.copyWith(
                      fontSize: 10.sp,
                      color: statusColor,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppSpacing.sm),

            // Reason
            Text(
              appeal.reason,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.w400_12.copyWith(
                color: isDark
                    ? AppColors.onSurfaceDark.withValues(alpha: 0.85)
                    : AppColors.onSurface.withValues(alpha: 0.85),
                height: 1.35,
              ),
            ),

            // Evidence link
            if (appeal.evidence != null && appeal.evidence!.isNotEmpty) ...[
              const SizedBox(height: AppSpacing.xs),
              Row(
                children: [
                  Icon(
                    Icons.attach_file_rounded,
                    size: 12.sp,
                    color: AppColors.primaryColor,
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      appeal.evidence!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.w400_10.copyWith(
                        color: AppColors.primaryColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],

            // Admin Decision / Notes if reviewed
            if (appeal.adminNotes != null && appeal.adminNotes!.isNotEmpty) ...[
              const SizedBox(height: AppSpacing.sm),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(AppSpacing.xs),
                decoration: BoxDecoration(
                  color: isDark ? AppColors.surfaceVariantDark : AppColors.surfaceVariant,
                  borderRadius: BorderRadius.circular(AppRadius.sm),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${l10n.moderationAdminNotes}:',
                      style: AppTextStyles.w600_12.copyWith(
                        fontSize: 10.sp,
                        color: isDark
                            ? AppColors.textGreyDark
                            : AppColors.textGrey,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      appeal.adminNotes!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.w400_12.copyWith(
                        fontSize: 11.sp,
                        color: isDark
                            ? AppColors.onSurfaceDark
                            : AppColors.onSurface,
                      ),
                    ),
                  ],
                ),
              ),
            ],

            const SizedBox(height: AppSpacing.xs),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'View Details',
                  style: AppTextStyles.w600_12.copyWith(
                    fontSize: 11.sp,
                    color: isDark
                        ? AppColors.primaryLight
                        : AppColors.primaryColor,
                  ),
                ),
                const SizedBox(width: 2),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 10.sp,
                  color: isDark
                      ? AppColors.primaryLight
                      : AppColors.primaryColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(AppealStatus status) {
    switch (status) {
      case AppealStatus.pending:
        return AppColors.info;
      case AppealStatus.underReview:
        return AppColors.warning;
      case AppealStatus.approved:
        return AppColors.success;
      case AppealStatus.rejected:
        return AppColors.danger;
      case AppealStatus.unknown:
        return AppColors.textGrey;
    }
  }

  IconData _getStatusIcon(AppealStatus status) {
    switch (status) {
      case AppealStatus.pending:
        return Icons.hourglass_empty_rounded;
      case AppealStatus.underReview:
        return Icons.search_rounded;
      case AppealStatus.approved:
        return Icons.check_circle_outline_rounded;
      case AppealStatus.rejected:
        return Icons.highlight_off_rounded;
      case AppealStatus.unknown:
        return Icons.info_outline_rounded;
    }
  }

  String _formatStatusText(AppealStatus status, S l10n) {
    switch (status) {
      case AppealStatus.pending:
        return l10n.moderationAppealPending;
      case AppealStatus.underReview:
        return l10n.moderationAppealUnderReview;
      case AppealStatus.approved:
        return l10n.moderationAppealApproved;
      case AppealStatus.rejected:
        return l10n.moderationAppealRejected;
      case AppealStatus.unknown:
        return appeal.rawStatus;
    }
  }

  String _formatDate(String rawDate) {
    if (rawDate.isEmpty) return '-';
    try {
      final parsed = DateTime.parse(rawDate).toLocal();
      return '${parsed.month}/${parsed.day} ${parsed.hour.toString().padLeft(2, '0')}:${parsed.minute.toString().padLeft(2, '0')}';
    } catch (_) {
      return rawDate;
    }
  }
}
