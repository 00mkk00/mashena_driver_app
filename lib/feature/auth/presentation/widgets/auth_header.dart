import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/utils/app_images.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key, required this.logoHeight, required this.title});
  final double logoHeight;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Image.asset(Assets.logo, height: logoHeight),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(title, style: AppTextStyles.w400_38),
          ),
        ],
      ),
    );
  }
}
