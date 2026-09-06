// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_driver_trip_history_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetDriverTripHistoryParamsImpl _$$GetDriverTripHistoryParamsImplFromJson(
  Map<String, dynamic> json,
) => _$GetDriverTripHistoryParamsImpl(
  skip: (json['skip'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
);

Map<String, dynamic> _$$GetDriverTripHistoryParamsImplToJson(
  _$GetDriverTripHistoryParamsImpl instance,
) => <String, dynamic>{'skip': instance.skip, 'limit': instance.limit};
