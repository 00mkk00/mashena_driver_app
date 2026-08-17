// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_shared_ride_passenger_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemoveSharedRidePassengerParamsImpl
_$$RemoveSharedRidePassengerParamsImplFromJson(Map<String, dynamic> json) =>
    _$RemoveSharedRidePassengerParamsImpl(
      id: (json['id'] as num).toInt(),
      passengerId: (json['passengerId'] as num).toInt(),
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$RemoveSharedRidePassengerParamsImplToJson(
  _$RemoveSharedRidePassengerParamsImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'passengerId': instance.passengerId,
  'reason': instance.reason,
};
