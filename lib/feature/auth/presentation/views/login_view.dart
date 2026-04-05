import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/router/app_routes.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/login_cubit/login_state.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<LoginCubit, LoginState>(
          listener: (context, state) {
            state.when(
              initial: () {},

              /// ⏳ Loading
              loading: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (_) =>
                      const Center(child: CircularProgressIndicator()),
                );
              },

              /// ✅ Success
              success: (auth) {
                Navigator.pop(context);

                // TODO: خزّن التوكن
                // final token = auth.accessToken;

                // context.go(AppRoutes.homePath);
              },

              /// 🔐 يحتاج OTP
              requireOtp: (email, phone) {
                Navigator.pop(context);

                context.go(
                  AppRoutes.verificationPath,
                  extra: {
                    "email": email,
                    "phone": phone,
                  },
                );
              },

              /// ❌ Error
              error: (message) {
                Navigator.pop(context);

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message)),
                );
              },
            );
          },

          /// 👇 فقط UI
          child: const LoginViewBody(),
        ),
      ),
    );
  }
}