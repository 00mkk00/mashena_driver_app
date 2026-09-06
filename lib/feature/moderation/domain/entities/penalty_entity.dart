import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/moderation/data/enums/moderation_enums.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/restriction_entity.dart';

part 'penalty_entity.freezed.dart';

@freezed
class PenaltyEntity with _$PenaltyEntity {
  const factory PenaltyEntity({
    required int id,
    required int userId,
    required PenaltyTargetRole targetRole,
    required String rawTargetRole,
    required PenaltyType penaltyType,
    required String rawPenaltyType,
    required ModerationSeverity severity,
    required String rawSeverity,
    required ModerationItemStatus status,
    required String rawStatus,
    required String reason,
    required String issuedByType,
    int? issuedByUserId,
    int? ruleId,
    required String issuedAt,
    required String startsAt,
    required String expiresAt,
    String? revokedAt,
    String? revocationReason,
    required List<RestrictionEntity> restrictions,
    required String createdAt,
  }) = _PenaltyEntity;
}
