import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 36),
        child: Text(
          title,
          style: AppTextStyles.w600_18.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
