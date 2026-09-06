// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drop_off_shared_ride_passenger_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DropOffSharedRidePassengerParamsImpl
_$$DropOffSharedRidePassengerParamsImplFromJson(Map<String, dynamic> json) =>
    _$DropOffSharedRidePassengerParamsImpl(
      id: (json['id'] as num).toInt(),
      passengerId: (json['passengerId'] as num).toInt(),
      seatsToDrop: (json['seatsToDrop'] as num).toInt(),
      currentLat: (json['currentLat'] as num).toDouble(),
      currentLng: (json['currentLng'] as num).toDouble(),
      accountHolderDroppedOff: json['accountHolderDroppedOff'] as bool?,
    );

Map<String, dynamic> _$$DropOffSharedRidePassengerParamsImplToJson(
  _$DropOffSharedRidePassengerParamsImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'passengerId': instance.passengerId,
  'seatsToDrop': instance.seatsToDrop,
  'currentLat': instance.currentLat,
  'currentLng': instance.currentLng,
  'accountHolderDroppedOff': instance.accountHolderDroppedOff,
};
