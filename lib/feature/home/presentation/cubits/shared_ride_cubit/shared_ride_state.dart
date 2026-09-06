import 'package:mashena_driver_app/feature/home/domain/entities/passenger_pool_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/shared_ride_entity.dart';

enum SharedRideStatus {
  idle,
  creating,
  availablePools,
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

  // Available Passenger Pools
  final List<PassengerPoolEntity> availablePools;
  final bool isLoadingPools;
  final int? acceptingPoolId;
  final String? poolsErrorMessage;

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
    this.availablePools = const [],
    this.isLoadingPools = false,
    this.acceptingPoolId,
    this.poolsErrorMessage,
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
    List<PassengerPoolEntity>? availablePools,
    bool? isLoadingPools,
    int? acceptingPoolId,
    bool clearAcceptingPoolId = false,
    String? poolsErrorMessage,
    bool clearPoolsErrorMessage = false,
    Set<int>? checkingInPassengers,
    Set<int>? onBoardingPassengers,
    Set<int>? droppingOffPassengers,
    Set<int>? removingPassengers,
  }) {
    return SharedRideState(
      status: status ?? this.status,
      ride: clearRide ? null : (ride ?? this.ride),
      errorMessage:
          clearErrorMessage ? null : (errorMessage ?? this.errorMessage),
      isCreating: isCreating ?? this.isCreating,
      isReadying: isReadying ?? this.isReadying,
      isStarting: isStarting ?? this.isStarting,
      isCompleting: isCompleting ?? this.isCompleting,
      isCancelling: isCancelling ?? this.isCancelling,
      availablePools: availablePools ?? this.availablePools,
      isLoadingPools: isLoadingPools ?? this.isLoadingPools,
      acceptingPoolId: clearAcceptingPoolId
          ? null
          : (acceptingPoolId ?? this.acceptingPoolId),
      poolsErrorMessage: clearPoolsErrorMessage
          ? null
          : (poolsErrorMessage ?? this.poolsErrorMessage),
      checkingInPassengers: checkingInPassengers ?? this.checkingInPassengers,
      onBoardingPassengers: onBoardingPassengers ?? this.onBoardingPassengers,
      droppingOffPassengers:
          droppingOffPassengers ?? this.droppingOffPassengers,
      removingPassengers: removingPassengers ?? this.removingPassengers,
    );
  }
}

