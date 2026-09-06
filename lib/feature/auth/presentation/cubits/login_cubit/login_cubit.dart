import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/core/services/fcm_service.dart';
import 'package:mashena_driver_app/core/storage/local_storage.dart';
import 'package:mashena_driver_app/feature/auth/data/enums/approval_status_enum.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/login_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/send_otp_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/login_usecase.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/send_otp_usecase.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/login_cubit/login_state.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/register_notification_token_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/usecases/register_notification_token_use_case.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;
  final SendOtpUseCase sendOtpUseCase;
  final RegisterNotificationTokenUseCase registerNotificationTokenUseCase;

  LoginCubit({
    required this.loginUseCase,
    required this.sendOtpUseCase,
    required this.registerNotificationTokenUseCase,
  }) : super(const LoginState.initial());

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

        // Handle 401 responses that carry approval/verification info in the body.
        // A plain "Invalid credentials" 401 only has message/error/statusCode —
        // no isContactVerified key — so we must check for it explicitly.
        if (failure.statusCode == 401 &&
            failure.data != null &&
            failure.data!.containsKey('isContactVerified')) {
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
            log(userId.toString());
            emit(LoginState.needsUpload(userId: userId));
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

        if (fcmToken.isNotEmpty) {
          final deviceId = await FcmService.instance.getDeviceId();
          await registerNotificationTokenUseCase(
            RegisterNotificationTokenParams(
              token: fcmToken,
              platform: Platform.isAndroid ? 'android' : 'ios',
              deviceId: deviceId,
            ),
          );
        }

        // On success the account is verified & approved → go home
        if (info.approvalRequestStatus ==
            DriverApprovalRequestStatus.approved) {
          emit(LoginState.success(data));
        } else if (!info.hasApprovalRequest) {
          emit(LoginState.needsUpload(userId: data.user.id));
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
    final savedLocale = getIt<LocalStorage>().getString('app_locale');
    final lang = (savedLocale != null && savedLocale.isNotEmpty)
        ? savedLocale
        : PlatformDispatcher.instance.locale.languageCode;
    final isAr = lang.startsWith('ar');

    if (failure.code == FailureCode.networkConnection ||
        failure.code == FailureCode.networkTimeout) {
      return isAr ? 'لا يوجد اتصال بالإنترنت' : 'No internet connection';
    }
    return failure.rawMessage ?? (isAr ? 'خطأ في الخادم' : 'Server error');
  }
}
