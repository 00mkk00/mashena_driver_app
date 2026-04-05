import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/router/app_routes.dart';
import 'package:mashena_driver_app/core/common/extension/responsive_context_x.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/widgets/custom_elevated_button.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/fields.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/auth_footer.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/auth_header.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: context.screenHeight * 0.05),
        AuthHeader(logoHeight: context.screenHeight * 0.15),

        const SizedBox(height: 20),

        Field(
          controller: emailController,
          hint: S.of(context).email,
          autofillHints: const [AutofillHints.email],
          keyboardType: TextInputType.emailAddress,
        ),

        const SizedBox(height: 20),

        Field(
          controller: passwordController,
          obscureText: true,
          hint: S.of(context).authPassword,
          autofillHints: const [AutofillHints.password],
          keyboardType: TextInputType.visiblePassword,
        ),

        const SizedBox(height: 20),

        SizedBox(
          width: context.screenWidth * 0.8,
          child: CustomElevatedButton(
            title: S.of(context).commonNext,
            onPressed: () {
              context.read<LoginCubit>().login(
                email: emailController.text,
                password: passwordController.text,
                fcmToken: "test_fcm_token",
              );
            },
          ),
        ),

        const SizedBox(height: 20),

        AuthFooter(onTapLogin: () => context.go(AppRoutes.signupPath)),
      ],
    );
  }
}
