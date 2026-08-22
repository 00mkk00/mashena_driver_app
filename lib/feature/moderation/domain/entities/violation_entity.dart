import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/moderation/data/enums/moderation_enums.dart';

part 'violation_entity.freezed.dart';

@freezed
class ViolationEntity with _$ViolationEntity {
  const factory ViolationEntity({
    required int id,
    required int userId,
    required PenaltyTargetRole targetRole,
    required String rawTargetRole,
    required String violationType,
    required String source,
    required ModerationSeverity severity,
    required String rawSeverity,
    required String status,
    required String description,
    required String sourceType,
    int? sourceId,
    int? penaltyId,
    required String occurredAt,
    required String createdAt,
  }) = _ViolationEntity;
}
