import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class MapPlaceholder extends StatefulWidget {
  final String? message;
  const MapPlaceholder({super.key, this.message});

  @override
  State<MapPlaceholder> createState() => _MapPlaceholderState();
}

class _MapPlaceholderState extends State<MapPlaceholder>
    with SingleTickerProviderStateMixin {
  late AnimationController _shimmer;

  @override
  void initState() {
    super.initState();
    _shimmer = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();
  }

  @override
  void dispose() {
    _shimmer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _shimmer,
      builder: (_, _) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.primarySurface,
                AppColors.lightScaffold,
                AppColors.primarySurface,
              ],
              stops: [
                (_shimmer.value - 0.3).clamp(0.0, 1.0),
                (_shimmer.value).clamp(0.0, 1.0),
                (_shimmer.value + 0.3).clamp(0.0, 1.0),
              ],
            ),
          ),
          child: Stack(
            children: [
              // ── Map grid pattern ───────────────────────────────
              CustomPaint(size: Size.infinite, painter: _MapGridPainter()),

              // ── Loading message ────────────────────────────────
              if (widget.message != null)
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSpacing.md.w,
                      vertical: AppSpacing.sm.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.cardLight,
                      borderRadius: BorderRadius.circular(AppRadius.md.r),
                      boxShadow: AppShadows.card,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 18.r,
                          height: 18.r,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SizedBox(width: AppSpacing.sm.w),
                        Text(
                          widget.message!,
                          style: AppTextStyles.w500_14.copyWith(
                            color: AppColors.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

class _MapGridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.borderColor.withValues(alpha: 0.2)
      ..strokeWidth = 1;

    const spacing = 40.0;

    for (double x = 0; x < size.width; x += spacing) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }
    for (double y = 0; y < size.height; y += spacing) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
