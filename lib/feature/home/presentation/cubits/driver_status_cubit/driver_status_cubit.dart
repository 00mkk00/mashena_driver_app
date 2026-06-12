import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/go_online_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/update_radius_params.dart';
import 'package:mashena_driver_app/feature/home/domain/use_cases/go_offline_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/use_cases/go_online_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/use_cases/update_radius_use_case.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/enums/driver_status_enum.dart';

class DriverStatusCubit extends Cubit<DriverStatusState> {
  final GoOnlineUseCase goOnlineUseCase;
  final GoOfflineUseCase goOfflineUseCase;
  final UpdateDriverRadiusUseCase updateDriverRadiusUseCase;

  DriverStatusCubit(
    this.goOnlineUseCase,
    this.goOfflineUseCase,
    this.updateDriverRadiusUseCase, // 👈 new
  ) : super(const DriverStatusState(status: DriverStatus.offline));

  Future<void> updateRadius(int radiusKm) async {
    emit(state.copyWith(isRadiusLoading: true, clearRadiusError: true));

    final result = await updateDriverRadiusUseCase.call(
      UpdateDriverRadiusParams(radiusKm: radiusKm),
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isRadiusLoading: false,
          radiusError: _mapFailureToMessage(failure),
        ),
      ),
      (_) => emit(
        state.copyWith(
          isRadiusLoading: false,
          radiusKm: radiusKm, // ✅ persist confirmed value
          clearRadiusError: true,
        ),
      ),
    );
  }

  void onNewRideRequest() {
    if (state.status == DriverStatus.onlineWaiting) {
      emit(state.copyWith(status: DriverStatus.newRequest));
    }
  }

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

  void acceptRide() {
    emit(state.copyWith(status: DriverStatus.tripAccepted));
  }

  void rejectRide() {
    emit(state.copyWith(status: DriverStatus.onlineWaiting));
  }

  StreamSubscription<int>? _tripTimerSubscription;

  void startTrip() {
    emit(
      state.copyWith(
        status: DriverStatus.onTrip,
        activeTripDuration: Duration.zero,
      ),
    );
    _startTripTimer();
  }

  void _startTripTimer() {
    _tripTimerSubscription?.cancel();
    _tripTimerSubscription =
        Stream.periodic(const Duration(seconds: 1), (tick) => tick + 1).listen((
          seconds,
        ) {
          if (!isClosed) {
            emit(
              state.copyWith(activeTripDuration: Duration(seconds: seconds)),
            );
          }
        });
  }

  void endTrip() {
    _tripTimerSubscription?.cancel();
    _tripTimerSubscription = null;
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
