import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/app/router/app_routes.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/utils/toast_helper.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/send_otp_usecase.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/verify_otp_usecase.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/verify_cubit/verify_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/verify_cubit/verify_state.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/verify_otp_view_body.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({
    super.key,
    required this.email,
    required this.phoneNumber,
  });

  final String email;
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => VerifyOtpCubit(
        verifyOtpUseCase: getIt<VerifyOtpUseCase>(),
        sendOtpUseCase: getIt<SendOtpUseCase>(),
      ),
      child: Scaffold(
        body: SafeArea(
          child: BlocListener<VerifyOtpCubit, VerifyOtpState>(
            listener: (context, state) {
              state.whenOrNull(
                /// ⏳ Loading
                loading: () {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },

                /// ✅ Success
                success: () {
                  if (Navigator.canPop(context)) Navigator.pop(context);

                  context.showSuccessToast(
                    S.of(context).authOtpSuccess,
                  );

                  context.go(AppRoutes.login);
                },

                /// ❌ Error
                error: (message) {
                  if (Navigator.canPop(context)) Navigator.pop(context);

                  context.showErrorToast(message);
                },
              );
            },

            /// 👇 UI فقط
            child: VerificationViewBody(
              email: email,
              phone: phoneNumber,
            ),
          ),
        ),
      ),
    );
  }
}