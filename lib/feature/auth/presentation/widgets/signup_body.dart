import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/router/app_routes.dart';
import 'package:mashena_driver_app/core/common/extension/responsive_context_x.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/utils/validators.dart';
import 'package:mashena_driver_app/core/widgets/custom_elevated_button.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/create_driver_params.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/signup_cubit/signup_state.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/fields.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/auth_footer.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/auth_header.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final _formKey = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final cityController = TextEditingController();

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: context.screenHeight * 0.05),
            AuthHeader(
              title: S.of(context).authSignUp,
              logoHeight: context.screenHeight * 0.15,
            ),
            const SizedBox(height: 20),
            Field(
              hint: S.of(context).authFullName,
              autofillHints: const [AutofillHints.name],
              keyboardType: TextInputType.name,
              controller: fullNameController,
              validator: Validators.requiredField,
            ),
            const SizedBox(height: 20),
            Field(
              hint: S.of(context).email,
              autofillHints: const [AutofillHints.email],
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              validator: (value) => Validators.emailField(value),
            ),
            const SizedBox(height: 20),
            Field(
              hint: S.of(context).authPhone,
              autofillHints: const [AutofillHints.telephoneNumber],
              keyboardType: TextInputType.number,
              controller: phoneController,
              validator: Validators.phoneField,
            ),
            const SizedBox(height: 20),
            Field(
              obscureText: true,
              hint: S.of(context).authPassword,
              autofillHints: const [AutofillHints.password],
              keyboardType: TextInputType.visiblePassword,
              controller: passwordController,
              validator: Validators.passwordField,
            ),
            const SizedBox(height: 20),
            Field(
              obscureText: true,
              hint: S.of(context).confirmPassword,
              autofillHints: const [AutofillHints.password],
              keyboardType: TextInputType.visiblePassword,
              controller: confirmPasswordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).validationRequired;
                }
                if (value != passwordController.text) {
                  return S.of(context).validationPasswordsNotMatch;
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            Field(
              hint: S.of(context).authCity,
              autofillHints: const [AutofillHints.addressCity],
              keyboardType: TextInputType.text,
              controller: cityController,
              validator: (value) => Validators.requiredStringField(
                value,
                message: 'يرجى إدخال المدينة',
              ),
            ),
            const SizedBox(height: 20),
            BlocBuilder<SignupCubit, SignupState>(
              builder: (context, state) {
                final isLoading = state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                );
                return SizedBox(
                  width: context.screenWidth * 0.8,
                  child: CustomElevatedButton(
                    title: S.of(context).authSignUp,
                    isLoading: isLoading,
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        final params = CreateDriverParams(
                          fullName: fullNameController.text,
                          email: emailController.text,
                          phoneNumber: phoneController.text,
                          password: passwordController.text,
                          city: cityController.text,
                        );
                        await context.read<SignupCubit>().signup(params);
                      }
                    },
                  ),
                );
              },
            ),

            const SizedBox(height: 20),
            AuthFooter(
              onTapLogin: () => context.go(AppRoutes.loginPath),
              text: S.of(context).authLogin,
            ),
          ],
        ),
      ),
    );
  }
}
