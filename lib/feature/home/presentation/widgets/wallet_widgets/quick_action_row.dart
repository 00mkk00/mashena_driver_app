import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class QuickActionsRow extends StatelessWidget {
  const QuickActionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _ActionButton(
            icon: Icons.arrow_upward_rounded,
            label: S.of(context).walletWithdraw,
            color: AppColors.earning,
            surface: AppColors.earningSurface,
            onTap: () {},
          ),
        ),
        SizedBox(width: AppSpacing.sm.w),
        Expanded(
          child: _ActionButton(
            icon: Icons.history_rounded,
            label: S.of(context).walletHistory,
            color: AppColors.primaryColor,
            surface: AppColors.primarySurface,
            onTap: () {},
          ),
        ),
        SizedBox(width: AppSpacing.sm.w),
        Expanded(
          child: _ActionButton(
            icon: Icons.receipt_long_rounded,
            label: S.of(context).walletStatement,
            color: AppColors.info,
            surface: AppColors.infoSurface,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final Color surface;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.label,
    required this.color,
    required this.surface,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: AppSpacing.md.h,
          horizontal: AppSpacing.sm.w,
        ),
        decoration: BoxDecoration(
          color: AppColors.cardLight,
          borderRadius: BorderRadius.circular(AppRadius.md.r),
          boxShadow: AppShadows.card,
        ),
        child: Column(
          children: [
            Container(
              width: 44.r,
              height: 44.r,
              decoration: BoxDecoration(
                color: surface,
                borderRadius: BorderRadius.circular(AppRadius.sm.r),
              ),
              child: Icon(icon, color: color, size: 22.r),
            ),
            SizedBox(height: AppSpacing.xs.h),
            Text(
              label,
              style: AppTextStyles.w500_12.copyWith(color: AppColors.onSurface),
            ),
          ],
        ),
      ),
    );
  }
}
