import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class DocField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final IconData icon;
  final TextInputType keyboardType;
  final bool isRequired;

  const DocField({
    super.key,
    required this.controller,
    required this.label,
    required this.hint,
    required this.icon,
    this.keyboardType = TextInputType.text,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              label,
              style: AppTextStyles.w500_12.copyWith(
                color: AppColors.onSurfaceVariant,
              ),
            ),
            if (isRequired) ...[
              SizedBox(width: 2.w),
              Text(
                '*',
                style: AppTextStyles.w600_12.copyWith(color: AppColors.danger),
              ),
            ],
          ],
        ),
        SizedBox(height: AppSpacing.xs.h),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: isRequired
              ? (v) => (v == null || v.trim().isEmpty) ? 'Required' : null
              : null,
          style: AppTextStyles.w500_14.copyWith(color: AppColors.onSurface),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppTextStyles.w400_14.copyWith(
              color: AppColors.textfieldHintGrey,
            ),
            prefixIcon: Icon(
              icon,
              size: 18.r,
              color: AppColors.onSurfaceVariant,
            ),
            filled: true,
            fillColor: AppColors.surfaceVariant,
            contentPadding: EdgeInsets.symmetric(
              horizontal: AppSpacing.md.w,
              vertical: AppSpacing.md.h,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.md.r),
              borderSide: const BorderSide(color: AppColors.borderColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.md.r),
              borderSide: const BorderSide(color: AppColors.borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.md.r),
              borderSide: const BorderSide(
                color: AppColors.primaryColor,
                width: 1.5,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.md.r),
              borderSide: const BorderSide(color: AppColors.danger),
            ),
          ),
        ),
      ],
    );
  }
}
