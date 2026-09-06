import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/router/app_routes.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/utils/toast_helper.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/verify_cubit/verify_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/verify_cubit/verify_state.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/verify_otp_view_body.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({
    super.key,
    required this.userId,
    required this.email,
  });

  final int userId;
  final String email;
  // final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<VerifyOtpCubit, VerifyOtpState>(
          listener: (context, state) {
            state.whenOrNull(
              /// ⏳ Loading
              loading: () {},

              /// ✅ Success
              success: () {
                context.showSuccessToast(S.of(context).authOtpSuccess);

                context.go(AppRoutes.uploadDocsPath, extra: {'userId': userId});
              },

              /// ❌ Error
              error: (message) {
                context.showErrorToast(message);
              },
            );
          },

          /// 👇 UI فقط
          child: VerificationViewBody(
            email: email,
            // phone: phoneNumber,
          ),
        ),
      ),
    );
  }
}
