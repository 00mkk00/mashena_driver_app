import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_request_model.freezed.dart';
part 'ride_request_model.g.dart';

@freezed
class RideRequestModel with _$RideRequestModel {
  const factory RideRequestModel({
    required int id,
    required int riderProfileId,
    required String status,
    required String pickupLat,
    required String pickupLng,
    required String pickupAddress,
    required String destLat,
    required String destLng,
    required String destAddress,
    required int vehicleTypeId,
    required String submittedAt,
    required String createdAt,
    required String updatedAt,
    required List<RideRequestStopModel> stops,
  }) = _RideRequestModel;

  factory RideRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RideRequestModelFromJson(json);
}

@freezed
class RideRequestStopModel with _$RideRequestStopModel {
  const factory RideRequestStopModel({
    required int id,
    required int order,
    required String lat,
    required String lng,
    required String address,
  }) = _RideRequestStopModel;

  factory RideRequestStopModel.fromJson(Map<String, dynamic> json) =>
      _$RideRequestStopModelFromJson(json);
}