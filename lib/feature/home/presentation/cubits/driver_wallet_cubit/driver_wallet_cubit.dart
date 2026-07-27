import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/get_driver_wallet_summary_use_case.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_wallet_cubit/driver_wallet_state.dart';

class DriverWalletCubit extends Cubit<DriverWalletState> {
  final GetDriverWalletSummaryUseCase _getDriverWalletSummaryUseCase;

  DriverWalletCubit(this._getDriverWalletSummaryUseCase)
      : super(const DriverWalletState());

  Future<void> getWalletSummary({bool isRefresh = false}) async {
    if (!isRefresh) {
      emit(state.copyWith(status: DriverWalletStatus.loading, errorMessage: null));
    }

    final result = await _getDriverWalletSummaryUseCase();

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            status: DriverWalletStatus.failure,
            errorMessage: failure.rawMessage ?? 'Failed to load wallet summary',
          ),
        );
      },
      (summary) {
        emit(
          state.copyWith(
            status: DriverWalletStatus.success,
            walletSummary: summary,
            errorMessage: null,
          ),
        );
      },
    );
  }
}
