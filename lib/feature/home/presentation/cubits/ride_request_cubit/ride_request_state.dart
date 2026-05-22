enum RideRequestStatus { idle, incoming, accepted, rejected, expired }

class RideRequestState {
  final RideRequestStatus status;
  final int? countdownSeconds; // countdown before auto-reject
  final bool isBottomSheetExpanded;

  const RideRequestState({
    this.status = RideRequestStatus.idle,
    this.countdownSeconds,
    this.isBottomSheetExpanded = false,
  });

  RideRequestState copyWith({
    RideRequestStatus? status,
    int? countdownSeconds,
    bool? isBottomSheetExpanded,
  }) => RideRequestState(
    status: status ?? this.status,
    countdownSeconds: countdownSeconds ?? this.countdownSeconds,
    isBottomSheetExpanded: isBottomSheetExpanded ?? this.isBottomSheetExpanded,
  );
}
