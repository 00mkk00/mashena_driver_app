import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/go_online_params.dart';
import 'package:mashena_driver_app/feature/home/domain/use_cases/go_offline_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/use_cases/go_online_use_case.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/enums/driver_status_enum.dart';

class DriverStatusCubit extends Cubit<DriverStatusState> {
  final GoOnlineUseCase goOnlineUseCase;
  final GoOfflineUseCase goOfflineUseCase;

  DriverStatusCubit(this.goOnlineUseCase, this.goOfflineUseCase)
    : super(const DriverStatusState(status: DriverStatus.offline));

  void toggleOnlineStatus(GoOnlineParams params) {
    if (state.status == DriverStatus.offline) {
      _goOnline(params);
    } else {
      _goOffline();
    }
  }

  Future<void> _goOnline(GoOnlineParams params) async {
    emit(
      state.copyWith(status: DriverStatus.goingOnline, clearErrorMessage: true),
    );

    final result = await goOnlineUseCase.call(params);

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: DriverStatus.offline,
          errorMessage: _mapFailureToMessage(failure),
        ),
      ),
      (_) => emit(
        state.copyWith(
          status: DriverStatus.onlineWaiting,
          clearErrorMessage: true,
        ),
      ),
    );
  }

  Future<void> _goOffline() async {
    final previousStatus = state.status;
    emit(
      state.copyWith(
        status: DriverStatus.goingOffline,
        clearErrorMessage: true,
      ),
    );

    final result = await goOfflineUseCase.call();

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: previousStatus,
          errorMessage: _mapFailureToMessage(failure),
        ),
      ),
      (_) => emit(
        state.copyWith(status: DriverStatus.offline, clearErrorMessage: true),
      ),
    );
  }

  void onNewRideRequest() {
    if (state.status == DriverStatus.onlineWaiting) {
      emit(state.copyWith(status: DriverStatus.newRequest));
    }
  }

  void acceptRide() {
    emit(state.copyWith(status: DriverStatus.tripAccepted));
  }

  void rejectRide() {
    emit(state.copyWith(status: DriverStatus.onlineWaiting));
  }

  void startTrip() {
    emit(
      state.copyWith(
        status: DriverStatus.onTrip,
        activeTripDuration: Duration.zero,
      ),
    );
  }

  void endTrip() {
    emit(
      state.copyWith(
        status: DriverStatus.onlineWaiting,
        clearActiveTripDuration: true,
      ),
    );
  }

  void triggerSos() {
    emit(state.copyWith(isSosActive: true));
    // TODO: Integrate emergency services API / Firebase alert
  }

  void dismissSos() {
    emit(state.copyWith(isSosActive: false));
  }

  String _mapFailureToMessage(Failure failure) {
    if (failure.code == FailureCode.networkConnection ||
        failure.code == FailureCode.networkTimeout) {
      return "No internet connection";
    }
    return failure.rawMessage ?? "Server error";
  }
}
