import 'package:mashena_driver_app/feature/home/data/models/ride_request_model.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';

extension RideRequestMapper on RideRequestModel {
  RideRequestEntity toEntity() {
    return RideRequestEntity(
      id: id,
      riderProfileId: riderProfileId,
      status: status,
      pickupLat: double.parse(pickupLat),
      pickupLng: double.parse(pickupLng),
      pickupAddress: pickupAddress,
      destLat: double.parse(destLat),
      destLng: double.parse(destLng),
      destAddress: destAddress,
      vehicleTypeId: vehicleTypeId,
      submittedAt: DateTime.parse(submittedAt),
      createdAt: DateTime.parse(createdAt),
      updatedAt: DateTime.parse(updatedAt),
      stops: stops.map((s) => s.toEntity()).toList(),
    );
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