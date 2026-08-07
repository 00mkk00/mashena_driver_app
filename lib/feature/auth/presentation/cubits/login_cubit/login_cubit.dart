import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/auth/data/enums/approval_status_enum.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/login_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/send_otp_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/login_usecase.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/send_otp_usecase.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;
  final SendOtpUseCase sendOtpUseCase;

  LoginCubit({required this.loginUseCase, required this.sendOtpUseCase})
    : super(const LoginState.initial());

  Future<void> login({
    required String email,
    required String password,
    required String fcmToken,
  }) async {
    emit(const LoginState.loading());

    final result = await loginUseCase(
      LoginParams(email: email, password: password, fcmToken: fcmToken),
    );

    await result.fold(
      (failure) async {
        log(failure.rawMessage ?? '');

        // Handle 401 responses that carry approval/verification info in the body
        if (failure.statusCode == 401 && failure.data != null) {
          final data = failure.data!;
          final isContactVerified = data['isContactVerified'] as bool? ?? false;
          final hasApprovalRequest =
              data['hasApprovalRequest'] as bool? ?? false;
          final approvalRequestStatus =
              data['approvalRequestStatus'] as String?;
          final userId = data['userId'] as int? ?? 0;

          if (!isContactVerified) {
            // Contact not verified → trigger OTP flow
            final otpResult = await sendOtpUseCase(SendOtpParams(email: email));
            otpResult.fold(
              (f) => emit(LoginState.error(_mapFailureToMessage(f))),
              (_) => emit(LoginState.requireOtp(userId: userId, email: email)),
            );
          } else if (!hasApprovalRequest) {
            // Verified but no documents uploaded → needs upload
            emit(LoginState.needsUpload(null));
          } else {
            // Has a request → show approval status (pending / rejected / etc.)
            emit(LoginState.approvalStatus(approvalRequestStatus ?? ''));
          }
          return;
        }

        emit(LoginState.error(_mapFailureToMessage(failure)));
      },
      (data) async {
        final info = data.user.driverApprovalInfo;

        // On success the account is verified & approved → go home
        if (info.approvalRequestStatus ==
            DriverApprovalRequestStatus.approved) {
          emit(LoginState.success(data));
        } else {
          // Approved login but approval still pending/rejected → show status
          emit(
            LoginState.approvalStatus(info.approvalRequestStatus?.name ?? ''),
          );
        }
      },
    );
  }

  String _mapFailureToMessage(Failure failure) {
    if (failure.code == FailureCode.networkConnection ||
        failure.code == FailureCode.networkTimeout) {
      return "No internet connection";
    }
    return failure.rawMessage ?? "Server error";
  }
}
