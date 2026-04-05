import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.title, this.onPressed});

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final bool isEnabled = onPressed != null;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isEnabled
            ? AppColors.primaryColor
            : AppColors.primaryColor.withValues(alpha: 0.5),
        disabledBackgroundColor: AppColors.primaryColor.withValues(alpha: 0.5),
        elevation: isEnabled ? 2 : 0,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 36),
        child: Text(
          title,
          style: AppTextStyles.w600_18.copyWith(
            color: Colors.white.withValues(alpha: isEnabled ? 1 : 0.7),
          ),
        ),
      ),
    );
  }
}
