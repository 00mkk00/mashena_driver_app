import 'package:mashena_driver_app/feature/home/presentation/enums/driver_status_enum.dart';

class DriverStatusState {
  final DriverStatus status;
  final Duration? activeTripDuration;
  final bool isSosActive;

  const DriverStatusState({
    required this.status,
    this.activeTripDuration,
    this.isSosActive = false,
  });

  bool get isOnline => status != DriverStatus.offline;

  DriverStatusState copyWith({
    DriverStatus? status,
    Duration? activeTripDuration,
    bool? isSosActive,
  }) => DriverStatusState(
    status: status ?? this.status,
    activeTripDuration: activeTripDuration ?? this.activeTripDuration,
    isSosActive: isSosActive ?? this.isSosActive,
  );
}
