import 'package:mashena_driver_app/feature/home/presentation/enums/driver_status_enum.dart';

class DriverStatusState {
  final DriverStatus status;
  final Duration? activeTripDuration;
  final bool isSosActive;
  final String? errorMessage;

  const DriverStatusState({
    required this.status,
    this.activeTripDuration,
    this.isSosActive = false,
    this.errorMessage,
  });

  bool get isOnline => status != DriverStatus.offline;

  bool get isLoading =>
      status == DriverStatus.goingOnline || status == DriverStatus.goingOffline;

  DriverStatusState copyWith({
    DriverStatus? status,
    Duration? activeTripDuration,
    bool clearActiveTripDuration = false, // 👈 fix for nullable reset
    bool? isSosActive,
    String? errorMessage,
    bool clearErrorMessage = false, // 👈 fix for nullable reset
  }) => DriverStatusState(
    status: status ?? this.status,
    activeTripDuration: clearActiveTripDuration
        ? null
        : activeTripDuration ?? this.activeTripDuration,
    isSosActive: isSosActive ?? this.isSosActive,
    errorMessage: clearErrorMessage ? null : errorMessage ?? this.errorMessage,
  );
}
