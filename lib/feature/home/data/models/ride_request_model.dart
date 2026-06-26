import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_request_model.freezed.dart';
part 'ride_request_model.g.dart';

@freezed
class RideRequestModel with _$RideRequestModel {
  const factory RideRequestModel({
    int? id,
    int? riderProfileId,
    String? status,
    String? pickupLat,
    String? pickupLng,
    String? pickupAddress,
    String? destLat,
    String? destLng,
    String? destAddress,
    int? vehicleTypeId,
    String? submittedAt,
    String? createdAt,
    String? updatedAt,
    List<RideRequestStopModel>? stops,
    int? rideRequestId,
    double? estimatedDistanceKm,
    int? estimatedDurationSec,
    bool? isNight,
    String? estimatedFare,
    String? currency,
    RouteGeometryModel? routeGeometry,
  }) = _RideRequestModel;

  factory RideRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RideRequestModelFromJson(json);
}

@freezed
class RouteGeometryModel with _$RouteGeometryModel {
  const factory RouteGeometryModel({
    required double distanceMeters,
    required double durationSeconds,
    required List<RoutePointModel> points,
  }) = _RouteGeometryModel;

  factory RouteGeometryModel.fromJson(Map<String, dynamic> json) =>
      _$RouteGeometryModelFromJson(json);
}

@freezed
class RoutePointModel with _$RoutePointModel {
  const factory RoutePointModel({
    required double lat,
    required double lng,
  }) = _RoutePointModel;

  factory RoutePointModel.fromJson(Map<String, dynamic> json) =>
      _$RoutePointModelFromJson(json);
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