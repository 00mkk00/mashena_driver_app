import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/moderation/data/enums/moderation_enums.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/moderation_overview_entity.dart';

class ModerationStatusCard extends StatelessWidget {
  final ModerationOverviewEntity overview;

  const ModerationStatusCard({super.key, required this.overview});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = S.of(context);

    final status = overview.accountStatus;
    final (statusColor, statusBg, statusIcon, statusLabel) = _getStatusDetails(
      status,
      l10n,
      isDark,
    );

    return Container(
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        border: Border.all(
          color: isDark ? AppColors.borderColorDark : AppColors.borderColor,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.2 : 0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Header Status
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: statusBg,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(AppRadius.lg),
              ),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(statusIcon, color: statusColor, size: 22.sp),
                ),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.moderationAccountStatus,
                        style: AppTextStyles.w400_12.copyWith(
                          color: isDark
                              ? AppColors.textGreyDark
                              : AppColors.textGrey,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        statusLabel,
                        style: AppTextStyles.w700_16.copyWith(
                          color: statusColor,
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   padding: const EdgeInsets.symmetric(
                //     horizontal: AppSpacing.sm,
                //     vertical: AppSpacing.xs,
                //   ),
                //   decoration: BoxDecoration(
                //     color: statusColor.withValues(alpha: 0.15),
                //     borderRadius: BorderRadius.circular(AppRadius.full),
                //     border: Border.all(color: statusColor.withValues(alpha: 0.3)),
                //   ),
                //   child: Text(
                //     overview.rawAccountStatus,
                //     style: AppTextStyles.w600_12.copyWith(color: statusColor),
                //   ),
                // ),
              ],
            ),
          ),

          // Metrics Grid
          Padding(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: _MetricTile(
                        icon: Icons.warning_amber_rounded,
                        iconColor: AppColors.warning,
                        label: l10n.moderationWarningsCount,
                        value: '${overview.warningCount}',
                        isDark: isDark,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    Expanded(
                      child: _MetricTile(
                        icon: Icons.report_problem_outlined,
                        iconColor: AppColors.danger,
                        label: l10n.moderationTotalViolations,
                        value: '${overview.totalViolationsCount}',
                        isDark: isDark,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.sm),
                Row(
                  children: [
                    Expanded(
                      child: _MetricTile(
                        icon: Icons.gavel_rounded,
                        iconColor: Colors.deepOrangeAccent,
                        label: l10n.moderationActivePenalties,
                        value: '${overview.activePenalties.length}',
                        isDark: isDark,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    Expanded(
                      child: _MetricTile(
                        icon: Icons.block_flipped,
                        iconColor: Colors.purpleAccent,
                        label: l10n.moderationActiveRestrictions,
                        value: '${overview.activeRestrictions.length}',
                        isDark: isDark,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  (Color, Color, IconData, String) _getStatusDetails(
    AccountStatus status,
    S l10n,
    bool isDark,
  ) {
    switch (status) {
      case AccountStatus.active:
        return (
          AppColors.success,
          isDark
              ? AppColors.success.withValues(alpha: 0.1)
              : AppColors.successSurface,
          Icons.verified_user_rounded,
          l10n.moderationStatusActive,
        );
      case AccountStatus.warning:
        return (
          AppColors.warning,
          isDark
              ? AppColors.warning.withValues(alpha: 0.1)
              : const Color(0xFFFFFBEB),
          Icons.warning_amber_rounded,
          l10n.moderationStatusWarning,
        );
      case AccountStatus.suspended:
        return (
          Colors.deepOrange,
          isDark
              ? Colors.deepOrange.withValues(alpha: 0.1)
              : const Color(0xFFFFEDD5),
          Icons.pause_circle_outline_rounded,
          l10n.moderationStatusSuspended,
        );
      case AccountStatus.banned:
        return (
          AppColors.danger,
          isDark
              ? AppColors.danger.withValues(alpha: 0.1)
              : AppColors.dangerSurface,
          Icons.cancel_outlined,
          l10n.moderationStatusBanned,
        );
      case AccountStatus.unknown:
        return (
          AppColors.primaryColor,
          isDark
              ? AppColors.primaryLight.withValues(alpha: 0.1)
              : AppColors.primarySurface,
          Icons.info_outline_rounded,

          l10n.moderationStatusActive,
        );
    }
  }
}

class _MetricTile extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;
  final String value;
  final bool isDark;

  const _MetricTile({
    required this.icon,
    required this.iconColor,
    required this.label,
    required this.value,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: isDark ? AppColors.surfaceVariantDark : AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(AppRadius.md),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: iconColor.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(AppRadius.sm),
            ),
            child: Icon(icon, color: iconColor, size: 16.sp),
          ),
          const SizedBox(width: AppSpacing.xs),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  value,
                  style: AppTextStyles.w700_16.copyWith(
                    color: isDark
                        ? AppColors.onSurfaceDark
                        : AppColors.onSurface,
                  ),
                ),
                Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.w400_10.copyWith(
                    color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
