import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_trip_history_model.freezed.dart';
part 'driver_trip_history_model.g.dart';

@freezed
class DriverTripHistoryModel with _$DriverTripHistoryModel {
  const factory DriverTripHistoryModel({
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
    TripUserModel? rider,
    TripUserModel? driver,
    TripVehicleModel? vehicle,
    TripRatingModel? myRating,
    TripRatingModel? receivedRating,
    List<TripRatingModel>? ratings,
  }) = _DriverTripHistoryModel;

  factory DriverTripHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$DriverTripHistoryModelFromJson(json);
}

@freezed
class TripUserModel with _$TripUserModel {
  const factory TripUserModel({
    int? id,
    String? fullName,
    String? phoneNumber,
    double? ratingAvg,
  }) = _TripUserModel;

  factory TripUserModel.fromJson(Map<String, dynamic> json) =>
      _$TripUserModelFromJson(json);
}

@freezed
class TripVehicleModel with _$TripVehicleModel {
  const factory TripVehicleModel({
    String? plateNumber,
    String? model,
    String? color,
  }) = _TripVehicleModel;

  factory TripVehicleModel.fromJson(Map<String, dynamic> json) =>
      _$TripVehicleModelFromJson(json);
}

@freezed
class TripRatingModel with _$TripRatingModel {
  const factory TripRatingModel({
    int? id,
    int? score,
    String? comment,
    int? fromUserId,
    int? toUserId,
    List<TripRatingTagModel>? tags,
    String? createdAt,
  }) = _TripRatingModel;

  factory TripRatingModel.fromJson(Map<String, dynamic> json) =>
      _$TripRatingModelFromJson(json);
}

@freezed
class TripRatingTagModel with _$TripRatingTagModel {
  const factory TripRatingTagModel({String? code}) = _TripRatingTagModel;

  factory TripRatingTagModel.fromJson(Map<String, dynamic> json) =>
      _$TripRatingTagModelFromJson(json);
}
