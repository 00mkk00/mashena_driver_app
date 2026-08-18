import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';

part 'shared_ride_entity.freezed.dart';

@freezed
class SharedRidePassengerEntity with _$SharedRidePassengerEntity {
  const factory SharedRidePassengerEntity({
    required int id,
    required int sharedRideId,
    required int riderProfileId,
    required String riderName,
    required String status,
    required String paymentStatus,
    required int seatsNeeded,
    required int activeSeats,
    required num totalPaidFare,
    required num finalDistanceKm,
    required num finalDurationSec,
    required num finalFare,
    required DateTime? joinedAt,
    required DateTime? checkedInAt,
    required DateTime? onBoardAt,
    required DateTime? droppedOffAt,
    required DateTime? canceledAt,
    required DateTime? removedAt,
    required String removeReason,
  }) = _SharedRidePassengerEntity;
}

@freezed
class SharedRideEntity with _$SharedRideEntity {
  const factory SharedRideEntity({
    required int id,
    required int driverProfileId,
    required int vehicleId,
    required String status,
    required String endedBy,
    required String notes,
    required double originLat,
    required double originLng,
    required String originAddress,
    required double destLat,
    required double destLng,
    required String destAddress,
    required DateTime? departureTime,
    required int maxPassengers,
    required int occupiedSeats,
    required num totalDistanceKm,
    required num totalDurationSec,
    required RouteGeometryEntity? routeGeometry,
    required num actualDistanceKm,
    required num actualDurationSec,
    required RouteGeometryEntity? actualRouteGeometry,
    required num baseTripFare,
    required num remainingTripCost,
    required int occupiedSeatsAtStart,
    required num fullRouteSeatFare,
    required num minimumSeatFare,
    required DateTime? startedAt,
    required DateTime? completedAt,
    required DateTime? canceledAt,
    required String cancellationReason,
    required String endType,
    required DateTime? createdAt,
    required List<SharedRidePassengerEntity> passengers,
  }) = _SharedRideEntity;
}
