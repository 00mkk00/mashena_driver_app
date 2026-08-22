// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_passenger_pool_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AcceptPassengerPoolResponseModelImpl
_$$AcceptPassengerPoolResponseModelImplFromJson(Map<String, dynamic> json) =>
    _$AcceptPassengerPoolResponseModelImpl(
      room: json['room'] == null
          ? null
          : PassengerPoolModel.fromJson(json['room'] as Map<String, dynamic>),
      sharedRideId: (json['sharedRideId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AcceptPassengerPoolResponseModelImplToJson(
  _$AcceptPassengerPoolResponseModelImpl instance,
) => <String, dynamic>{
  'room': instance.room,
  'sharedRideId': instance.sharedRideId,
};
