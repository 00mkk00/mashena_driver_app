import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class SectionHeader extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final Color surface;

  const SectionHeader({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
    required this.surface,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 32.r,
          height: 32.r,
          decoration: BoxDecoration(
            color: surface,
            borderRadius: BorderRadius.circular(AppRadius.sm.r),
          ),
          child: Icon(icon, size: 18.r, color: color),
        ),
        SizedBox(width: AppSpacing.sm.w),
        Text(
          title,
          style: AppTextStyles.w600_14.copyWith(
            color: AppColors.borderColorDark,
          ),
        ),
      ],
    );
  }
}
