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
        // 1- when response 401 and message is "Your account is not verified"
        if (failure.statusCode == 401 &&
            (failure.rawMessage?.contains('not verified') == true ||
                failure.data?['errorCode'] == 'NOT_VERIFIED')) {
          final userId = failure.data?['userId'] as int?;

          final otpResult = await sendOtpUseCase(SendOtpParams(email: email));

          otpResult.fold(
            (failure) {
              emit(LoginState.error(_mapFailureToMessage(failure)));
            },
            (_) {
              emit(LoginState.requireOtp(userId: userId ?? 0, email: email));
            },
          );
        } else {
          emit(LoginState.error(_mapFailureToMessage(failure)));
        }
      },
      (data) async {
        final user = data.user;
        final info = user.driverApprovalInfo;

        // 1. Not verified → send OTP
        if (!info.isVerified) {
          final otpResult = await sendOtpUseCase(SendOtpParams(email: email));
          otpResult.fold(
            (failure) => emit(LoginState.error(_mapFailureToMessage(failure))),
            (_) => emit(LoginState.requireOtp(userId: user.id, email: email)),
          );
          return;
        }

        // 2. Verified but no approval request → show info snackbar
        if (!info.hasApprovalRequest) {
          emit(LoginState.needsUpload(data));
          // emit(
          //   const LoginState.approvalStatus('no_approval_request'),
          // );
          return;
        }

        // 3. Has approval request → check approvalStatus
        if (info.approvalRequestStatus ==
            DriverApprovalRequestStatus.approved) {
          emit(LoginState.success(data));
        } else {
          // 3b. Pending / rejected / other → show status snackbar
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
