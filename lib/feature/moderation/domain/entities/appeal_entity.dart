import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/moderation/data/enums/moderation_enums.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/penalty_entity.dart';

part 'appeal_entity.freezed.dart';

@freezed
class AppealEntity with _$AppealEntity {
  const factory AppealEntity({
    required int id,
    required int penaltyId,
    required int userId,
    required String reason,
    String? evidence,
    required AppealStatus status,
    required String rawStatus,
    required String submittedAt,
    String? reviewedAt,
    int? reviewedByUserId,
    String? adminDecision,
    String? adminNotes,
    PenaltyEntity? penalty,
    required String createdAt,
  }) = _AppealEntity;
}
