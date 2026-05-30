import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_entity.freezed.dart';

@freezed
class TripEntity with _$TripEntity {
  const factory TripEntity({
    required int tripId,
    required String tripStatus,
    required int rideRequestId,
    required double pickupLat,
    required double pickupLng,
    required double destinationLat,
    required double destinationLng,
    required int driverId,
    required String driverFirstName,
    required String driverLastName,
    required double driverRatingAvg,
    required List<String> stops,
    dynamic matchedAt,
    dynamic driverProfileImage,
    dynamic vehicleId,
    dynamic plateNumber,
    dynamic color,
    dynamic manufacturer,
    dynamic model,
    dynamic vehicleTypeId,
  }) = _TripEntity;
}