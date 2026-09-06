// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'penalty_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PenaltyModelImpl _$$PenaltyModelImplFromJson(Map<String, dynamic> json) =>
    _$PenaltyModelImpl(
      id: parseIntFromJson(json['id']),
      userId: parseIntFromJson(json['userId']),
      targetRole: json['targetRole'] as String?,
      penaltyType: json['penaltyType'] as String?,
      severity: json['severity'] as String?,
      status: json['status'] as String?,
      reason: json['reason'] as String?,
      issuedByType: json['issuedByType'] as String?,
      issuedByUserId: parseIntFromJson(json['issuedByUserId']),
      ruleId: parseIntFromJson(json['ruleId']),
      issuedAt: json['issuedAt'] as String?,
      startsAt: json['startsAt'] as String?,
      expiresAt: json['expiresAt'] as String?,
      revokedAt: json['revokedAt'] as String?,
      revocationReason: json['revocationReason'] as String?,
      restrictions: (json['restrictions'] as List<dynamic>?)
          ?.map((e) => RestrictionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$PenaltyModelImplToJson(_$PenaltyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'targetRole': instance.targetRole,
      'penaltyType': instance.penaltyType,
      'severity': instance.severity,
      'status': instance.status,
      'reason': instance.reason,
      'issuedByType': instance.issuedByType,
      'issuedByUserId': instance.issuedByUserId,
      'ruleId': instance.ruleId,
      'issuedAt': instance.issuedAt,
      'startsAt': instance.startsAt,
      'expiresAt': instance.expiresAt,
      'revokedAt': instance.revokedAt,
      'revocationReason': instance.revocationReason,
      'restrictions': instance.restrictions,
      'createdAt': instance.createdAt,
    };
