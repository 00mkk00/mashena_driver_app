import 'package:bloc/bloc.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/network/token_manager.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/logout_use_case.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/logout_cubit/logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  final LogoutUseCase _logoutUseCase;
  LogoutCubit(this._logoutUseCase) : super(LogoutState.initial());

  Future<void> logout() async {
    emit(const LogoutState.loading());
    final result = await _logoutUseCase.call();
    result.fold(
      (failure) => emit(
        LogoutState.failure(failure.rawMessage ?? 'something went wrong'),
      ),
      (_) async {
        await getIt<TokenManager>().clearTokens(); // clear stored token
        emit(const LogoutState.success());
      },
    );
  }
}
