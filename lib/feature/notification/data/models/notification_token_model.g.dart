// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationTokenModelImpl _$$NotificationTokenModelImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationTokenModelImpl(
  id: (json['id'] as num?)?.toInt(),
  userId: (json['userId'] as num?)?.toInt(),
  token: json['token'] as String?,
  platform: json['platform'] as String?,
  deviceId: json['deviceId'] as String?,
  isActive: json['isActive'] as bool?,
  lastUsedAt: json['lastUsedAt'] as String?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$$NotificationTokenModelImplToJson(
  _$NotificationTokenModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'token': instance.token,
  'platform': instance.platform,
  'deviceId': instance.deviceId,
  'isActive': instance.isActive,
  'lastUsedAt': instance.lastUsedAt,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};
