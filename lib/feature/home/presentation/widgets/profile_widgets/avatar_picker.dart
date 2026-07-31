import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class AvatarPicker extends StatelessWidget {
  final String? imagePath;
  final String initials;
  final VoidCallback? onPickImage;

  const AvatarPicker({
    super.key,
    required this.imagePath,
    required this.initials,
    this.onPickImage,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Center(
      child: Stack(
        children: [
          Container(
            width: 100.r,
            height: 100.r,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isDark
                  ? AppColors.primaryLight.withValues(alpha: 0.15)
                  : AppColors.primarySurface,
              border: Border.all(
                color:
                    (isDark ? AppColors.primaryLight : AppColors.primaryColor)
                        .withValues(alpha: 0.3),
                width: 2.5,
              ),
              boxShadow: AppShadows.card,
            ),
            child: imagePath != null && imagePath != 'picked'
                ? ClipOval(
                    child: Image.file(File(imagePath!), fit: BoxFit.cover),
                  )
                : Center(
                    child: Text(
                      initials,
                      style: AppTextStyles.w700_24.copyWith(
                        color: isDark
                            ? AppColors.primaryLight
                            : AppColors.primaryColor,
                      ),
                    ),
                  ),
          ),
          if (onPickImage != null)
            Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                onTap: onPickImage,
                child: Container(
                  width: 32.r,
                  height: 32.r,
                  decoration: BoxDecoration(
                    color: isDark
                        ? AppColors.primaryLight
                        : AppColors.primaryColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isDark
                          ? AppColors.darkScaffold
                          : AppColors.lightScaffold,
                      width: 2,
                    ),
                    boxShadow: AppShadows.card,
                  ),
                  child: Icon(
                    Icons.camera_alt_rounded,
                    size: 16.r,
                    color: isDark ? AppColors.darkScaffold : Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
