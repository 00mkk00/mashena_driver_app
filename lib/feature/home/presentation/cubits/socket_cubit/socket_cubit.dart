import 'dart:async';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/app/config/env.dart';
import 'package:mashena_driver_app/core/constants/endpoints.dart';
import 'package:mashena_driver_app/core/network/token_manager.dart';
import 'package:mashena_driver_app/feature/home/data/mappers/shared_ride_mapper.dart';
import 'package:mashena_driver_app/feature/home/data/services/socket_service.dart';
import 'package:mashena_driver_app/feature/home/data/models/shared_ride_model.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/enums/driver_status_enum.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_cubit.dart';
import 'socket_state.dart';

class SocketCubit extends Cubit<SocketState> {
  final SocketService _service;
  final RideRequestCubit _rideRequestCubit;
  final DriverStatusCubit _driverStatusCubit;
  final SharedRideCubit? _sharedRideCubit;
  final TokenManager _tokenManager;

  StreamSubscription<DriverStatusState>? _driverStatusSubscription;

  /// Survives state resets (e.g., disconnect()); allows accept/reject after reconnect.
  int? _cachedDriverId;

  /// Tracks consecutive auth-refresh reconnect attempts to prevent infinite loops.
  int _authRetryCount = 0;
  static const int _maxAuthRetries = 3;

  /// Guards against concurrent token refresh attempts.
  bool _isRefreshingToken = false;

  SocketCubit({
    required SocketService service,
    required RideRequestCubit rideRequestCubit,
    required DriverStatusCubit driverStatusCubit,
    SharedRideCubit? sharedRideCubit,
    required TokenManager tokenManager,
  }) : _service = service,
       _rideRequestCubit = rideRequestCubit,
       _driverStatusCubit = driverStatusCubit,
       _sharedRideCubit = sharedRideCubit,
       _tokenManager = tokenManager,

       super(const SocketState()) {
    // ✅ Wire auto-reject callback — no circular dependency
    rideRequestCubit.onAutoReject = (rideRequestId) {
      _driverStatusCubit.rejectRide();
    };

    // ✅ Wire socket service reconnect request (e.g. from token refresh)
    _service.onReconnectRequested = (freshToken) {
      log('🔌 SocketService requested reconnect with fresh token');
      _authRetryCount = 0; // token was refreshed externally (e.g. by Dio)
      reconnect();
    };

    // ✅ Listen to driver status changes
    _listenToDriverStatus();
  }

  // ─── Driver Status Listener ────────────────────────────────────────────────

  /// Whether the driver status represents a confirmed-online state
  /// (i.e. the go-online API call succeeded). Transitional states like
  /// [DriverStatus.goingOnline] / [DriverStatus.goingOffline] are excluded
  /// so we don't open the socket before the server confirms the driver is online.
  bool _isConfirmedOnline(DriverStatusState s) {
    switch (s.status) {
      case DriverStatus.onlineWaiting:
      case DriverStatus.newRequest:
      case DriverStatus.tripAccepted:
      case DriverStatus.onTrip:
      case DriverStatus.sos:
      case DriverStatus.onSharedRide:
        return true;
      default:
        return false;
    }
  }

  void _listenToDriverStatus() {
    // Check current state immediately
    final currentStatus = _driverStatusCubit.state;
    if (_isConfirmedOnline(currentStatus) &&
        state.status == SocketStatus.disconnected) {
      connect();
    }

    // Listen for future changes
    _driverStatusSubscription = _driverStatusCubit.stream.listen((statusState) {
      if (_isConfirmedOnline(statusState) && !state.isConnected) {
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
    final rawToken = _tokenManager.accessToken ?? '';
    final accessToken = rawToken.isNotEmpty ? 'Bearer $rawToken' : '';
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
      final errorStr = error.toString();
      log('🔌 ❌ Socket connection error: $errorStr');

      // Detect "Unauthorized" errors from backend
      if (_isUnauthorizedError(error)) {
        _handleUnauthorizedError();
        return;
      }

      emit(state.copyWith(status: SocketStatus.error, errorMessage: errorStr));
    });

    _service.onDriverRegistered((data) {
      final driverId = _parseDriverId(data);
      if (driverId != null) {
        _cachedDriverId = driverId;
      } // persist across reconnects

      // ✅ Reset auth retry counter on successful registration
      _authRetryCount = 0;

      emit(
        state.copyWith(
          status: SocketStatus.registered,
          driverId: driverId ?? state.driverId ?? _cachedDriverId,
        ),
      );
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
      final rideRequestId = (data['rideRequestId'] is num)
          ? (data['rideRequestId'] as num).toInt()
          : (data['rideRequestId'] is String
                ? int.tryParse(data['rideRequestId'] as String)
                : null);
      final timeoutSec = (data['timeoutSec'] is num)
          ? (data['timeoutSec'] as num).toInt()
          : (data['timeoutSec'] is String
                ? int.tryParse(data['timeoutSec'] as String) ?? 10
                : 10);
      if (rideRequestId != null) {
        _rideRequestCubit.onRideOffer(
          rideRequestId: rideRequestId,
          timeoutSec: timeoutSec,
        );
        _driverStatusCubit.onNewRideRequest();
      }
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

    _service.onSharedRidePassengerJoined((data) {
      log('👥 shared_ride:passenger_joined data: $data');
      try {
        final payload =
            (data.containsKey('data') && data['data'] is Map<String, dynamic>)
            ? data['data'] as Map<String, dynamic>
            : ((data.containsKey('passenger') &&
                      data['passenger'] is Map<String, dynamic>)
                  ? data['passenger'] as Map<String, dynamic>
                  : data);
        final passengerModel = SharedRidePassengerModel.fromJson(payload);
        _sharedRideCubit?.onPassengerJoined(passengerModel.toEntity());
      } catch (e) {
        log('❌ error parsing shared_ride:passenger_joined: $e');
      }
    });

    _service.onSharedRidePassengerLeft((data) {
      log('👥 shared_ride:passenger_left data: $data');
      try {
        // Try top-level fields first
        dynamic rawId = data['passengerId'] ?? data['passenger_id'];

        // Fall back to the first passenger's id in ride.passengers
        if (rawId == null) {
          final ride = data['ride'];
          if (ride is Map<String, dynamic>) {
            final passengers = ride['passengers'];
            if (passengers is List && passengers.isNotEmpty) {
              final first = passengers.first;
              if (first is Map<String, dynamic>) {
                rawId = first['id'];
              }
            }
          }
        }

        // Last resort: use userId (matches riderProfileId in the cubit)
        rawId ??= data['userId'];

        int? passengerId;
        if (rawId is int) {
          passengerId = rawId;
        } else if (rawId is num) {
          passengerId = rawId.toInt();
        } else if (rawId is String) {
          passengerId = int.tryParse(rawId);
        }

        if (passengerId != null) {
          _sharedRideCubit?.onPassengerLeft(passengerId);
        } else {
          log(
            '⚠️ passengerId is null in shared_ride:passenger_left payload: $data',
          );
        }
      } catch (e) {
        log('❌ error parsing shared_ride:passenger_left: $e');
      }
    });
  }

  // ─── Unauthorized Error Handling ───────────────────────────────────────────

  /// Checks if the connection error is an "Unauthorized" error from the backend.
  bool _isUnauthorizedError(dynamic error) {
    final errorStr = error.toString().toLowerCase();
    if (errorStr.contains('unauthorized')) return true;

    // socket_io_client may pass error as a Map
    if (error is Map) {
      final message = (error['message'] ?? '').toString().toLowerCase();
      return message.contains('unauthorized');
    }
    return false;
  }

  /// Handles unauthorized socket connection error by refreshing the token
  /// and reconnecting with the new token.
  Future<void> _handleUnauthorizedError() async {
    // Guard: prevent concurrent refresh attempts
    if (_isRefreshingToken) {
      log('🔌 ⏳ Token refresh already in progress, skipping...');
      return;
    }

    // Guard: check retry limit
    if (_authRetryCount >= _maxAuthRetries) {
      log('🔌 ❌ Max auth retries ($_maxAuthRetries) exceeded. Giving up.');
      _authRetryCount = 0;
      emit(
        state.copyWith(
          status: SocketStatus.error,
          errorMessage: 'Session expired. Please login again.',
        ),
      );
      return;
    }

    _authRetryCount++;
    _isRefreshingToken = true;

    log(
      '🔌 🔄 Unauthorized error — refreshing token (attempt $_authRetryCount/$_maxAuthRetries)...',
    );
    emit(state.copyWith(status: SocketStatus.connecting, clearError: true));

    try {
      final refreshToken = await _tokenManager.getRefreshToken();
      if (refreshToken == null || refreshToken.isEmpty) {
        log('🔌 ❌ No refresh token available. Cannot refresh.');
        _isRefreshingToken = false;
        _authRetryCount = 0;
        emit(
          state.copyWith(
            status: SocketStatus.error,
            errorMessage: 'Session expired. Please login again.',
          ),
        );
        return;
      }

      // Use a clean Dio instance to avoid interceptor recursion
      final refreshDio = Dio(BaseOptions(baseUrl: Env.baseUrl));

      final response = await refreshDio.post(
        Endpoints.refresh,
        data: {'refreshToken': refreshToken},
      );

      final data = response.data;
      final newAccessToken = data['accessToken'] as String;
      final newRefreshToken = data['refreshToken'] as String?;

      // Save the new tokens
      await _tokenManager.saveTokens(
        accessToken: newAccessToken,
        refreshToken: newRefreshToken,
      );

      log('🔌 ✅ Token refreshed successfully. Reconnecting socket...');
      _isRefreshingToken = false;

      // Exponential backoff before reconnecting
      final delay = Duration(milliseconds: 500 * _authRetryCount);
      await Future.delayed(delay);

      // Reconnect with the fresh token
      if (!isClosed) {
        reconnect();
      }
    } catch (e) {
      log('🔌 ❌ Token refresh failed: $e');
      _isRefreshingToken = false;
      _authRetryCount = 0;
      if (!isClosed) {
        emit(
          state.copyWith(
            status: SocketStatus.error,
            errorMessage: 'Session expired. Please login again.',
          ),
        );
      }
    }
  }

  int? _parseDriverId(dynamic data) {
    if (data is! Map) return null;
    final raw =
        data['driverId'] ?? data['driver_id'] ?? data['id'] ?? data['userId'];
    if (raw == null) return null;
    if (raw is int) return raw;
    if (raw is num) return raw.toInt();
    if (raw is String) return int.tryParse(raw);
    return null;
  }

  void reconnect() {
    _service.offAll();
    _service.disconnect();
    connect();
  }

  // ─── Location ─────────────────────────────────────────────────────────────

  void updateLocation({required double lat, required double lng}) {
    if (!state.isRegistered) return;
    _service.updateLocation(lat: lat, lng: lng);
  }

  // ─── Offer response ────────────────────────────────────────────────────────

  bool acceptOffer(int rideRequestId) {
    // Prefer live state; fall back to cached value that survives disconnect()
    final driverId = state.driverId ?? _cachedDriverId;
    if (driverId == null) {
      log('⚠️ Cannot accept offer — driverId is null. Triggering reconnect.');
      if (!state.isConnected) reconnect();
      return false;
    }
    if (!_service.isConnected) {
      log(
        '⚠️ Cannot accept offer — socket not connected. Triggering reconnect.',
      );
      reconnect();
      return false;
    }
    return _service.respondToOffer(
      rideRequestId: rideRequestId,
      driverId: driverId,
      accepted: true,
    );
  }

  bool rejectOffer(int rideRequestId) {
    final driverId = state.driverId ?? _cachedDriverId;
    if (driverId == null) {
      log('⚠️ Cannot reject offer — driverId is null. Triggering reconnect.');
      if (!state.isConnected) reconnect();
      return false;
    }
    if (!_service.isConnected) {
      log(
        '⚠️ Cannot reject offer — socket not connected. Triggering reconnect.',
      );
      reconnect();
      return false;
    }
    return _service.respondToOffer(
      rideRequestId: rideRequestId,
      driverId: driverId,
      accepted: false,
    );
  }

  // ─── Disconnect ────────────────────────────────────────────────────────────

  void disconnect() {
    _service.offAll();
    _service.disconnect();
    _authRetryCount = 0;
    emit(const SocketState());
  }

  @override
  Future<void> close() {
    _service.onReconnectRequested = null;
    _driverStatusSubscription?.cancel();
    disconnect();
    return super.close();
  }
}
