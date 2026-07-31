import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class SaveFooter extends StatelessWidget {
  final bool isActive;
  final VoidCallback onSave;

  const SaveFooter({super.key, required this.isActive, required this.onSave});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.fromLTRB(
        AppSpacing.md.w,
        AppSpacing.sm.h,
        AppSpacing.md.w,
        AppSpacing.md.h + MediaQuery.of(context).padding.bottom,
      ),
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.3 : 0.06),
            blurRadius: 16,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        width: double.infinity,
        height: 52.h,
        child: ElevatedButton(
          onPressed: isActive ? onSave : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: isActive
                ? AppColors.primaryColor
                : AppColors.primaryColor.withValues(alpha: 0.4),
            disabledBackgroundColor: AppColors.primaryColor.withValues(
              alpha: 0.4,
            ),
            foregroundColor: Colors.white,
            elevation: isActive ? 2 : 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppRadius.full.r),
            ),
          ),
          child: Text(
            S.of(context).profileSaveChanges,
            style: AppTextStyles.w700_14.copyWith(
              color: isActive ? Colors.white : AppColors.textGrey,
            ),
          ),
        ),
      ),
    );
  }
}
