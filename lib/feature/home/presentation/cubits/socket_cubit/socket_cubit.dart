import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/home/data/services/socket_service.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'socket_state.dart';

class SocketCubit extends Cubit<SocketState> {
  final SocketService _service;
  final DriverStatusCubit _driverStatusCubit;

  SocketCubit({
    required SocketService service,
    required DriverStatusCubit driverStatusCubit,
  }) : _service = service,
       _driverStatusCubit = driverStatusCubit,
       super(const SocketState());

  // ─── Connect ───────────────────────────────────────────────────────────────

  void connect({required String accessToken}) {
    emit(state.copyWith(status: SocketStatus.connecting, clearError: true));

    _service.connect(accessToken: accessToken);

    _service.onConnect(() {
      emit(state.copyWith(status: SocketStatus.connected));
      _service.registerDriver(); // auto-register on connect
    });

    _service.onDisconnect(() {
      emit(state.copyWith(status: SocketStatus.disconnected));
    });

    _service.onConnectError((error) {
      emit(
        state.copyWith(
          status: SocketStatus.error,
          errorMessage: error.toString(),
        ),
      );
    });

    _service.onDriverRegistered((data) {
      final driverId = data['driverId'] as int?;
      emit(state.copyWith(status: SocketStatus.registered, driverId: driverId));
    });

    _service.onDriverRegisterError((data) {
      emit(
        state.copyWith(
          status: SocketStatus.error,
          errorMessage: data['message'] as String?,
        ),
      );
    });

    _service.onRideOffer((data) {
      // Forward ride offer to DriverStatusCubit
      _driverStatusCubit.onNewRideRequest(
        rideRequestId: data['rideRequestId'] as int,
        timeoutSec: data['timeoutSec'] as int,
      );
      log(data['rideRequestId']);
    });

    _service.onLocationError((data) {
      // Non-fatal — just log or surface lightly
      // MapCubit can handle this via SocketCubit if needed
    });
  }

  // ─── Emit location (called from MapCubit) ─────────────────────────────────

  void updateLocation({required double lat, required double lng}) {
    if (!state.isRegistered) return;
    _service.updateLocation(lat: lat, lng: lng);
  }

  // ─── Accept / Reject offer ─────────────────────────────────────────────────

  void acceptOffer(int rideRequestId) {
    final driverId = state.driverId;
    if (driverId == null) return;
    _service.respondToOffer(
      rideRequestId: rideRequestId,
      driverId: driverId,
      accepted: true,
    );
  }

  void rejectOffer(int rideRequestId) {
    final driverId = state.driverId;
    if (driverId == null) return;
    _service.respondToOffer(
      rideRequestId: rideRequestId,
      driverId: driverId,
      accepted: false,
    );
  }

  // ─── Disconnect ────────────────────────────────────────────────────────────

  void disconnect() {
    _service.offAll();
    _service.disconnect();
    emit(const SocketState());
  }

  @override
  Future<void> close() {
    disconnect();
    return super.close();
  }
}
