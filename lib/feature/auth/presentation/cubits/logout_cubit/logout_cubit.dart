import 'package:bloc/bloc.dart';
import 'package:mashena_driver_app/core/services/fcm_service.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/logout_use_case.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/logout_cubit/logout_state.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/delete_notification_token_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/usecases/delete_notification_token_use_case.dart';

class LogoutCubit extends Cubit<LogoutState> {
  final LogoutUseCase _logoutUseCase;
  final DeleteNotificationTokenUseCase _deleteNotificationTokenUseCase;

  LogoutCubit(
    this._logoutUseCase,
    this._deleteNotificationTokenUseCase,
  ) : super(LogoutState.initial());

  Future<void> logout() async {
    emit(const LogoutState.loading());

    try {
      final token = await FcmService.instance.getToken();
      if (token != null && token.isNotEmpty) {
        await _deleteNotificationTokenUseCase(
          DeleteNotificationTokenParams(token: token),
        );
        await FcmService.instance.deleteToken();
      }
    } catch (_) {
      // Ignore token delete error during logout to prevent blocking logout flow
    }

    final result = await _logoutUseCase.call();
    result.fold(
      (failure) => emit(
        LogoutState.failure(failure.rawMessage ?? 'something went wrong'),
      ),
      (_) async {
        emit(const LogoutState.success());
      },
    );
  }
}

