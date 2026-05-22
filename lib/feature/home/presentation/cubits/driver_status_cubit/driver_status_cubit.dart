import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/enums/driver_status_enum.dart';

class DriverStatusCubit extends Cubit<DriverStatusState> {
  DriverStatusCubit()
    : super(const DriverStatusState(status: DriverStatus.offline));

  void toggleOnlineStatus() {
    if (state.status == DriverStatus.offline) {
      _goOnline();
    } else {
      _goOffline();
    }
  }

  Future<void> _goOnline() async {
    emit(state.copyWith(status: DriverStatus.goingOnline));
    // Simulates network call delay — replace with actual API call
    await Future.delayed(const Duration(milliseconds: 1200));
    emit(state.copyWith(status: DriverStatus.onlineWaiting));
  }

  void _goOffline() {
    emit(state.copyWith(status: DriverStatus.offline));
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
        activeTripDuration: null,
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
}
