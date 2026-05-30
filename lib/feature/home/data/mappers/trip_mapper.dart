import 'package:mashena_driver_app/feature/home/data/models/trip_model.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/trip_entity.dart';

extension TripMapper on TripModel {
  TripEntity toEntity() {
    return TripEntity(
      tripId: tripId,
      tripStatus: tripStatus,
      rideRequestId: rideRequestId,
      pickupLat: pickupLat,
      pickupLng: pickupLng,
      destinationLat: destinationLat,
      destinationLng: destinationLng,
      driverId: driverId,
      driverFirstName: driverFirstName,
      driverLastName: driverLastName,
      driverRatingAvg: driverRatingAvg,
      stops: stops,
      matchedAt: matchedAt,
      driverProfileImage: driverProfileImage,
      vehicleId: vehicleId,
      plateNumber: plateNumber,
      color: color,
      manufacturer: manufacturer,
      model: model,
      vehicleTypeId: vehicleTypeId,
    );
  }
}