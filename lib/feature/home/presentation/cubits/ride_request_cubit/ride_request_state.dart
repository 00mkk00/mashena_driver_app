import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';

enum RideRequestStatus {
  idle,
  incoming,
  accepted,
  rejected,
  expired,
  arrived,
  started,
}

class RideRequestState {
  final RideRequestStatus status;
  final int? rideRequestId;
  final int countdownSeconds;
  final bool isBottomSheetExpanded;
  final bool isLoadingDetails;
  final bool isArrivingTrip;
  final bool isCancelingTrip;
  final bool isStartingTrip;
  final bool isCompletingTrip;
  final RideRequestEntity? rideRequestEntity;
  final String? errorMessage;
  final String? pickupAddress; // 👈 resolved from lat/lng
  final String? destinationAddress; // 👈 resolved from lat/lng
  final bool isResolvingAddresses;
  final int freeWaitTimeSeconds;

  /// Non-null when the server cancelled the trip. Value is 'rider' or 'admin'.
  final String? tripCancelledBy;

  const RideRequestState({
    this.status = RideRequestStatus.idle,
    this.rideRequestId,
    this.countdownSeconds = 0,
    this.isBottomSheetExpanded = false,
    this.isLoadingDetails = false,
    this.isArrivingTrip = false,
    this.isCancelingTrip = false,
    this.isStartingTrip = false,
    this.isCompletingTrip = false,
    this.rideRequestEntity,
    this.errorMessage,
    this.pickupAddress,
    this.destinationAddress,
    this.isResolvingAddresses = false,
    this.freeWaitTimeSeconds = 0,
    this.tripCancelledBy,
  });

  bool get isIdle => status == RideRequestStatus.idle;
  bool get hasDetails => rideRequestEntity != null;

  RideRequestState copyWith({
    RideRequestStatus? status,
    int? rideRequestId,
    bool clearRideRequestId = false,
    int? countdownSeconds,
    bool? isBottomSheetExpanded,
    bool? isLoadingDetails,
    bool? isArrivingTrip,
    bool? isCancelingTrip,
    bool? isStartingTrip,
    bool? isCompletingTrip,
    RideRequestEntity? rideRequest,
    bool clearTripDetails = false,
    String? errorMessage,
    bool clearErrorMessage = false,
    String? pickupAddress,
    bool clearPickupAddress = false,
    String? destinationAddress,
    bool clearDestinationAddress = false,
    bool? isResolvingAddresses,
    int? freeWaitTimeSeconds,
    String? tripCancelledBy,
    bool clearTripCancelled = false,
  }) => RideRequestState(
    status: status ?? this.status,
    rideRequestId: clearRideRequestId
        ? null
        : rideRequestId ?? this.rideRequestId,
    countdownSeconds: countdownSeconds ?? this.countdownSeconds,
    isBottomSheetExpanded: isBottomSheetExpanded ?? this.isBottomSheetExpanded,
    isLoadingDetails: isLoadingDetails ?? this.isLoadingDetails,
    isArrivingTrip: isArrivingTrip ?? this.isArrivingTrip,
    isCancelingTrip: isCancelingTrip ?? this.isCancelingTrip,
    isStartingTrip: isStartingTrip ?? this.isStartingTrip,
    isCompletingTrip: isCompletingTrip ?? this.isCompletingTrip,
    rideRequestEntity: clearTripDetails
        ? null
        : rideRequest ?? rideRequestEntity,
    errorMessage: clearErrorMessage ? null : errorMessage ?? this.errorMessage,
    pickupAddress: clearPickupAddress
        ? null
        : pickupAddress ?? this.pickupAddress,
    destinationAddress: clearDestinationAddress
        ? null
        : destinationAddress ?? this.destinationAddress,
    isResolvingAddresses: isResolvingAddresses ?? this.isResolvingAddresses,
    freeWaitTimeSeconds: freeWaitTimeSeconds ?? this.freeWaitTimeSeconds,
    tripCancelledBy: clearTripCancelled
        ? null
        : tripCancelledBy ?? this.tripCancelledBy,
  );
}
