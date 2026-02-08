import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class SignupFooter extends StatelessWidget {
  const SignupFooter({super.key, required this.onTapLogin});
  final VoidCallback onTapLogin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '${S.of(context).alreadyHaveAnAccount} ',
              style: AppTextStyles.w400_16,
            ),
            WidgetSpan(
              child: GestureDetector(
                onTap: onTapLogin,
                child: Text(
                  S.of(context).authLogin,
                  style: AppTextStyles.w600_16.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
