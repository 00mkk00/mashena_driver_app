// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appeal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppealModelImpl _$$AppealModelImplFromJson(Map<String, dynamic> json) =>
    _$AppealModelImpl(
      id: parseIntFromJson(json['id']),
      penaltyId: parseIntFromJson(json['penaltyId']),
      userId: parseIntFromJson(json['userId']),
      reason: json['reason'] as String?,
      evidence: json['evidence'] as String?,
      status: json['status'] as String?,
      submittedAt: json['submittedAt'] as String?,
      reviewedAt: json['reviewedAt'] as String?,
      reviewedByUserId: parseIntFromJson(json['reviewedByUserId']),
      adminDecision: json['adminDecision'] as String?,
      adminNotes: json['adminNotes'] as String?,
      penalty: json['penalty'] == null
          ? null
          : PenaltyModel.fromJson(json['penalty'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$AppealModelImplToJson(_$AppealModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'penaltyId': instance.penaltyId,
      'userId': instance.userId,
      'reason': instance.reason,
      'evidence': instance.evidence,
      'status': instance.status,
      'submittedAt': instance.submittedAt,
      'reviewedAt': instance.reviewedAt,
      'reviewedByUserId': instance.reviewedByUserId,
      'adminDecision': instance.adminDecision,
      'adminNotes': instance.adminNotes,
      'penalty': instance.penalty,
      'createdAt': instance.createdAt,
    };
