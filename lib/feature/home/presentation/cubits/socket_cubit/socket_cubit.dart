import 'dart:async';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/core/network/token_manager.dart';
import 'package:mashena_driver_app/feature/home/data/services/socket_service.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_cubit.dart';
import 'socket_state.dart';

class SocketCubit extends Cubit<SocketState> {
  final SocketService _service;
  final RideRequestCubit _rideRequestCubit;
  final DriverStatusCubit _driverStatusCubit;
  final TokenManager _tokenManager;

  StreamSubscription<DriverStatusState>? _driverStatusSubscription;

  SocketCubit({
    required SocketService service,
    required RideRequestCubit rideRequestCubit,
    required DriverStatusCubit driverStatusCubit,
    required TokenManager tokenManager,
  }) : _service = service,
       _rideRequestCubit = rideRequestCubit,
       _driverStatusCubit = driverStatusCubit,
       _tokenManager = tokenManager,

       super(const SocketState()) {
    // ✅ Wire auto-reject callback — no circular dependency
    rideRequestCubit.onAutoReject = (rideRequestId) {
      rejectOffer(rideRequestId);
    };

    // ✅ Listen to driver status changes
    _listenToDriverStatus();
  }

  // ─── Driver Status Listener ────────────────────────────────────────────────

  void _listenToDriverStatus() {
    // Check current state immediately
    final currentStatus = _driverStatusCubit.state;
    if (currentStatus.isOnline && state.status == SocketStatus.disconnected) {
      connect();
    }

    // Listen for future changes
    _driverStatusSubscription = _driverStatusCubit.stream.listen((statusState) {
      if (statusState.isOnline && !state.isConnected) {
        log('🔌 Driver went online → connecting socket');
        connect();
      } else if (!statusState.isOnline && state.isConnected) {
        log('🔌 Driver went offline → disconnecting socket');
        disconnect();
      }
    });
  }

  // ─── Connect ───────────────────────────────────────────────────────────────

  void connect() {
    final accessToken = _tokenManager.accessToken ?? '';
    emit(state.copyWith(status: SocketStatus.connecting, clearError: true));

    _service.connect(accessToken: accessToken);

    _service.onConnect(() {
      emit(state.copyWith(status: SocketStatus.connected));
      _service.registerDriver();
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
      log('🚗 ride:offer received: $data');
      _rideRequestCubit.onRideOffer(
        // ✅ RideRequestCubit owns this
        rideRequestId: data['rideRequestId'] as int,
        timeoutSec: data['timeoutSec'] as int,
      );
      _driverStatusCubit.onNewRideRequest();
    });

    _service.onLocationError((data) {
      log('⚠️ location error: $data');
    });

    _service.onTripCancelled((data) {
      final cancelledBy = (data['cancelledBy'] as String?) ?? 'unknown';
      log('🚫 trip:cancelled by $cancelledBy — data: $data');
      _driverStatusCubit.onTripCancelledByServer();
      _rideRequestCubit.onTripCancelledByServer(cancelledBy: cancelledBy);
    });
  }

  void reconnect() {
    final accessToken = _tokenManager.accessToken ?? '';
    _service.reconnect(accessToken: accessToken);
    emit(state.copyWith(status: SocketStatus.connecting, clearError: true));
  }
  // ─── Location ─────────────────────────────────────────────────────────────

  void updateLocation({required double lat, required double lng}) {
    if (!state.isRegistered) return;
    _service.updateLocation(lat: lat, lng: lng);
  }

  // ─── Offer response ────────────────────────────────────────────────────────

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
    _driverStatusSubscription?.cancel();
    disconnect();
    return super.close();
  }
}
