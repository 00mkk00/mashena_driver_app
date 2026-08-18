import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/router/app_routes.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/utils/toast_helper.dart';
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
              loading: () {},

              /// ✅ Success
              success: (auth) {
                context.go(AppRoutes.homeViewPath); // Navigate to home
              },

              /// 📤 Needs Upload
              needsUpload: (userId) {
                context.go(AppRoutes.uploadDocsPath, extra: {'userId': userId});
              },

              /// ℹ️ Approval Status
              approvalStatus: (status) {
                if (status == 'no_approval_request') {
                  context.showInfoToast(
                    S.of(context).authNoApprovalRequest,
                  );
                } else {
                  context.showInfoToast(
                    S.of(context).authApprovalStatus(status),
                  );
                }
              },

              requireOtp: (userId, email) {
                context.pushNamed(
                  AppRoutes.verification,
                  extra: {'userId': userId, 'email': email},
                );
              },

              /// ❌ Error
              error: (message) {
                context.showErrorToast(message);
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
