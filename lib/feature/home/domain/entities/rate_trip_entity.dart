import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_trip_entity.freezed.dart';

@freezed
class RateTripEntity with _$RateTripEntity {
  const factory RateTripEntity({
    required int id,
    required int tripId,
    required int fromUserId,
    required int toUserId,
    required int score,
    required String comment,
    required String createdAt,
    required String updatedAt,
    required List<RateTripTagEntity> tags,
    required RateTripUserEntity fromUser,
  }) = _RateTripEntity;
}

@freezed
class RateTripTagEntity with _$RateTripTagEntity {
  const factory RateTripTagEntity({
    required int id,
    required String code,
    required String targetType,
    required String sentiment,
    required bool isActive,
    required String createdAt,
  }) = _RateTripTagEntity;
}

@freezed
class RateTripUserEntity with _$RateTripUserEntity {
  const factory RateTripUserEntity({
    required int id,
    required String fullName,
  }) = _RateTripUserEntity;
}
