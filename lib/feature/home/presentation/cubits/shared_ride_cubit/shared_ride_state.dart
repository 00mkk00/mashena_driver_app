import 'package:mashena_driver_app/feature/home/domain/entities/shared_ride_entity.dart';

enum SharedRideStatus {
  idle,
  creating,
  lobby,
  boarding,
  liveTrip,
  summary,
  cancelled,
}

class SharedRideState {
  final SharedRideStatus status;
  final SharedRideEntity? ride;
  final String? errorMessage;

  // Per-API loading flags
  final bool isCreating;
  final bool isReadying;
  final bool isStarting;
  final bool isCompleting;
  final bool isCancelling;

  // Per-passenger action loading sets (passenger ID)
  final Set<int> checkingInPassengers;
  final Set<int> onBoardingPassengers;
  final Set<int> droppingOffPassengers;
  final Set<int> removingPassengers;

  const SharedRideState({
    this.status = SharedRideStatus.idle,
    this.ride,
    this.errorMessage,
    this.isCreating = false,
    this.isReadying = false,
    this.isStarting = false,
    this.isCompleting = false,
    this.isCancelling = false,
    this.checkingInPassengers = const {},
    this.onBoardingPassengers = const {},
    this.droppingOffPassengers = const {},
    this.removingPassengers = const {},
  });

  SharedRideState copyWith({
    SharedRideStatus? status,
    SharedRideEntity? ride,
    bool clearRide = false,
    String? errorMessage,
    bool clearErrorMessage = false,
    bool? isCreating,
    bool? isReadying,
    bool? isStarting,
    bool? isCompleting,
    bool? isCancelling,
    Set<int>? checkingInPassengers,
    Set<int>? onBoardingPassengers,
    Set<int>? droppingOffPassengers,
    Set<int>? removingPassengers,
  }) {
    return SharedRideState(
      status: status ?? this.status,
      ride: clearRide ? null : (ride ?? this.ride),
      errorMessage: clearErrorMessage ? null : (errorMessage ?? this.errorMessage),
      isCreating: isCreating ?? this.isCreating,
      isReadying: isReadying ?? this.isReadying,
      isStarting: isStarting ?? this.isStarting,
      isCompleting: isCompleting ?? this.isCompleting,
      isCancelling: isCancelling ?? this.isCancelling,
      checkingInPassengers: checkingInPassengers ?? this.checkingInPassengers,
      onBoardingPassengers: onBoardingPassengers ?? this.onBoardingPassengers,
      droppingOffPassengers: droppingOffPassengers ?? this.droppingOffPassengers,
      removingPassengers: removingPassengers ?? this.removingPassengers,
    );
  }
}
