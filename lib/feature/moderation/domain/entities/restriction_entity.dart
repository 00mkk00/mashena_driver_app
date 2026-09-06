import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/moderation/data/enums/moderation_enums.dart';

part 'restriction_entity.freezed.dart';

@freezed
class RestrictionEntity with _$RestrictionEntity {
  const factory RestrictionEntity({
    required int id,
    required int userId,
    required int penaltyId,
    required RestrictionType restrictionType,
    required String rawRestrictionType,
    required ModerationItemStatus status,
    required String rawStatus,
    required String reason,
    required String startsAt,
    required String expiresAt,
    String? revokedAt,
    String? revocationReason,
    required String createdAt,
  }) = _RestrictionEntity;
}
