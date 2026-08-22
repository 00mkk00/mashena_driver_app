import 'package:freezed_annotation/freezed_annotation.dart';

part 'passenger_pool_entity.freezed.dart';

@freezed
class PassengerPoolMemberEntity with _$PassengerPoolMemberEntity {
  const factory PassengerPoolMemberEntity({
    required int id,
    required int roomId,
    required int riderProfileId,
    required int seatsNeeded,
    required String status,
    required double pickupLat,
    required double pickupLng,
    required DateTime? joinedAt,
    required DateTime? leftAt,
  }) = _PassengerPoolMemberEntity;
}

@freezed
class PassengerPoolEntity with _$PassengerPoolEntity {
  const factory PassengerPoolEntity({
    required int id,
    required int creatorRiderProfileId,
    required String status,
    required int? driverProfileId,
    required int? sharedRideId,
    required DateTime? driverAcceptedAt,
    required double meetingLat,
    required double meetingLng,
    required String meetingAddress,
    required String? meetingPlaceName,
    required String? meetingPlaceProvider,
    required double destinationLat,
    required double destinationLng,
    required String destinationAddress,
    required int maxPassengers,
    required int currentPassengers,
    required DateTime? departureTime,
    required DateTime? expiresAt,
    required DateTime? createdAt,
    required List<PassengerPoolMemberEntity> members,
  }) = _PassengerPoolEntity;
}
