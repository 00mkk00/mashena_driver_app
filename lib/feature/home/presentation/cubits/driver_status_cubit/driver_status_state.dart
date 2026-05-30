import 'package:mashena_driver_app/feature/home/presentation/enums/driver_status_enum.dart';

class DriverStatusState {
  final DriverStatus status;
  final Duration? activeTripDuration;
  final bool isSosActive;
  final String? errorMessage;

  // ── Radius ──────────────────────────────────────────────
  final int radiusKm;
  final bool isRadiusLoading;
  final String? radiusError;

  // ── Pending ride ─────────────────────────────────────────
  final int? pendingRideRequestId;
  final int? pendingTimeoutSec;

  const DriverStatusState({
    required this.status,
    this.activeTripDuration,
    this.isSosActive = false,
    this.errorMessage,
    this.radiusKm = 3,
    this.isRadiusLoading = false,
    this.radiusError,
    this.pendingRideRequestId,
    this.pendingTimeoutSec,
  });

  bool get isOnline => status != DriverStatus.offline;
  bool get isLoading =>
      status == DriverStatus.goingOnline || status == DriverStatus.goingOffline;

  DriverStatusState copyWith({
    DriverStatus? status,
    Duration? activeTripDuration,
    bool clearActiveTripDuration = false,
    bool? isSosActive,
    String? errorMessage,
    bool clearErrorMessage = false,
    int? radiusKm,
    bool? isRadiusLoading,
    String? radiusError,
    bool clearRadiusError = false,
    int? pendingRideRequestId,
    bool clearPendingRideRequestId = false,
    int? pendingTimeoutSec,
    bool clearPendingTimeoutSec = false,
  }) => DriverStatusState(
    status: status ?? this.status,
    activeTripDuration: clearActiveTripDuration
        ? null
        : activeTripDuration ?? this.activeTripDuration,
    isSosActive: isSosActive ?? this.isSosActive,
    errorMessage: clearErrorMessage ? null : errorMessage ?? this.errorMessage,
    radiusKm: radiusKm ?? this.radiusKm,
    isRadiusLoading: isRadiusLoading ?? this.isRadiusLoading,
    radiusError: clearRadiusError ? null : radiusError ?? this.radiusError,
    pendingRideRequestId: clearPendingRideRequestId
        ? null
        : pendingRideRequestId ?? this.pendingRideRequestId,
    pendingTimeoutSec: clearPendingTimeoutSec
        ? null
        : pendingTimeoutSec ?? this.pendingTimeoutSec,
  );
}