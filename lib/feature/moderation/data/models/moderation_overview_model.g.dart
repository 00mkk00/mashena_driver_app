// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moderation_overview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModerationOverviewModelImpl _$$ModerationOverviewModelImplFromJson(
  Map<String, dynamic> json,
) => _$ModerationOverviewModelImpl(
  userId: parseIntFromJson(json['userId']),
  accountStatus: json['accountStatus'] as String?,
  warningCount: parseIntFromJson(json['warningCount']),
  totalViolationsCount: parseIntFromJson(json['totalViolationsCount']),
  activePenalties: (json['activePenalties'] as List<dynamic>?)
      ?.map((e) => PenaltyModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  activeRestrictions: (json['activeRestrictions'] as List<dynamic>?)
      ?.map((e) => RestrictionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  recentViolations: (json['recentViolations'] as List<dynamic>?)
      ?.map((e) => ViolationModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  activeAppeals: (json['activeAppeals'] as List<dynamic>?)
      ?.map((e) => AppealModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$ModerationOverviewModelImplToJson(
  _$ModerationOverviewModelImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'accountStatus': instance.accountStatus,
  'warningCount': instance.warningCount,
  'totalViolationsCount': instance.totalViolationsCount,
  'activePenalties': instance.activePenalties,
  'activeRestrictions': instance.activeRestrictions,
  'recentViolations': instance.recentViolations,
  'activeAppeals': instance.activeAppeals,
};
