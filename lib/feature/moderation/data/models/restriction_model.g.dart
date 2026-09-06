// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restriction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestrictionModelImpl _$$RestrictionModelImplFromJson(
  Map<String, dynamic> json,
) => _$RestrictionModelImpl(
  id: parseIntFromJson(json['id']),
  userId: parseIntFromJson(json['userId']),
  penaltyId: parseIntFromJson(json['penaltyId']),
  restrictionType: json['restrictionType'] as String?,
  status: json['status'] as String?,
  reason: json['reason'] as String?,
  startsAt: json['startsAt'] as String?,
  expiresAt: json['expiresAt'] as String?,
  revokedAt: json['revokedAt'] as String?,
  revocationReason: json['revocationReason'] as String?,
  createdAt: json['createdAt'] as String?,
);

Map<String, dynamic> _$$RestrictionModelImplToJson(
  _$RestrictionModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'penaltyId': instance.penaltyId,
  'restrictionType': instance.restrictionType,
  'status': instance.status,
  'reason': instance.reason,
  'startsAt': instance.startsAt,
  'expiresAt': instance.expiresAt,
  'revokedAt': instance.revokedAt,
  'revocationReason': instance.revocationReason,
  'createdAt': instance.createdAt,
};
