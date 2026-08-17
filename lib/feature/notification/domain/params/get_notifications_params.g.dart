// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notifications_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetNotificationsParamsImpl _$$GetNotificationsParamsImplFromJson(
  Map<String, dynamic> json,
) => _$GetNotificationsParamsImpl(
  skip: (json['skip'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
);

Map<String, dynamic> _$$GetNotificationsParamsImplToJson(
  _$GetNotificationsParamsImpl instance,
) => <String, dynamic>{'skip': instance.skip, 'limit': instance.limit};
