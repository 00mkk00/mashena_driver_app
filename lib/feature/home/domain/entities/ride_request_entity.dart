import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_request_entity.freezed.dart';

@freezed
class RideRequestEntity with _$RideRequestEntity {
  const factory RideRequestEntity({
    required int id,
    required int riderProfileId,
    required String status,
    required double pickupLat,
    required double pickupLng,
    required String pickupAddress,
    required double destLat,
    required double destLng,
    required String destAddress,
    required int vehicleTypeId,
    required DateTime submittedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    required List<RideRequestStopEntity> stops,
    int? rideRequestId,
    double? distanceKm,
    int? durationMin,
    bool? isNight,
    String? estimatedFare,
    String? currency,
    RouteGeometryEntity? routeGeometry,
  }) = _RideRequestEntity;
}

@freezed
class RouteGeometryEntity with _$RouteGeometryEntity {
  const factory RouteGeometryEntity({
    required double distanceMeters,
    required double durationSeconds,
    required List<RoutePointEntity> points,
  }) = _RouteGeometryEntity;
}

@freezed
class RoutePointEntity with _$RoutePointEntity {
  const factory RoutePointEntity({required double lat, required double lng}) =
      _RoutePointEntity;
}

@freezed
class RideRequestStopEntity with _$RideRequestStopEntity {
  const factory RideRequestStopEntity({
    required int id,
    required int order,
    required double lat,
    required double lng,
    required String address,
  }) = _RideRequestStopEntity;
}
