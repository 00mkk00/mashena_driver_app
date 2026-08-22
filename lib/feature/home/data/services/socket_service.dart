import 'package:flutter/foundation.dart';
import 'package:mashena_driver_app/app/config/env.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

typedef JsonCallback = void Function(Map<String, dynamic> data);

void _log(String message) {
  if (kDebugMode) debugPrint('🔌 [Socket] $message');
}

class SocketService {
  io.Socket? _socket;
  void Function(String accessToken)? onReconnectRequested;

  // ─── Connect ──────────────────────────────────────────────────────────────

  void connect({required String accessToken}) {
    _log('Connecting to ${Env.socketUrl} ...');

    _socket = io.io(
      Env.socketUrl,
      io.OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .enableForceNewConnection()
          .setAuth({'token': accessToken})
          .build(),
    );

    _socket!.connect();
  }

  void reconnect({required String accessToken}) {
    _log('Reconnecting with fresh token...');
    if (onReconnectRequested != null) {
      onReconnectRequested!(accessToken);
    } else {
      _socket?.off('driver:registered');
      _socket?.off('driver:register:error');
      _socket?.off('ride:offer');
      _socket?.off('driver:offer:reconsider:success');
      _socket?.off('driver:offer:reconsider:error');
      _socket?.off('driver:update-location:error');
      _socket?.off('trip:cancelled');
      _socket?.off('shared_ride:passenger_joined');
      _socket?.off('shared_ride:passenger_left');
      _socket?.disconnect();
      _socket?.dispose();
      _socket = null;
      connect(accessToken: accessToken);
    }
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

  bool respondToOffer({
    required int rideRequestId,
    required int driverId,
    required bool accepted,
  }) {
    _log(
      'Emitting → driver:offer:response { rideRequestId: $rideRequestId, driverId: $driverId, accepted: $accepted }',
    );
    return _emit('driver:offer:response', {
      'rideRequestId': rideRequestId,
      'driverId': driverId,
      'accepted': accepted,
    });
  }

  bool reconsiderOffer({required int rideRequestId}) {
    _log('Emitting → driver:offer:reconsider { rideRequestId: $rideRequestId }');
    return _emit('driver:offer:reconsider', {
      'rideRequestId': rideRequestId,
    });
  }

  // ─── Listeners ────────────────────────────────────────────────────────────

  void onConnect(void Function() handler) {
    _socket?.onConnect((_) {
      _log('✅ Connected — socketId: ${_socket?.id}');
      // Guard: only proceed if the socket is truly connected with a valid ID.
      // socket_io_client may fire onConnect before the server auth handshake
      // completes, resulting in a null socketId on rejected connections.
      if (_socket?.id == null || _socket?.connected != true) {
        _log('⚠️ onConnect fired but socket not fully ready — ignoring');
        return;
      }
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

  void onTripCancelled(JsonCallback handler) {
    _on('trip:cancelled', (data) {
      _log('← trip:cancelled $data');
      handler(data);
    });
  }

  void onOfferReconsiderSuccess(JsonCallback handler) {
    _on('driver:offer:reconsider:success', (data) {
      _log('← driver:offer:reconsider:success $data');
      handler(data);
    });
  }

  void onOfferReconsiderError(JsonCallback handler) {
    _on('driver:offer:reconsider:error', (data) {
      _log('← driver:offer:reconsider:error $data');
      handler(data);
    });
  }

  void onSharedRidePassengerJoined(JsonCallback handler) {
    _on('shared_ride:passenger_joined', (data) {
      _log('← shared_ride:passenger_joined $data');
      handler(data);
    });
  }

  void onSharedRidePassengerLeft(JsonCallback handler) {
    _on('shared_ride:passenger_left', (data) {
      _log('← shared_ride:passenger_left $data');
      handler(data);
    });
  }

  // ─── Remove listeners ─────────────────────────────────────────────────────

  void offAll() {
    _log('Removing all listeners...');
    _socket?.off('driver:registered');
    _socket?.off('driver:register:error');
    _socket?.off('ride:offer');
    _socket?.off('driver:offer:reconsider:success');
    _socket?.off('driver:offer:reconsider:error');
    _socket?.off('driver:update-location:error');
    _socket?.off('trip:cancelled');
    _socket?.off('shared_ride:passenger_joined');
    _socket?.off('shared_ride:passenger_left');
  }

  // ─── Helpers ──────────────────────────────────────────────────────────────

  bool _emit(String event, [dynamic data]) {
    if (_socket?.connected == true) {
      data != null ? _socket!.emit(event, data) : _socket!.emit(event);
      return true;
    } else {
      _log('⚠️ Cannot emit "$event" — socket not connected');
      return false;
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
