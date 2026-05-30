import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_model.freezed.dart';
part 'trip_model.g.dart';

@freezed
class TripModel with _$TripModel {
  const factory TripModel({
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
    // nullable — backend returns {} for these
    dynamic matchedAt,
    dynamic driverProfileImage,
    dynamic vehicleId,
    dynamic plateNumber,
    dynamic color,
    dynamic manufacturer,
    dynamic model,
    dynamic vehicleTypeId,
  }) = _TripModel;

  factory TripModel.fromJson(Map<String, dynamic> json) =>
      _$TripModelFromJson(json);
}