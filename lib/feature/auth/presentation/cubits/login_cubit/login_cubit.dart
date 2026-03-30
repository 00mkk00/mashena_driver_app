import 'package:flutter_bloc/flutter_bloc.dart';
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

    try {
      final result = await loginUseCase(
        LoginParams(
          email: email,
          password: password,
          fcmToken: fcmToken,
        ),
      );

      final driver = result.user;

      if (driver.driverProfile.isVerified) {
        emit(LoginState.success(result));
      } else {
        await sendOtpUseCase(
          SendOtpParams(
            email: driver.email,
            phone: driver.phoneNumber,
          ),
        );

        emit(LoginState.requireOtp(
          driver.email,
          driver.phoneNumber,
        ));
      }
    } catch (e) {
      emit(LoginState.error(e.toString()));
    }
  }
}