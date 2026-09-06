import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';

class CustomHeaderButton extends StatelessWidget {
  const CustomHeaderButton({
    super.key,
    this.onPressed,
    this.size = 56.0,
    this.iconSize = 32.0,
    this.borderRadius = 16.0,
    this.iconData = Icons.chevron_left,
  });

  final VoidCallback? onPressed;
  final double size;
  final double iconSize;
  final double borderRadius;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkScaffold : AppColors.lightScaffold,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: AppColors.borderColor, width: 1.5),
      ),
      child: IconButton(
        onPressed: onPressed ?? () => Navigator.of(context).pop(),
        padding: EdgeInsets.zero,
        icon: Icon(
          iconData,
          size: iconSize,
          color: isDark ? Colors.white : AppColors.primaryColor,
        ),
      ),
    );
  }
}
