import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/moderation/data/enums/moderation_enums.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/appeal_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/penalty_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/restriction_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/violation_entity.dart';

part 'moderation_overview_entity.freezed.dart';

@freezed
class ModerationOverviewEntity with _$ModerationOverviewEntity {
  const factory ModerationOverviewEntity({
    required int userId,
    required AccountStatus accountStatus,
    required int warningCount,
    required int totalViolationsCount,
    required List<PenaltyEntity> activePenalties,
    required List<RestrictionEntity> activeRestrictions,
    required List<ViolationEntity> recentViolations,
    required List<AppealEntity> activeAppeals,
  }) = _ModerationOverviewEntity;
}
