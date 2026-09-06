import 'package:mashena_driver_app/feature/home/data/models/ride_request_model.dart';
import 'package:mashena_driver_app/feature/home/data/models/shared_ride_model.dart';
import 'package:mashena_driver_app/feature/home/data/mappers/ride_request_mapper.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/shared_ride_entity.dart';

extension SharedRidePassengerMapper on SharedRidePassengerModel {
  SharedRidePassengerEntity toEntity() {
    return SharedRidePassengerEntity(
      id: id ?? 0,
      sharedRideId: sharedRideId ?? 0,
      riderProfileId: riderProfileId ?? 0,
      riderName: riderName ?? '',
      status: status ?? '',
      paymentStatus: paymentStatus ?? '',
      seatsNeeded: seatsNeeded ?? 0,
      activeSeats: activeSeats ?? 0,
      totalPaidFare: totalPaidFare ?? 0,
      finalDistanceKm: finalDistanceKm ?? 0,
      finalDurationSec: finalDurationSec ?? 0,
      finalFare: finalFare ?? 0,
      joinedAt: joinedAt != null ? DateTime.tryParse(joinedAt!) : null,
      checkedInAt: checkedInAt != null ? DateTime.tryParse(checkedInAt!) : null,
      onBoardAt: onBoardAt != null ? DateTime.tryParse(onBoardAt!) : null,
      droppedOffAt: droppedOffAt != null ? DateTime.tryParse(droppedOffAt!) : null,
      canceledAt: canceledAt != null ? DateTime.tryParse(canceledAt!) : null,
      removedAt: removedAt != null ? DateTime.tryParse(removedAt!) : null,
      removeReason: removeReason ?? '',
    );
  }
}

extension SharedRideMapper on SharedRideModel {
  SharedRideEntity toEntity() {
    return SharedRideEntity(
      id: id ?? 0,
      driverProfileId: driverProfileId ?? 0,
      vehicleId: vehicleId ?? 0,
      status: status ?? '',
      endedBy: endedBy ?? '',
      notes: notes ?? '',
      originLat: originLat ?? 0.0,
      originLng: originLng ?? 0.0,
      originAddress: originAddress ?? '',
      destLat: destLat ?? 0.0,
      destLng: destLng ?? 0.0,
      destAddress: destAddress ?? '',
      departureTime: departureTime != null ? DateTime.tryParse(departureTime!) : null,
      maxPassengers: maxPassengers ?? 0,
      occupiedSeats: occupiedSeats ?? 0,
      totalDistanceKm: totalDistanceKm ?? 0,
      totalDurationSec: totalDurationSec ?? 0,
      routeGeometry: _parseRouteGeometry(routeGeometry),
      actualDistanceKm: actualDistanceKm ?? 0,
      actualDurationSec: actualDurationSec ?? 0,
      actualRouteGeometry: _parseRouteGeometry(actualRouteGeometry),
      baseTripFare: baseTripFare ?? 0,
      remainingTripCost: remainingTripCost ?? 0,
      occupiedSeatsAtStart: occupiedSeatsAtStart ?? 0,
      fullRouteSeatFare: fullRouteSeatFare ?? 0,
      minimumSeatFare: minimumSeatFare ?? 0,
      startedAt: startedAt != null ? DateTime.tryParse(startedAt!) : null,
      completedAt: completedAt != null ? DateTime.tryParse(completedAt!) : null,
      canceledAt: canceledAt != null ? DateTime.tryParse(canceledAt!) : null,
      cancellationReason: cancellationReason ?? '',
      endType: endType ?? '',
      createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
      passengers: passengers?.map((e) => e.toEntity()).toList() ?? [],
    );
  }
}

RouteGeometryEntity? _parseRouteGeometry(dynamic raw) {
  if (raw == null) return null;
  if (raw is RouteGeometryModel) {
    return raw.toEntity();
  }
  if (raw is Map<String, dynamic>) {
    try {
      final model = RouteGeometryModel.fromJson(raw);
      return model.toEntity();
    } catch (_) {
      if (raw.containsKey('points') && raw['points'] is List) {
        final pts = _parsePointsList(raw['points']);
        return RouteGeometryEntity(
          distanceMeters: (raw['distanceMeters'] as num?)?.toDouble() ?? 0.0,
          durationSeconds: (raw['durationSeconds'] as num?)?.toDouble() ?? 0.0,
          points: pts,
        );
      }
    }
  }
  if (raw is List) {
    final pts = _parsePointsList(raw);
    if (pts.isNotEmpty) {
      return RouteGeometryEntity(
        distanceMeters: 0,
        durationSeconds: 0,
        points: pts,
      );
    }
  }
  return null;
}

List<RoutePointEntity> _parsePointsList(dynamic list) {
  if (list is! List) return const [];
  final points = <RoutePointEntity>[];
  for (final item in list) {
    if (item is RoutePointModel) {
      points.add(item.toEntity());
    } else if (item is RoutePointEntity) {
      points.add(item);
    } else if (item is Map) {
      final map = Map<String, dynamic>.from(item);
      final lat = (map['lat'] as num?)?.toDouble();
      final lng = (map['lng'] as num?)?.toDouble();
      if (lat != null && lng != null) {
        points.add(RoutePointEntity(lat: lat, lng: lng));
      }
    } else if (item is List) {
      points.addAll(_parsePointsList(item));
    }
  }
  return points;
}
