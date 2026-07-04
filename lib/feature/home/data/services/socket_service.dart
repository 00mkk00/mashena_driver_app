import 'package:flutter/foundation.dart';
import 'package:mashena_driver_app/app/config/env.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/network/token_manager.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

typedef JsonCallback = void Function(Map<String, dynamic> data);

void _log(String message) {
  if (kDebugMode) debugPrint('🔌 [Socket] $message');
}

class SocketService {
  io.Socket? _socket;

  // ─── Connect ──────────────────────────────────────────────────────────────

  void connect() {
    _log('Connecting to ${Env.socketUrl} ...');

    _socket = io.io(
      Env.socketUrl,
      io.OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .setAuth({'token': getIt.get<TokenManager>().accessToken})
          .build(),
    );

    _socket!.connect();
  }

  void reconnect() {
  _log('Reconnecting with fresh token...');
  _socket?.off('driver:registered');
  _socket?.off('driver:register:error');
  _socket?.off('ride:offer');
  _socket?.off('driver:update-location:error');
  _socket?.disconnect();
  _socket?.dispose();
  _socket = null;
  connect();
}

  void disconnect() {
    _log('Disconnecting...');
    _socket?.disconnect();
    _socket?.dispose();
    _socket = null;
    _log('Disconnected and disposed.');
  }

  bool get isConnected => _socket?.connected ?? false;

  // ─── Emitters ─────────────────────────────────────────────────────────────

  void registerDriver() {
    _log('Emitting → driver:register');
    _emit('driver:register');
  }

  void updateLocation({required double lat, required double lng}) {
    _log('Emitting → driver:update-location { lat: $lat, lng: $lng }');
    _emit('driver:update-location', {'lat': lat, 'lng': lng});
  }

  void respondToOffer({
    required int rideRequestId,
    required int driverId,
    required bool accepted,
  }) {
    _log(
      'Emitting → driver:offer:response { rideRequestId: $rideRequestId, driverId: $driverId, accepted: $accepted }',
    );
    _emit('driver:offer:response', {
      'rideRequestId': rideRequestId,
      'driverId': driverId,
      'accepted': accepted,
    });
  }

  // ─── Listeners ────────────────────────────────────────────────────────────

  void onConnect(void Function() handler) {
    _socket?.onConnect((_) {
      _log('✅ Connected — socketId: ${_socket?.id}');
      handler();
    });
  }

  void onDisconnect(void Function() handler) {
    _socket?.onDisconnect((_) {
      _log('❌ Disconnected');
      handler();
    });
  }

  void onConnectError(void Function(dynamic error) handler) {
    _socket?.onConnectError((data) {
      _log('❌ Connection error: $data');
      handler(data);
    });
  }

  void onDriverRegistered(JsonCallback handler) {
    _on('driver:registered', (data) {
      _log('← driver:registered $data');
      handler(data);
    });
  }

  void onDriverRegisterError(JsonCallback handler) {
    _on('driver:register:error', (data) {
      _log('← driver:register:error $data');
      handler(data);
    });
  }

  void onRideOffer(JsonCallback handler) {
    _on('ride:offer', (data) {
      _log('← ride:offer $data');
      handler(data);
    });
  }

  void onLocationError(JsonCallback handler) {
    _on('driver:update-location:error', (data) {
      _log('← driver:update-location:error $data');
      handler(data);
    });
  }

  // ─── Remove listeners ─────────────────────────────────────────────────────

  void offAll() {
    _log('Removing all listeners...');
    _socket?.off('driver:registered');
    _socket?.off('driver:register:error');
    _socket?.off('ride:offer');
    _socket?.off('driver:update-location:error');
  }

  // ─── Helpers ──────────────────────────────────────────────────────────────

  void _emit(String event, [dynamic data]) {
    if (_socket?.connected == true) {
      data != null ? _socket!.emit(event, data) : _socket!.emit(event);
    } else {
      _log('⚠️ Cannot emit "$event" — socket not connected');
    }
  }

  void _on(String event, JsonCallback handler) {
    _socket?.on(event, (data) {
      if (data is Map<String, dynamic>) {
        handler(data);
      } else {
        _log(
          '⚠️ Unexpected data type for "$event": ${data.runtimeType} — $data',
        );
      }
    });
  }
}
