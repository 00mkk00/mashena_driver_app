import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/router/app_routes.dart';
import 'package:mashena_driver_app/core/utils/toast_helper.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/signup_cubit/signup_state.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/signup_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<SignupCubit, SignupState>(
          listener: (context, state) {
            state.whenOrNull(
              requireOtp: (email, userId) {
                context.pushNamed(
                  AppRoutes.verification,
                  extra: {"email": email, 'userId': userId},
                );
              },
              error: (message) {
                context.showErrorToast(message);
              },
            );
          },
          child: const SignupViewBody(),
        ),
      ),
    );
  }
}
