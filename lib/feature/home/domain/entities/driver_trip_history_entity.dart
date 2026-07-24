import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_trip_history_entity.freezed.dart';

@freezed
class DriverTripHistoryEntity with _$DriverTripHistoryEntity {
  const factory DriverTripHistoryEntity({
    int? id,
    int? rideRequestId,
    String? status,
    String? pickupAddress,
    double? pickupLat,
    double? pickupLng,
    String? destAddress,
    double? destLat,
    double? destLng,
    num? fareTotal,
    num? finalFare,
    num? discountAmount,
    double? distanceKm,
    int? durationSec,
    String? createdAt,
    String? acceptedAt,
    String? startedAt,
    String? completedAt,
    String? canceledAt,
    String? cancelledBy,
    TripUserEntity? rider,
    TripUserEntity? driver,
    TripVehicleEntity? vehicle,
    TripRatingEntity? myRating,
    TripRatingEntity? receivedRating,
    List<TripRatingEntity>? ratings,
  }) = _DriverTripHistoryEntity;
}

@freezed
class TripUserEntity with _$TripUserEntity {
  const factory TripUserEntity({
    int? id,
    String? fullName,
    String? phoneNumber,
    double? ratingAvg,
  }) = _TripUserEntity;
}

@freezed
class TripVehicleEntity with _$TripVehicleEntity {
  const factory TripVehicleEntity({
    String? plateNumber,
    String? model,
    String? color,
  }) = _TripVehicleEntity;
}

@freezed
class TripRatingEntity with _$TripRatingEntity {
  const factory TripRatingEntity({
    int? id,
    int? score,
    String? comment,
    int? fromUserId,
    int? toUserId,
    List<TripRatingTagEntity>? tags,
    String? createdAt,
  }) = _TripRatingEntity;
}

@freezed
class TripRatingTagEntity with _$TripRatingTagEntity {
  const factory TripRatingTagEntity({
    String? code,
  }) = _TripRatingTagEntity;
}
