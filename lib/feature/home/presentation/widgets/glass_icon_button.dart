import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';

class GlassIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color? iconColor;
  final double? size;

  const GlassIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.iconColor,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    final buttonSize = size ?? 44.r;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: buttonSize,
        height: buttonSize,
        decoration: BoxDecoration(
          color: AppColors.cardLight,
          shape: BoxShape.circle,
          boxShadow: AppShadows.card,
        ),
        child: Icon(icon, size: 22.r, color: iconColor ?? AppColors.onSurface),
      ),
    );
  }
}
