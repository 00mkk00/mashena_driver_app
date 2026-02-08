import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/router/app_routes.dart';
import 'package:mashena_driver_app/core/common/extension/responsive_context_x.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/utils/app_images.dart';
import 'package:mashena_driver_app/core/widgets/custom_elevated_button.dart';
import 'package:mashena_driver_app/feature/auth/presentation/views/widgets/fields.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: LoginViewBody()));
  }
}

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: context.screenHeight * 0.05),
        Image.asset(Assets.logo, height: context.screenHeight * 0.15),
        const SizedBox(height: 50),
        Text(S.of(context).authLogin, style: AppTextStyles.w400_38),
        const SizedBox(height: 30),
        Field(
          hint: S.of(context).authPhone,
          autofillHints: [AutofillHints.telephoneNumber],
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: context.screenWidth * 0.8,
          child: CustomElevatedButton(
            title: S.of(context).authSendCode,
            onPressed: () {},
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${S.of(context).authDontHaveAnAccount} ',
                  style: AppTextStyles.w400_16,
                ),
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => context.goNamed(AppRoutes.signup),
                  text: S.of(context).authSignUp,
                  style: AppTextStyles.w600_16.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
