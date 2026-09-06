import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/core/utils/json_helper.dart';

part 'shared_ride_model.freezed.dart';
part 'shared_ride_model.g.dart';

@freezed
class SharedRidePassengerModel with _$SharedRidePassengerModel {
  const factory SharedRidePassengerModel({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? sharedRideId,
    @JsonKey(fromJson: parseIntFromJson) int? riderProfileId,
    String? riderName,
    String? status,
    String? paymentStatus,
    @JsonKey(fromJson: parseIntFromJson) int? seatsNeeded,
    @JsonKey(fromJson: parseIntFromJson) int? activeSeats,
    @JsonKey(fromJson: parseNumFromJson) num? totalPaidFare,
    @JsonKey(fromJson: parseNumFromJson) num? finalDistanceKm,
    @JsonKey(fromJson: parseNumFromJson) num? finalDurationSec,
    @JsonKey(fromJson: parseNumFromJson) num? finalFare,
    String? joinedAt,
    String? checkedInAt,
    String? onBoardAt,
    String? droppedOffAt,
    String? canceledAt,
    String? removedAt,
    String? removeReason,
  }) = _SharedRidePassengerModel;

  factory SharedRidePassengerModel.fromJson(Map<String, dynamic> json) =>
      _$SharedRidePassengerModelFromJson(json);
}

@freezed
class SharedRideModel with _$SharedRideModel {
  const factory SharedRideModel({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? driverProfileId,
    @JsonKey(fromJson: parseIntFromJson) int? vehicleId,
    String? status,
    String? endedBy,
    String? notes,
    @JsonKey(fromJson: parseDoubleFromJson) double? originLat,
    @JsonKey(fromJson: parseDoubleFromJson) double? originLng,
    String? originAddress,
    @JsonKey(fromJson: parseDoubleFromJson) double? destLat,
    @JsonKey(fromJson: parseDoubleFromJson) double? destLng,
    String? destAddress,
    String? departureTime,
    @JsonKey(fromJson: parseIntFromJson) int? maxPassengers,
    @JsonKey(fromJson: parseIntFromJson) int? occupiedSeats,
    @JsonKey(fromJson: parseNumFromJson) num? totalDistanceKm,
    @JsonKey(fromJson: parseNumFromJson) num? totalDurationSec,
    dynamic routeGeometry,
    @JsonKey(fromJson: parseNumFromJson) num? actualDistanceKm,
    @JsonKey(fromJson: parseNumFromJson) num? actualDurationSec,
    dynamic actualRouteGeometry,
    @JsonKey(fromJson: parseNumFromJson) num? baseTripFare,
    @JsonKey(fromJson: parseNumFromJson) num? remainingTripCost,
    @JsonKey(fromJson: parseIntFromJson) int? occupiedSeatsAtStart,
    @JsonKey(fromJson: parseNumFromJson) num? fullRouteSeatFare,
    @JsonKey(fromJson: parseNumFromJson) num? minimumSeatFare,
    String? startedAt,
    String? completedAt,
    String? canceledAt,
    String? cancellationReason,
    String? endType,
    String? createdAt,
    List<SharedRidePassengerModel>? passengers,
  }) = _SharedRideModel;

  factory SharedRideModel.fromJson(Map<String, dynamic> json) =>
      _$SharedRideModelFromJson(json);
}
