// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arrive_trip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArriveTripModelImpl _$$ArriveTripModelImplFromJson(
  Map<String, dynamic> json,
) => _$ArriveTripModelImpl(
  tripId: (json['tripId'] as num?)?.toInt(),
  status: json['status'] as String?,
  arrivedAt: json['arrivedAt'] as String?,
  freeWaitTimeSeconds: (json['freeWaitTimeSeconds'] as num?)?.toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ArriveTripModelImplToJson(
  _$ArriveTripModelImpl instance,
) => <String, dynamic>{
  'tripId': instance.tripId,
  'status': instance.status,
  'arrivedAt': instance.arrivedAt,
  'freeWaitTimeSeconds': instance.freeWaitTimeSeconds,
  'message': instance.message,
};
