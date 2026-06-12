import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';

enum RideRequestStatus { idle, incoming, accepted, rejected, expired }

class RideRequestState {
  final RideRequestStatus status;
  final int? rideRequestId;
  final int countdownSeconds;
  final bool isBottomSheetExpanded;
  final bool isLoadingDetails;
  final RideRequestEntity? rideRequestEntity;
  final String? errorMessage;
  final String? pickupAddress; // 👈 resolved from lat/lng
  final String? destinationAddress; // 👈 resolved from lat/lng
  final bool isResolvingAddresses;

  const RideRequestState({
    this.status = RideRequestStatus.idle,
    this.rideRequestId,
    this.countdownSeconds = 0,
    this.isBottomSheetExpanded = false,
    this.isLoadingDetails = false,
    this.rideRequestEntity,
    this.errorMessage,
    this.pickupAddress,
    this.destinationAddress,
    this.isResolvingAddresses = false,
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
    RideRequestEntity? rideRequest,
    bool clearTripDetails = false,
    String? errorMessage,
    bool clearErrorMessage = false,
    String? pickupAddress,
    bool clearPickupAddress = false,
    String? destinationAddress,
    bool clearDestinationAddress = false,
    bool? isResolvingAddresses,
  }) => RideRequestState(
    status: status ?? this.status,
    rideRequestId: clearRideRequestId
        ? null
        : rideRequestId ?? this.rideRequestId,
    countdownSeconds: countdownSeconds ?? this.countdownSeconds,
    isBottomSheetExpanded: isBottomSheetExpanded ?? this.isBottomSheetExpanded,
    isLoadingDetails: isLoadingDetails ?? this.isLoadingDetails,
    rideRequestEntity: clearTripDetails
        ? null
        : rideRequest ?? this.rideRequestEntity,
    errorMessage: clearErrorMessage ? null : errorMessage ?? this.errorMessage,
    pickupAddress: clearPickupAddress
        ? null
        : pickupAddress ?? this.pickupAddress,
    destinationAddress: clearDestinationAddress
        ? null
        : destinationAddress ?? this.destinationAddress,
    isResolvingAddresses: isResolvingAddresses ?? this.isResolvingAddresses,
  );
}
