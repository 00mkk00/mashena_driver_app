import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/core/errors/api_failure.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/create_driver_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/send_otp_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/signup_usecase.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/send_otp_usecase.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/signup_cubit/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupUseCase signupUseCase;
  final SendOtpUseCase sendOtpUseCase;

  SignupCubit({
    required this.signupUseCase,
    required this.sendOtpUseCase,
  }) : super(const SignupState.initial());

  Future<void> signup({
    required String fullName,
    required String email,
    required String phoneNumber,
    required String password,
    required String city,
  }) async {
    emit(const SignupState.loading());

    final params = CreateDriverParams(
      fullName: fullName,
      email: email.trim(),
      phoneNumber: phoneNumber,
      password: password,
      city: city,
    );

    final result = await signupUseCase(params);

    result.fold(
      (failure) {
        emit(SignupState.error(_mapFailureToMessage(failure)));
      },

      /// ✅ Success
      (driver) async {
        final otpResult = await sendOtpUseCase(
          SendOtpParams(
            email: driver.email,
            phone: driver.phoneNumber,
          ),
        );

        otpResult.fold(
          (failure) {
            emit(SignupState.error(_mapFailureToMessage(failure)));
          },
          (_) {
            emit(SignupState.requireOtp(
              driver.email,
              driver.phoneNumber,
            ));
          },
        );
      },
    );
  }

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