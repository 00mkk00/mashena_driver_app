import 'package:freezed_annotation/freezed_annotation.dart';

part 'passenger_pool_model.freezed.dart';
part 'passenger_pool_model.g.dart';

@freezed
class PassengerPoolMemberModel with _$PassengerPoolMemberModel {
  const factory PassengerPoolMemberModel({
    int? id,
    int? roomId,
    int? riderProfileId,
    int? seatsNeeded,
    String? status,
    double? pickupLat,
    double? pickupLng,
    String? joinedAt,
    String? leftAt,
  }) = _PassengerPoolMemberModel;

  factory PassengerPoolMemberModel.fromJson(Map<String, dynamic> json) =>
      _$PassengerPoolMemberModelFromJson(json);
}

@freezed
class PassengerPoolModel with _$PassengerPoolModel {
  const factory PassengerPoolModel({
    int? id,
    int? creatorRiderProfileId,
    String? status,
    int? driverProfileId,
    int? sharedRideId,
    String? driverAcceptedAt,
    double? meetingLat,
    double? meetingLng,
    String? meetingAddress,
    String? meetingPlaceName,
    String? meetingPlaceProvider,
    double? destinationLat,
    double? destinationLng,
    String? destinationAddress,
    int? maxPassengers,
    int? currentPassengers,
    String? departureTime,
    String? expiresAt,
    String? createdAt,
    List<PassengerPoolMemberModel>? members,
  }) = _PassengerPoolModel;

  factory PassengerPoolModel.fromJson(Map<String, dynamic> json) =>
      _$PassengerPoolModelFromJson(json);
}
