import 'package:freezed_annotation/freezed_annotation.dart';

part 'shared_ride_model.freezed.dart';
part 'shared_ride_model.g.dart';

@freezed
class SharedRidePassengerModel with _$SharedRidePassengerModel {
  const factory SharedRidePassengerModel({
    int? id,
    int? sharedRideId,
    int? riderProfileId,
    String? riderName,
    String? status,
    String? paymentStatus,
    int? seatsNeeded,
    int? activeSeats,
    num? totalPaidFare,
    num? finalDistanceKm,
    num? finalDurationSec,
    num? finalFare,
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
    int? id,
    int? driverProfileId,
    int? vehicleId,
    String? status,
    String? endedBy,
    String? notes,
    double? originLat,
    double? originLng,
    String? originAddress,
    double? destLat,
    double? destLng,
    String? destAddress,
    String? departureTime,
    int? maxPassengers,
    int? occupiedSeats,
    num? totalDistanceKm,
    num? totalDurationSec,
    dynamic routeGeometry,
    num? actualDistanceKm,
    num? actualDurationSec,
    dynamic actualRouteGeometry,
    num? baseTripFare,
    num? remainingTripCost,
    int? occupiedSeatsAtStart,
    num? fullRouteSeatFare,
    num? minimumSeatFare,
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
