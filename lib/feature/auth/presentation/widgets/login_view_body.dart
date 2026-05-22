import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/router/app_routes.dart';
import 'package:mashena_driver_app/core/common/extension/responsive_context_x.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/utils/validators.dart';
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
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: context.screenHeight * 0.05),
            AuthHeader(
              title: S.of(context).authLogin,
              logoHeight: context.screenHeight * 0.15,
            ),

            const SizedBox(height: 20),

            Field(
              controller: emailController,
              hint: S.of(context).email,
              autofillHints: const [AutofillHints.email],
              keyboardType: TextInputType.emailAddress,
              validator: Validators.emailField,
            ),

            const SizedBox(height: 20),

            Field(
              controller: passwordController,
              obscureText: true,
              hint: S.of(context).authPassword,
              autofillHints: const [AutofillHints.password],
              keyboardType: TextInputType.visiblePassword,
              validator: Validators.requiredField,
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: context.screenWidth * 0.8,
              child: CustomElevatedButton(
                title: S.of(context).commonNext,
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    context.read<LoginCubit>().login(
                      email: emailController.text,
                      password: passwordController.text,
                      fcmToken: "testfcmtoken",
                    );
                  }
                },
              ),
            ),

            const SizedBox(height: 20),

            AuthFooter(
              onTapLogin: () => context.push(AppRoutes.signupPath),
              text: S.of(context).authSignUp,
            ),
          ],
        ),
      ),
    );
  }
}
