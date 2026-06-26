import 'package:mashena_driver_app/feature/home/data/models/ride_request_model.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';

extension RideRequestMapper on RideRequestModel {
  RideRequestEntity toEntity() {
    final geomPoints = routeGeometry?.points;
    final firstPoint = (geomPoints != null && geomPoints.isNotEmpty)
        ? geomPoints.first
        : null;
    final lastPoint = (geomPoints != null && geomPoints.isNotEmpty)
        ? geomPoints.last
        : null;

    final parsedPickupLat = pickupLat != null
        ? double.tryParse(pickupLat!)
        : firstPoint?.lat;
    final parsedPickupLng = pickupLng != null
        ? double.tryParse(pickupLng!)
        : firstPoint?.lng;
    final parsedDestLat = destLat != null
        ? double.tryParse(destLat!)
        : lastPoint?.lat;
    final parsedDestLng = destLng != null
        ? double.tryParse(destLng!)
        : lastPoint?.lng;

    return RideRequestEntity(
      id: id ?? rideRequestId ?? 0,
      riderProfileId: riderProfileId ?? 0,
      status: status ?? '',
      pickupLat: parsedPickupLat ?? 0.0,
      pickupLng: parsedPickupLng ?? 0.0,
      pickupAddress: pickupAddress ?? '',
      destLat: parsedDestLat ?? 0.0,
      destLng: parsedDestLng ?? 0.0,
      destAddress: destAddress ?? '',
      vehicleTypeId: vehicleTypeId ?? 0,
      submittedAt: submittedAt != null
          ? (DateTime.tryParse(submittedAt!) ?? DateTime.now())
          : DateTime.now(),
      createdAt: createdAt != null
          ? (DateTime.tryParse(createdAt!) ?? DateTime.now())
          : DateTime.now(),
      updatedAt: updatedAt != null
          ? (DateTime.tryParse(updatedAt!) ?? DateTime.now())
          : DateTime.now(),
      stops: stops?.map((s) => s.toEntity()).toList() ?? [],
      rideRequestId: rideRequestId,
      distanceKm: estimatedDistanceKm,
      durationMin: estimatedDurationSec,
      isNight: isNight,
      estimatedFare: estimatedFare,
      currency: currency,
      routeGeometry: routeGeometry?.toEntity(),
    );
  }
}

extension RouteGeometryMapper on RouteGeometryModel {
  RouteGeometryEntity toEntity() {
    return RouteGeometryEntity(
      distanceMeters: distanceMeters,
      durationSeconds: durationSeconds,
      points: points.map((p) => p.toEntity()).toList(),
    );
  }
}

extension RoutePointMapper on RoutePointModel {
  RoutePointEntity toEntity() {
    return RoutePointEntity(lat: lat, lng: lng);
  }
}

extension RideRequestStopMapper on RideRequestStopModel {
  RideRequestStopEntity toEntity() {
    return RideRequestStopEntity(
      id: id,
      order: order,
      lat: double.parse(lat),
      lng: double.parse(lng),
      address: address,
    );
  }
}
