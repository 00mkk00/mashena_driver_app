import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/utils/app_images.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key, required this.logoHeight});
  final double logoHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(Assets.logo, height: logoHeight),
        Text(S.of(context).authSignUp, style: AppTextStyles.w400_38),
      ],
    );
  }
}
