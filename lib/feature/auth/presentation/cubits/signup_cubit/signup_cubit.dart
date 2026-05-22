import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/create_driver_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/signup_usecase.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/signup_cubit/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupUseCase signupUseCase;

  SignupCubit({required this.signupUseCase})
    : super(const SignupState.initial());

  Future<void> signup(CreateDriverParams params) async {
    emit(const SignupState.loading());

    final result = await signupUseCase.call(params);

    result.fold(
      (failure) {
        log(failure.rawMessage.toString());
        emit(SignupState.error(_mapFailureToMessage(failure)));
      },

      /// ✅ Success
      (driver) {
        emit(SignupState.requireOtp(driver.email, driver.id));
      },
    );
  }

  String _mapFailureToMessage(Failure failure) {
    if (failure.rawMessage != null && failure.rawMessage!.isNotEmpty) {
      return failure.rawMessage!;
    }

    switch (failure.code) {
      case FailureCode.server:
        return "Server error";
      case FailureCode.networkConnection:
      case FailureCode.networkTimeout:
        return "No internet connection";
      case FailureCode.validation:
        return "Validation error";
      case FailureCode.unauthorized:
        return "Unauthorized";
      default:
        return "Something went wrong";
    }
  }
}
