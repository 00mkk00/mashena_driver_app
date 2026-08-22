// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'violation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ViolationModelImpl _$$ViolationModelImplFromJson(Map<String, dynamic> json) =>
    _$ViolationModelImpl(
      id: parseIntFromJson(json['id']),
      userId: parseIntFromJson(json['userId']),
      targetRole: json['targetRole'] as String?,
      violationType: json['violationType'] as String?,
      source: json['source'] as String?,
      severity: json['severity'] as String?,
      status: json['status'] as String?,
      description: json['description'] as String?,
      sourceType: json['sourceType'] as String?,
      sourceId: parseIntFromJson(json['sourceId']),
      penaltyId: parseIntFromJson(json['penaltyId']),
      occurredAt: json['occurredAt'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$ViolationModelImplToJson(
  _$ViolationModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'targetRole': instance.targetRole,
  'violationType': instance.violationType,
  'source': instance.source,
  'severity': instance.severity,
  'status': instance.status,
  'description': instance.description,
  'sourceType': instance.sourceType,
  'sourceId': instance.sourceId,
  'penaltyId': instance.penaltyId,
  'occurredAt': instance.occurredAt,
  'createdAt': instance.createdAt,
};
