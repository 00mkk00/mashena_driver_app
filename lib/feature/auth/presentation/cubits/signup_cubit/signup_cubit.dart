import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/core/storage/local_storage.dart';
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
        emit(SignupState.requireOtp(driver.email, driver.driverProfile.id));
      },
    );
  }

  String _mapFailureToMessage(Failure failure) {
    final savedLocale = getIt<LocalStorage>().getString('app_locale');
    final lang = (savedLocale != null && savedLocale.isNotEmpty)
        ? savedLocale
        : PlatformDispatcher.instance.locale.languageCode;
    final isAr = lang.startsWith('ar');

    if (failure.rawMessage != null && failure.rawMessage!.isNotEmpty) {
      return failure.rawMessage!;
    }

    switch (failure.code) {
      case FailureCode.server:
        return isAr ? 'خطأ في الخادم' : 'Server error';
      case FailureCode.networkConnection:
      case FailureCode.networkTimeout:
        return isAr ? 'لا يوجد اتصال بالإنترنت' : 'No internet connection';
      case FailureCode.validation:
        return isAr ? 'خطأ في البيانات المدخلة' : 'Validation error';
      case FailureCode.unauthorized:
        return isAr ? 'غير مصرح' : 'Unauthorized';
      default:
        return isAr ? 'حدث خطأ ما' : 'Something went wrong';
    }
  }
}
