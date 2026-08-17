import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_token_entity.freezed.dart';

@freezed
class NotificationTokenEntity with _$NotificationTokenEntity {
  const factory NotificationTokenEntity({
    required int id,
    required int userId,
    required String token,
    required String platform,
    required String deviceId,
    required bool isActive,
    required String lastUsedAt,
    required String createdAt,
    required String updatedAt,
  }) = _NotificationTokenEntity;
}
