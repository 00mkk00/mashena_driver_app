import 'package:mashena_driver_app/feature/notification/data/models/notification_token_model.dart';
import 'package:mashena_driver_app/feature/notification/domain/entities/notification_token_entity.dart';

extension NotificationTokenMapper on NotificationTokenModel {
  NotificationTokenEntity toEntity() {
    return NotificationTokenEntity(
      id: id ?? 0,
      userId: userId ?? 0,
      token: token ?? '',
      platform: platform ?? '',
      deviceId: deviceId ?? '',
      isActive: isActive ?? false,
      lastUsedAt: lastUsedAt ?? '',
      createdAt: createdAt ?? '',
      updatedAt: updatedAt ?? '',
    );
  }
}
