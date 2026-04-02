import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/core/errors/api_failure.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/login_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/send_otp_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/login_usecase.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/send_otp_usecase.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;
  final SendOtpUseCase sendOtpUseCase;

  LoginCubit({
    required this.loginUseCase,
    required this.sendOtpUseCase,
  }) : super(const LoginState.initial());

  Future<void> login({
    required String email,
    required String password,
    required String fcmToken,
  }) async {
    emit(const LoginState.loading());

    final result = await loginUseCase(
      LoginParams(
        email: email.trim(),
        password: password,
        fcmToken: fcmToken,
      ),
    );

    result.fold(
      /// ❌ Failure
      (failure) {
        emit(LoginState.error(_mapFailureToMessage(failure)));
      },

      /// ✅ Success
      (data) async {
        final driver = data.user;

        if (driver.driverProfile.isVerified) {
          emit(LoginState.success(data));
        } else {
          // 🔥 Send OTP
          final otpResult = await sendOtpUseCase(
            SendOtpParams(
              email: driver.email,
              phone: driver.phoneNumber,
            ),
          );

          otpResult.fold(
            (failure) {
              emit(LoginState.error(_mapFailureToMessage(failure)));
            },
            (_) {
              emit(LoginState.requireOtp(
                driver.email,
                driver.phoneNumber,
              ));
            },
          );
        }
      },
    );
  }

  // 🔥 تحويل الفشل إلى رسالة
  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case const (ServerFailure):
        return failure.rawMessage ?? "Server error";
      case const (NetworkFailure):
        return "No internet connection";
      default:
        return "Something went wrong";
    }
  }
}