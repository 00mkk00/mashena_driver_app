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

  bool get _hasValidImagePath =>
      imagePath != null &&
      imagePath!.trim().isNotEmpty &&
      imagePath != 'picked';

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
            child: ClipOval(
              child: _buildAvatarContent(isDark),
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

  Widget _buildAvatarContent(bool isDark) {
    if (!_hasValidImagePath) {
      return _buildPlaceholder(isDark);
    }

    final path = imagePath!.trim();
    final isNetwork = path.startsWith('http://') || path.startsWith('https://');

    if (isNetwork) {
      return Image.network(
        path,
        fit: BoxFit.cover,
        width: 100.r,
        height: 100.r,
        errorBuilder: (context, error, stackTrace) => _buildPlaceholder(isDark),
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: SizedBox(
              width: 24.r,
              height: 24.r,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: isDark ? AppColors.primaryLight : AppColors.primaryColor,
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                    : null,
              ),
            ),
          );
        },
      );
    }

    try {
      final file = File(path);
      return Image.file(
        file,
        fit: BoxFit.cover,
        width: 100.r,
        height: 100.r,
        errorBuilder: (context, error, stackTrace) => _buildPlaceholder(isDark),
      );
    } catch (_) {
      return _buildPlaceholder(isDark);
    }
  }

  Widget _buildPlaceholder(bool isDark) {
    if (initials.trim().isNotEmpty) {
      return Center(
        child: Text(
          initials.trim(),
          style: AppTextStyles.w700_24.copyWith(
            color: isDark ? AppColors.primaryLight : AppColors.primaryColor,
          ),
        ),
      );
    }

    return Center(
      child: Icon(
        Icons.person_rounded,
        size: 48.r,
        color: isDark ? AppColors.primaryLight : AppColors.primaryColor,
      ),
    );
  }
}
