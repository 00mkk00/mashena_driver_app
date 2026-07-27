import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/utils/image_url_helper.dart';

class DocumentImagePreviewDialog extends StatelessWidget {
  final String imageUrl;
  final String title;

  const DocumentImagePreviewDialog({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  static void show(BuildContext context, {required String imageUrl, required String title}) {
    final formattedUrl = ImageUrlHelper.formatImageUrl(imageUrl);
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => DocumentImagePreviewDialog(imageUrl: formattedUrl, title: title),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.all(16.r),
      child: Container(
        constraints: BoxConstraints(maxWidth: 500.w),
        decoration: BoxDecoration(
          color: isDark ? AppColors.cardDark : AppColors.cardLight,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.4),
              blurRadius: 20,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: AppTextStyles.w600_16.copyWith(
                        color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(
                      Icons.close_rounded,
                      color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
                      size: 24.r,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            // Image area
            Flexible(
              child: Container(
                constraints: BoxConstraints(maxHeight: 400.h),
                color: Colors.black,
                child: InteractiveViewer(
                  minScale: 0.8,
                  maxScale: 4.0,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.contain,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                          color: AppColors.primaryColor,
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Padding(
                          padding: EdgeInsets.all(24.r),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.broken_image_rounded,
                                color: AppColors.danger,
                                size: 48.r,
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                'Failed to load image',
                                style: AppTextStyles.w500_14.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            const Divider(height: 1),
            // Footer
            Padding(
              padding: EdgeInsets.all(12.r),
              child: Text(
                'Pinch or double tap to zoom',
                textAlign: TextAlign.center,
                style: AppTextStyles.w400_12.copyWith(
                  color: AppColors.textGrey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
