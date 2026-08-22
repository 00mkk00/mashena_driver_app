// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger_pool_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PassengerPoolMemberModelImpl _$$PassengerPoolMemberModelImplFromJson(
  Map<String, dynamic> json,
) => _$PassengerPoolMemberModelImpl(
  id: (json['id'] as num?)?.toInt(),
  roomId: (json['roomId'] as num?)?.toInt(),
  riderProfileId: (json['riderProfileId'] as num?)?.toInt(),
  seatsNeeded: (json['seatsNeeded'] as num?)?.toInt(),
  status: json['status'] as String?,
  pickupLat: (json['pickupLat'] as num?)?.toDouble(),
  pickupLng: (json['pickupLng'] as num?)?.toDouble(),
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
  id: (json['id'] as num?)?.toInt(),
  creatorRiderProfileId: (json['creatorRiderProfileId'] as num?)?.toInt(),
  status: json['status'] as String?,
  driverProfileId: (json['driverProfileId'] as num?)?.toInt(),
  sharedRideId: (json['sharedRideId'] as num?)?.toInt(),
  driverAcceptedAt: json['driverAcceptedAt'] as String?,
  meetingLat: (json['meetingLat'] as num?)?.toDouble(),
  meetingLng: (json['meetingLng'] as num?)?.toDouble(),
  meetingAddress: json['meetingAddress'] as String?,
  meetingPlaceName: json['meetingPlaceName'] as String?,
  meetingPlaceProvider: json['meetingPlaceProvider'] as String?,
  destinationLat: (json['destinationLat'] as num?)?.toDouble(),
  destinationLng: (json['destinationLng'] as num?)?.toDouble(),
  destinationAddress: json['destinationAddress'] as String?,
  maxPassengers: (json['maxPassengers'] as num?)?.toInt(),
  currentPassengers: (json['currentPassengers'] as num?)?.toInt(),
  departureTime: json['departureTime'] as String?,
  expiresAt: json['expiresAt'] as String?,
  createdAt: json['createdAt'] as String?,
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
  'members': instance.members,
};
