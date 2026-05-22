import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/core/network/token_manager.dart';
import 'package:mashena_driver_app/feature/auth/data/enums/approval_status_enum.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/login_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/send_otp_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/login_usecase.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/send_otp_usecase.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;
  final SendOtpUseCase sendOtpUseCase;
  final TokenManager tokenManager;

  LoginCubit({
    required this.loginUseCase,
    required this.sendOtpUseCase,
    required this.tokenManager,
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
        // Store the token
        await tokenManager.saveTokens(accessToken: data.accessToken);

        final user = data.user;
        final info = user.driverApprovalInfo;

        if (info.isVerified) {
          // 3- when user hasApprovalRequest
          if (info.hasApprovalRequest) {
            if (info.approvalRequestStatus ==
                DriverApprovalRequestStatus.approved) {
              // when state is approved navigate user to home page
              emit(LoginState.success(data));
            } else {
              // give him toast whit message depending on approvalRequestStatus
              emit(
                LoginState.approvalStatus(
                  info.approvalRequestStatus?.name ?? 'pending',
                ),
              );
            }
          } else {
            // 2- when user is verified and no approval request, navigate user to upload page
            emit(LoginState.needsUpload(data));
          }
        } else {
          // Fallback to OTP if not verified (though usually handled by 401)
          emit(LoginState.requireOtp(userId: user.id, email: email));
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
