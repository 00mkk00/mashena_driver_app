import 'package:mashena_driver_app/feature/home/data/models/driver_trip_history_model.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_trip_history_entity.dart';

extension DriverTripHistoryMapper on DriverTripHistoryModel {
  DriverTripHistoryEntity toEntity() {
    return DriverTripHistoryEntity(
      id: id,
      rideRequestId: rideRequestId,
      status: status,
      pickupAddress: pickupAddress,
      pickupLat: pickupLat,
      pickupLng: pickupLng,
      destAddress: destAddress,
      destLat: destLat,
      destLng: destLng,
      fareTotal: fareTotal,
      finalFare: finalFare,
      discountAmount: discountAmount,
      distanceKm: distanceKm,
      durationSec: durationSec,
      createdAt: createdAt,
      acceptedAt: acceptedAt,
      startedAt: startedAt,
      completedAt: completedAt,
      canceledAt: canceledAt,
      cancelledBy: cancelledBy,
      rider: rider?.toEntity(),
      driver: driver?.toEntity(),
      vehicle: vehicle?.toEntity(),
      myRating: myRating?.toEntity(),
      receivedRating: receivedRating?.toEntity(),
      ratings: ratings?.map((r) => r.toEntity()).toList(),
    );
  }
}

extension TripUserMapper on TripUserModel {
  TripUserEntity toEntity() {
    return TripUserEntity(
      id: id,
      fullName: fullName,
      phoneNumber: phoneNumber,
      ratingAvg: ratingAvg,
    );
  }
}

extension TripVehicleMapper on TripVehicleModel {
  TripVehicleEntity toEntity() {
    return TripVehicleEntity(
      plateNumber: plateNumber,
      model: model,
      color: color,
    );
  }
}

extension TripRatingMapper on TripRatingModel {
  TripRatingEntity toEntity() {
    return TripRatingEntity(
      id: id,
      score: score,
      comment: comment,
      fromUserId: fromUserId,
      toUserId: toUserId,
      tags: tags?.map((t) => t.toEntity()).toList(),
      createdAt: createdAt,
    );
  }
}

extension TripRatingTagMapper on TripRatingTagModel {
  TripRatingTagEntity toEntity() {
    return TripRatingTagEntity(code: code);
  }
}
