import 'package:mashena_driver_app/feature/moderation/data/enums/moderation_enums.dart';
import 'package:mashena_driver_app/feature/moderation/data/models/appeal_model.dart';
import 'package:mashena_driver_app/feature/moderation/data/models/moderation_overview_model.dart';
import 'package:mashena_driver_app/feature/moderation/data/models/penalty_model.dart';
import 'package:mashena_driver_app/feature/moderation/data/models/restriction_model.dart';
import 'package:mashena_driver_app/feature/moderation/data/models/violation_model.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/appeal_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/moderation_overview_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/penalty_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/restriction_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/violation_entity.dart';

extension RestrictionMapper on RestrictionModel {
  RestrictionEntity toEntity() {
    return RestrictionEntity(
      id: id ?? 0,
      userId: userId ?? 0,
      penaltyId: penaltyId ?? 0,
      restrictionType: RestrictionType.fromJson(restrictionType),
      rawRestrictionType: restrictionType ?? '',
      status: ModerationItemStatus.fromJson(status),
      rawStatus: status ?? '',
      reason: reason ?? '',
      startsAt: startsAt ?? '',
      expiresAt: expiresAt ?? '',
      revokedAt: revokedAt,
      revocationReason: revocationReason,
      createdAt: createdAt ?? '',
    );
  }
}

extension ViolationMapper on ViolationModel {
  ViolationEntity toEntity() {
    return ViolationEntity(
      id: id ?? 0,
      userId: userId ?? 0,
      targetRole: PenaltyTargetRole.fromJson(targetRole),
      rawTargetRole: targetRole ?? '',
      violationType: violationType ?? '',
      source: source ?? '',
      severity: ModerationSeverity.fromJson(severity),
      rawSeverity: severity ?? '',
      status: status ?? '',
      description: description ?? '',
      sourceType: sourceType ?? '',
      sourceId: sourceId,
      penaltyId: penaltyId,
      occurredAt: occurredAt ?? '',
      createdAt: createdAt ?? '',
    );
  }
}

extension PenaltyMapper on PenaltyModel {
  PenaltyEntity toEntity() {
    return PenaltyEntity(
      id: id ?? 0,
      userId: userId ?? 0,
      targetRole: PenaltyTargetRole.fromJson(targetRole),
      rawTargetRole: targetRole ?? '',
      penaltyType: PenaltyType.fromJson(penaltyType),
      rawPenaltyType: penaltyType ?? '',
      severity: ModerationSeverity.fromJson(severity),
      rawSeverity: severity ?? '',
      status: ModerationItemStatus.fromJson(status),
      rawStatus: status ?? '',
      reason: reason ?? '',
      issuedByType: issuedByType ?? '',
      issuedByUserId: issuedByUserId,
      ruleId: ruleId,
      issuedAt: issuedAt ?? '',
      startsAt: startsAt ?? '',
      expiresAt: expiresAt ?? '',
      revokedAt: revokedAt,
      revocationReason: revocationReason,
      restrictions: restrictions?.map((r) => r.toEntity()).toList() ?? const [],
      createdAt: createdAt ?? '',
    );
  }
}

extension AppealMapper on AppealModel {
  AppealEntity toEntity() {
    return AppealEntity(
      id: id ?? 0,
      penaltyId: penaltyId ?? 0,
      userId: userId ?? 0,
      reason: reason ?? '',
      evidence: evidence,
      status: AppealStatus.fromJson(status),
      rawStatus: status ?? '',
      submittedAt: submittedAt ?? '',
      reviewedAt: reviewedAt,
      reviewedByUserId: reviewedByUserId,
      adminDecision: adminDecision,
      adminNotes: adminNotes,
      penalty: penalty?.toEntity(),
      createdAt: createdAt ?? '',
    );
  }
}

extension ModerationOverviewMapper on ModerationOverviewModel {
  ModerationOverviewEntity toEntity() {
    return ModerationOverviewEntity(
      userId: userId ?? 0,
      accountStatus: AccountStatus.fromJson(accountStatus),
      warningCount: warningCount ?? 0,
      totalViolationsCount: totalViolationsCount ?? 0,
      activePenalties:
          activePenalties?.map((p) => p.toEntity()).toList() ?? const [],
      activeRestrictions:
          activeRestrictions?.map((r) => r.toEntity()).toList() ?? const [],
      recentViolations:
          recentViolations?.map((v) => v.toEntity()).toList() ?? const [],
      activeAppeals:
          activeAppeals?.map((a) => a.toEntity()).toList() ?? const [],
    );
  }
}
