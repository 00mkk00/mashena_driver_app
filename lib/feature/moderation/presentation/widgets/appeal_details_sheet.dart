import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/moderation/data/enums/moderation_enums.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/appeal_entity.dart';

class AppealDetailsSheet extends StatelessWidget {
  final AppealEntity appeal;

  const AppealDetailsSheet({super.key, required this.appeal});

  static Future<void> show(BuildContext context, {required AppealEntity appeal}) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => AppealDetailsSheet(appeal: appeal),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = S.of(context);
    final statusColor = _getStatusColor(appeal.status);

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.85,
      ),
      padding: const EdgeInsets.only(
        left: AppSpacing.lg,
        right: AppSpacing.lg,
        top: AppSpacing.md,
        bottom: AppSpacing.xl,
      ),
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppRadius.xl),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Handle bar
          Center(
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: isDark
                    ? AppColors.borderColorDark
                    : AppColors.borderColor,
                borderRadius: BorderRadius.circular(AppRadius.full),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.md),

          // Header
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: statusColor.withValues(alpha: 0.15),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.policy_outlined,
                  color: statusColor,
                  size: 22.sp,
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.moderationAppealDetailsTitle,
                      style: AppTextStyles.w700_18.copyWith(
                        color: isDark
                            ? AppColors.onSurfaceDark
                            : AppColors.onSurface,
                      ),
                    ),
                    Text(
                      'Appeal #${appeal.id}',
                      style: AppTextStyles.w400_12.copyWith(
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
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: statusColor.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(AppRadius.full),
                  border: Border.all(color: statusColor.withValues(alpha: 0.3)),
                ),
                child: Text(
                  _formatStatusText(appeal.status, l10n),
                  style: AppTextStyles.w700_12.copyWith(
                    fontSize: 11.sp,
                    color: statusColor,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSpacing.md),
          const Divider(height: 1),
          const SizedBox(height: AppSpacing.md),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Progress Timeline
                  _buildTimeline(context, l10n, isDark),

                  const SizedBox(height: AppSpacing.md),

                  // Submitted Reason
                  _buildSection(
                    title: l10n.moderationAppealReason,
                    icon: Icons.notes_rounded,
                    content: appeal.reason,
                    isDark: isDark,
                  ),

                  // Evidence
                  if (appeal.evidence != null && appeal.evidence!.isNotEmpty) ...[
                    const SizedBox(height: AppSpacing.sm),
                    _buildSection(
                      title: l10n.moderationAppealEvidence,
                      icon: Icons.attach_file_rounded,
                      content: appeal.evidence!,
                      isDark: isDark,
                      isLink: true,
                    ),
                  ],

                  // Admin Decision & Notes
                  if (appeal.adminDecision != null || appeal.adminNotes != null) ...[
                    const SizedBox(height: AppSpacing.sm),
                    _buildAdminSection(l10n, isDark),
                  ],

                  // Linked Penalty
                  if (appeal.penalty != null) ...[
                    const SizedBox(height: AppSpacing.sm),
                    _buildPenaltySection(l10n, isDark),
                  ],
                ],
              ),
            ),
          ),

          const SizedBox(height: AppSpacing.md),

          SizedBox(
            width: double.infinity,
            height: 48.h,
            child: OutlinedButton(
              onPressed: () => Navigator.pop(context),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.md),
                ),
              ),
              child: Text(
                'Close',
                style: AppTextStyles.w600_14.copyWith(
                  color: isDark
                      ? AppColors.onSurfaceDark
                      : AppColors.onSurface,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeline(BuildContext context, S l10n, bool isDark) {
    final step1Active = true;
    final step2Active = appeal.status == AppealStatus.underReview ||
        appeal.status == AppealStatus.approved ||
        appeal.status == AppealStatus.rejected;
    final step3Active = appeal.status == AppealStatus.approved ||
        appeal.status == AppealStatus.rejected;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: isDark ? AppColors.surfaceVariantDark : AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(AppRadius.md),
      ),
      child: Row(
        children: [
          _buildStep(
            title: 'Submitted',
            date: _formatDate(appeal.submittedAt),
            isActive: step1Active,
            isCompleted: step2Active,
            isDark: isDark,
          ),
          _buildStepDivider(isActive: step2Active, isDark: isDark),
          _buildStep(
            title: 'Under Review',
            date: appeal.reviewedAt != null ? _formatDate(appeal.reviewedAt!) : '',
            isActive: step2Active,
            isCompleted: step3Active,
            isDark: isDark,
          ),
          _buildStepDivider(isActive: step3Active, isDark: isDark),
          _buildStep(
            title: 'Decision',
            date: appeal.status == AppealStatus.approved
                ? 'Approved'
                : (appeal.status == AppealStatus.rejected ? 'Rejected' : ''),
            isActive: step3Active,
            isCompleted: step3Active,
            isDark: isDark,
          ),
        ],
      ),
    );
  }

  Widget _buildStep({
    required String title,
    required String date,
    required bool isActive,
    required bool isCompleted,
    required bool isDark,
  }) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              color: isCompleted
                  ? AppColors.primaryColor
                  : (isActive
                      ? AppColors.primaryLight.withValues(alpha: 0.3)
                      : (isDark ? AppColors.cardDark : Colors.grey.shade300)),
              shape: BoxShape.circle,
            ),
            child: isCompleted
                ? const Icon(Icons.check, size: 14, color: Colors.white)
                : null,
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: AppTextStyles.w600_12.copyWith(
              fontSize: 10.sp,
              color: isActive
                  ? (isDark ? AppColors.onSurfaceDark : AppColors.onSurface)
                  : (isDark ? AppColors.textGreyDark : AppColors.textGrey),
            ),
          ),
          if (date.isNotEmpty)
            Text(
              date,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.w400_10.copyWith(
                fontSize: 8.sp,
                color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildStepDivider({required bool isActive, required bool isDark}) {
    return Container(
      width: 28,
      height: 2,
      color: isActive
          ? AppColors.primaryColor
          : (isDark ? AppColors.borderColorDark : Colors.grey.shade300),
    );
  }

  Widget _buildSection({
    required String title,
    required IconData icon,
    required String content,
    required bool isDark,
    bool isLink = false,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: isDark ? AppColors.surfaceVariantDark : AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(AppRadius.md),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 14.sp, color: AppColors.primaryColor),
              const SizedBox(width: 4),
              Text(
                title,
                style: AppTextStyles.w600_12.copyWith(
                  color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            content,
            style: AppTextStyles.w400_12.copyWith(
              color: isLink
                  ? AppColors.primaryColor
                  : (isDark ? AppColors.onSurfaceDark : AppColors.onSurface),
              decoration: isLink ? TextDecoration.underline : null,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAdminSection(S l10n, bool isDark) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: appeal.status == AppealStatus.approved
            ? (isDark
                ? AppColors.success.withValues(alpha: 0.1)
                : AppColors.successSurface)
            : (isDark
                ? AppColors.danger.withValues(alpha: 0.1)
                : AppColors.dangerSurface),
        borderRadius: BorderRadius.circular(AppRadius.md),
        border: Border.all(
          color: appeal.status == AppealStatus.approved
              ? AppColors.success.withValues(alpha: 0.3)
              : AppColors.danger.withValues(alpha: 0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                appeal.status == AppealStatus.approved
                    ? Icons.check_circle_rounded
                    : Icons.cancel_rounded,
                size: 16.sp,
                color: appeal.status == AppealStatus.approved
                    ? AppColors.success
                    : AppColors.danger,
              ),
              const SizedBox(width: 6),
              Text(
                appeal.adminDecision ?? l10n.moderationAdminDecision,
                style: AppTextStyles.w700_12.copyWith(
                  color: appeal.status == AppealStatus.approved
                      ? AppColors.success
                      : AppColors.danger,
                ),
              ),
            ],
          ),
          if (appeal.adminNotes != null && appeal.adminNotes!.isNotEmpty) ...[
            const SizedBox(height: AppSpacing.xs),
            Text(
              appeal.adminNotes!,
              style: AppTextStyles.w400_12.copyWith(
                color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
                height: 1.35,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildPenaltySection(S l10n, bool isDark) {
    final penalty = appeal.penalty!;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: isDark ? AppColors.surfaceVariantDark : AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(AppRadius.md),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.moderationLinkedPenalty,
            style: AppTextStyles.w600_12.copyWith(
              color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Type: ${penalty.rawPenaltyType} · Severity: ${penalty.rawSeverity}',
            style: AppTextStyles.w500_12.copyWith(
              fontSize: 11.sp,
              color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            penalty.reason,
            style: AppTextStyles.w400_12.copyWith(
              color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
            ),
          ),
        ],
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
    if (rawDate.isEmpty) return '';
    try {
      final parsed = DateTime.parse(rawDate).toLocal();
      return '${parsed.month}/${parsed.day} ${parsed.hour.toString().padLeft(2, '0')}:${parsed.minute.toString().padLeft(2, '0')}';
    } catch (_) {
      return rawDate;
    }
  }
}
