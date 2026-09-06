import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/core/utils/json_helper.dart';

part 'passenger_pool_model.freezed.dart';
part 'passenger_pool_model.g.dart';

@freezed
class PassengerPoolMemberModel with _$PassengerPoolMemberModel {
  const factory PassengerPoolMemberModel({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? roomId,
    String? riderName,
    @JsonKey(fromJson: parseIntFromJson) int? sharedRidePassengerId,
    @JsonKey(fromJson: parseIntFromJson) int? riderProfileId,
    @JsonKey(fromJson: parseIntFromJson) int? seatsNeeded,
    String? status,
    @JsonKey(fromJson: parseDoubleFromJson) double? pickupLat,
    @JsonKey(fromJson: parseDoubleFromJson) double? pickupLng,
    String? joinedAt,
    String? leftAt,
  }) = _PassengerPoolMemberModel;

  factory PassengerPoolMemberModel.fromJson(Map<String, dynamic> json) =>
      _$PassengerPoolMemberModelFromJson(json);
}

@freezed
class PassengerPoolModel with _$PassengerPoolModel {
  const factory PassengerPoolModel({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? creatorRiderProfileId,
    String? status,
    @JsonKey(fromJson: parseIntFromJson) int? driverProfileId,
    @JsonKey(fromJson: parseIntFromJson) int? sharedRideId,
    String? driverAcceptedAt,
    @JsonKey(fromJson: parseDoubleFromJson) double? creatorPickupLat,
    @JsonKey(fromJson: parseDoubleFromJson) double? creatorPickupLng,
    @JsonKey(fromJson: parseDoubleFromJson) double? meetingLat,
    @JsonKey(fromJson: parseDoubleFromJson) double? meetingLng,
    String? meetingAddress,
    String? meetingPlaceName,
    String? meetingPlaceProvider,
    @JsonKey(fromJson: parseDoubleFromJson) double? destinationLat,
    @JsonKey(fromJson: parseDoubleFromJson) double? destinationLng,
    String? destinationAddress,
    @JsonKey(fromJson: parseIntFromJson) int? maxPassengers,
    @JsonKey(fromJson: parseIntFromJson) int? currentPassengers,
    String? departureTime,
    String? expiresAt,
    String? createdAt,
    @JsonKey(fromJson: parseDoubleFromJson) double? distanceToMeetingKm,
    List<PassengerPoolMemberModel>? members,
  }) = _PassengerPoolModel;

  factory PassengerPoolModel.fromJson(Map<String, dynamic> json) =>
      _$PassengerPoolModelFromJson(json);
}
