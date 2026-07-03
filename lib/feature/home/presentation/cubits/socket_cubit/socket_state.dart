enum SocketStatus {
  disconnected,
  connecting,
  connected,
  registered, // driver:registered received — ready for rides
  error,
}

class SocketState {
  final SocketStatus status;
  final int? driverId; // received from driver:registered
  final String? errorMessage;

  const SocketState({
    this.status = SocketStatus.disconnected,
    this.driverId,
    this.errorMessage,
  });

  bool get isRegistered => status == SocketStatus.registered;
  bool get isConnected =>
      status == SocketStatus.connected || status == SocketStatus.registered;

  SocketState copyWith({
    SocketStatus? status,
    int? driverId,
    String? errorMessage,
    bool clearError = false,
  }) => SocketState(
    status: status ?? this.status,
    driverId: driverId ?? this.driverId,
    errorMessage: clearError ? null : errorMessage ?? this.errorMessage,
  );
}
