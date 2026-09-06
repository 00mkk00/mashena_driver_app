import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/moderation/data/enums/moderation_enums.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/penalty_entity.dart';

class PenaltyItemCard extends StatelessWidget {
  final PenaltyEntity penalty;
  final VoidCallback? onAppealTap;
  final bool hasActiveAppeal;

  const PenaltyItemCard({
    super.key,
    required this.penalty,
    this.onAppealTap,
    this.hasActiveAppeal = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = S.of(context);
    final statusColor = _getStatusColor(penalty.status);
    final penaltyTypeColor = _getPenaltyTypeColor(penalty.penaltyType);

    final isActive = penalty.status == ModerationItemStatus.active;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        border: Border.all(
          color: isActive
              ? penaltyTypeColor.withValues(alpha: 0.3)
              : (isDark ? AppColors.borderColorDark : AppColors.borderColor),
          width: isActive ? 1.5 : 1.0,
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
          // Header: Penalty Type & Status
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: penaltyTypeColor.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(AppRadius.sm),
                ),
                child: Icon(
                  Icons.gavel_rounded,
                  color: penaltyTypeColor,
                  size: 18.sp,
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _formatPenaltyType(penalty.penaltyType, l10n),
                      style: AppTextStyles.w700_14.copyWith(
                        color: isDark
                            ? AppColors.onSurfaceDark
                            : AppColors.onSurface,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'ID: #${penalty.id} · Issued by ${penalty.issuedByType}',
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
                  penalty.rawStatus,
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
          if (penalty.reason.isNotEmpty) ...[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppSpacing.sm),
              decoration: BoxDecoration(
                color: isDark ? AppColors.surfaceVariantDark : AppColors.surfaceVariant,
                borderRadius: BorderRadius.circular(AppRadius.sm),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reason:',
                    style: AppTextStyles.w600_12.copyWith(
                      fontSize: 10.sp,
                      color: isDark
                          ? AppColors.textGreyDark
                          : AppColors.textGrey,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    penalty.reason,
                    style: AppTextStyles.w500_12.copyWith(
                      color: isDark
                          ? AppColors.onSurfaceDark
                          : AppColors.onSurface,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
          ],

          // Restrictions if any
          if (penalty.restrictions.isNotEmpty) ...[
            Wrap(
              spacing: 6,
              runSpacing: 4,
              children: penalty.restrictions.map((r) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xs,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.danger.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(AppRadius.sm),
                    border: Border.all(
                      color: AppColors.danger.withValues(alpha: 0.25),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.block_flipped,
                        size: 10,
                        color: AppColors.danger,
                      ),
                      const SizedBox(width: 3),
                      Text(
                        r.rawRestrictionType,
                        style: AppTextStyles.w600_12.copyWith(
                          fontSize: 10.sp,
                          color: AppColors.danger,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: AppSpacing.sm),
          ],

          // Dates Row
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      size: 11.sp,
                      color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        '${l10n.moderationPenaltyStarts}: ${_formatDate(penalty.startsAt)}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.w400_10.copyWith(
                          color: isDark
                              ? AppColors.textGreyDark
                              : AppColors.textGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.event_busy_outlined,
                      size: 11.sp,
                      color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        '${l10n.moderationPenaltyExpires}: ${_formatDate(penalty.expiresAt)}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.w400_10.copyWith(
                          color: isDark
                              ? AppColors.textGreyDark
                              : AppColors.textGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Appeal Button
          if (isActive && onAppealTap != null) ...[
            const SizedBox(height: AppSpacing.sm),
            const Divider(height: 1),
            const SizedBox(height: AppSpacing.xs),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: hasActiveAppeal
                  ? Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.sm,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.info.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(AppRadius.sm),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.hourglass_top_rounded,
                            size: 14,
                            color: AppColors.info,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            l10n.moderationAppealAlreadySubmitted,
                            style: AppTextStyles.w500_12.copyWith(
                              fontSize: 11.sp,
                              color: AppColors.info,
                            ),
                          ),
                        ],
                      ),
                    )
                  : TextButton.icon(
                      onPressed: onAppealTap,
                      icon: const Icon(Icons.rate_review_outlined, size: 16),
                      label: Text(
                        l10n.moderationSubmitAppeal,
                        style: AppTextStyles.w600_12,
                      ),
                      style: TextButton.styleFrom(
                        foregroundColor: AppColors.primaryColor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.sm,
                          vertical: 4,
                        ),
                      ),
                    ),
            ),
          ],
        ],
      ),
    );
  }

  Color _getStatusColor(ModerationItemStatus status) {
    switch (status) {
      case ModerationItemStatus.active:
        return AppColors.danger;
      case ModerationItemStatus.expired:
        return AppColors.textGrey;
      case ModerationItemStatus.revoked:
        return AppColors.success;
      default:
        return AppColors.info;
    }
  }

  Color _getPenaltyTypeColor(PenaltyType type) {
    switch (type) {
      case PenaltyType.warning:
        return AppColors.warning;
      case PenaltyType.temporarySuspension:
        return Colors.deepOrange;
      case PenaltyType.permanentBan:
        return AppColors.danger;
      case PenaltyType.unknown:
        return AppColors.primaryColor;
    }
  }

  String _formatPenaltyType(PenaltyType type, S l10n) {
    switch (type) {
      case PenaltyType.warning:
        return l10n.moderationPenaltyWarning;
      case PenaltyType.temporarySuspension:
        return l10n.moderationPenaltyTempSuspension;
      case PenaltyType.permanentBan:
        return l10n.moderationPenaltyPermanentBan;
      case PenaltyType.unknown:
        return penalty.rawPenaltyType;
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
