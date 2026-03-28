import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/router/app_routes.dart';
import 'package:mashena_driver_app/core/common/extension/responsive_context_x.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/widgets/custom_elevated_button.dart';
import 'package:mashena_driver_app/feature/auth/domin/params/create_driver_params.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/views/widgets/fields.dart';
import 'package:mashena_driver_app/feature/auth/presentation/views/widgets/signup_footer.dart';
import 'package:mashena_driver_app/feature/auth/presentation/views/widgets/signup_header.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final fullNameController = TextEditingController();
final emailController = TextEditingController();
final phoneController = TextEditingController();
final passwordController = TextEditingController();
final cityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: context.screenHeight * 0.05),
        SignupHeader(logoHeight: context.screenHeight * 0.15),
        const SizedBox(height: 20),
        Field(
          hint: S.of(context).authFullName,
          autofillHints: const [AutofillHints.name],
          keyboardType: TextInputType.name,
        ),
        const SizedBox(height: 20),
        Field(
          hint: S.of(context).email,
          autofillHints: const [AutofillHints.email],
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 20),
        Field(
          hint: S.of(context).authPhone,
          autofillHints: const [AutofillHints.telephoneNumber],
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 20),
        Field(
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
               final params = CreateDriverParams(
    fullName: fullNameController.text,
    email: emailController.text,
    phoneNumber: phoneController.text,
    password: passwordController.text,
    city: cityController.text,
  );

  context.read<SignupCubit>().createDriverUseCase(params);
            },
          ),
        ),

        const SizedBox(height: 20),
        SignupFooter(onTapLogin: () => context.go(AppRoutes.loginPath)),
      ],
    );
  }
}
