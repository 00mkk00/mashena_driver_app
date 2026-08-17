import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/notification/data/enums/notification_type_enum.dart';

part 'notification_response_entity.freezed.dart';

@freezed
class NotificationResponseEntity with _$NotificationResponseEntity {
  const factory NotificationResponseEntity({
    required int count,
    required int unreadCount,
    required List<NotificationItemEntity> data,
  }) = _NotificationResponseEntity;
}

@freezed
class NotificationItemEntity with _$NotificationItemEntity {
  const factory NotificationItemEntity({
    required int id,
    required int userId,
    required String title,
    required String body,
    required NotificationType type,
    required NotificationMetadataEntity metadata,
    required bool isRead,
    required String createdAt,
    required String updatedAt,
  }) = _NotificationItemEntity;
}

@freezed
class NotificationMetadataEntity with _$NotificationMetadataEntity {
  const factory NotificationMetadataEntity({
    required int tripId,
    required int rideRequestId,
    required num amount,
    required int walletTransactionId,
    required int driverProfileId,
  }) = _NotificationMetadataEntity;
}
