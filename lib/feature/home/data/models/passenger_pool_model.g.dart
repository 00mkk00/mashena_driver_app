// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger_pool_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PassengerPoolMemberModelImpl _$$PassengerPoolMemberModelImplFromJson(
  Map<String, dynamic> json,
) => _$PassengerPoolMemberModelImpl(
  id: parseIntFromJson(json['id']),
  roomId: parseIntFromJson(json['roomId']),
  riderProfileId: parseIntFromJson(json['riderProfileId']),
  seatsNeeded: parseIntFromJson(json['seatsNeeded']),
  status: json['status'] as String?,
  pickupLat: parseDoubleFromJson(json['pickupLat']),
  pickupLng: parseDoubleFromJson(json['pickupLng']),
  joinedAt: json['joinedAt'] as String?,
  leftAt: json['leftAt'] as String?,
);

Map<String, dynamic> _$$PassengerPoolMemberModelImplToJson(
  _$PassengerPoolMemberModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'roomId': instance.roomId,
  'riderProfileId': instance.riderProfileId,
  'seatsNeeded': instance.seatsNeeded,
  'status': instance.status,
  'pickupLat': instance.pickupLat,
  'pickupLng': instance.pickupLng,
  'joinedAt': instance.joinedAt,
  'leftAt': instance.leftAt,
};

_$PassengerPoolModelImpl _$$PassengerPoolModelImplFromJson(
  Map<String, dynamic> json,
) => _$PassengerPoolModelImpl(
  id: parseIntFromJson(json['id']),
  creatorRiderProfileId: parseIntFromJson(json['creatorRiderProfileId']),
  status: json['status'] as String?,
  driverProfileId: parseIntFromJson(json['driverProfileId']),
  sharedRideId: parseIntFromJson(json['sharedRideId']),
  driverAcceptedAt: json['driverAcceptedAt'] as String?,
  creatorPickupLat: parseDoubleFromJson(json['creatorPickupLat']),
  creatorPickupLng: parseDoubleFromJson(json['creatorPickupLng']),
  meetingLat: parseDoubleFromJson(json['meetingLat']),
  meetingLng: parseDoubleFromJson(json['meetingLng']),
  meetingAddress: json['meetingAddress'] as String?,
  meetingPlaceName: json['meetingPlaceName'] as String?,
  meetingPlaceProvider: json['meetingPlaceProvider'] as String?,
  destinationLat: parseDoubleFromJson(json['destinationLat']),
  destinationLng: parseDoubleFromJson(json['destinationLng']),
  destinationAddress: json['destinationAddress'] as String?,
  maxPassengers: parseIntFromJson(json['maxPassengers']),
  currentPassengers: parseIntFromJson(json['currentPassengers']),
  departureTime: json['departureTime'] as String?,
  expiresAt: json['expiresAt'] as String?,
  createdAt: json['createdAt'] as String?,
  distanceToMeetingKm: parseDoubleFromJson(json['distanceToMeetingKm']),
  members: (json['members'] as List<dynamic>?)
      ?.map((e) => PassengerPoolMemberModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$PassengerPoolModelImplToJson(
  _$PassengerPoolModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'creatorRiderProfileId': instance.creatorRiderProfileId,
  'status': instance.status,
  'driverProfileId': instance.driverProfileId,
  'sharedRideId': instance.sharedRideId,
  'driverAcceptedAt': instance.driverAcceptedAt,
  'creatorPickupLat': instance.creatorPickupLat,
  'creatorPickupLng': instance.creatorPickupLng,
  'meetingLat': instance.meetingLat,
  'meetingLng': instance.meetingLng,
  'meetingAddress': instance.meetingAddress,
  'meetingPlaceName': instance.meetingPlaceName,
  'meetingPlaceProvider': instance.meetingPlaceProvider,
  'destinationLat': instance.destinationLat,
  'destinationLng': instance.destinationLng,
  'destinationAddress': instance.destinationAddress,
  'maxPassengers': instance.maxPassengers,
  'currentPassengers': instance.currentPassengers,
  'departureTime': instance.departureTime,
  'expiresAt': instance.expiresAt,
  'createdAt': instance.createdAt,
  'distanceToMeetingKm': instance.distanceToMeetingKm,
  'members': instance.members,
};
