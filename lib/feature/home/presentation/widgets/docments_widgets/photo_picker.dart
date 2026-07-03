import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class PhotoPicker extends StatelessWidget {
  final String? imagePath;
  final VoidCallback onPickImage;

  const PhotoPicker({
    super.key,
    required this.imagePath,
    required this.onPickImage,
  });

  @override
  Widget build(BuildContext context) {
    final hasImage = imagePath != null && imagePath != 'picked';

    return GestureDetector(
      onTap: onPickImage,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        height: 140.h,
        decoration: BoxDecoration(
          color: imagePath != null
              ? AppColors.primarySurface
              : AppColors.surfaceVariant,
          borderRadius: BorderRadius.circular(AppRadius.md.r),
          border: Border.all(
            color: imagePath != null
                ? AppColors.primaryColor.withValues(alpha: 0.4)
                : AppColors.borderColor,
            width: 1.5,
          ),
          boxShadow: imagePath != null ? AppShadows.card : null,
        ),
        child: hasImage
            ? ClipRRect(
                borderRadius: BorderRadius.circular(AppRadius.md.r),
                child: Image.file(
                  File(imagePath!),
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 48.r,
                    height: 48.r,
                    decoration: BoxDecoration(
                      color: imagePath != null
                          ? AppColors.primaryColor.withValues(alpha: 0.15)
                          : AppColors.primarySurface,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      imagePath != null
                          ? Icons.check_circle_rounded
                          : Icons.add_photo_alternate_outlined,
                      size: 24.r,
                      color: imagePath != null
                          ? AppColors.primaryColor
                          : AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(height: AppSpacing.sm.h),
                  Text(
                    imagePath != null
                        ? 'Photo Selected ✓'
                        : 'Tap to upload vehicle photo',
                    style: AppTextStyles.w500_14.copyWith(
                      color: imagePath != null
                          ? AppColors.primaryColor
                          : AppColors.onSurfaceVariant,
                    ),
                  ),
                  if (imagePath == null) ...[
                    SizedBox(height: 2.h),
                    Text(
                      'JPG, PNG — max 5MB',
                      style: AppTextStyles.w400_12.copyWith(
                        color: AppColors.textGrey,
                      ),
                    ),
                  ],
                ],
              ),
      ),
    );
  }
}
