import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
    this.onPressed,
    this.isLoading = false,
  });

  final String title;
  final VoidCallback? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final bool isEnabled = onPressed != null && !isLoading;

    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: isEnabled
            ? AppColors.primaryColor
            : AppColors.primaryColor.withValues(alpha: 0.5),
        disabledBackgroundColor: AppColors.primaryColor.withValues(alpha: 0.5),
        elevation: isEnabled ? 2 : 0,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 36),
        child: isLoading
            ? const CupertinoActivityIndicator(color: Colors.white)
            : Text(
                title,
                style: AppTextStyles.w600_18.copyWith(
                  color: Colors.white.withValues(alpha: isEnabled ? 1 : 0.7),
                ),
              ),
      ),
    );
  }
}
