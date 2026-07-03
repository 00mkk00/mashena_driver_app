import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class SubmitFooter extends StatelessWidget {
  final bool isActive;
  final VoidCallback onSubmit;

  const SubmitFooter({
    super.key,
    required this.isActive,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        AppSpacing.md.w,
        AppSpacing.sm.h,
        AppSpacing.md.w,
        AppSpacing.md.h + MediaQuery.of(context).padding.bottom,
      ),
      decoration: BoxDecoration(
        color: AppColors.cardLight,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 16,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: double.infinity,
        height: 52.h,
        child: ElevatedButton.icon(
          onPressed: isActive ? onSubmit : null,
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
          icon: Icon(Icons.upload_rounded, size: 20.r, color: Colors.white),
          label: Text(
            'Submit Documents',
            style: AppTextStyles.w600_16.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
