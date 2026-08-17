import 'package:mashena_driver_app/feature/notification/data/enums/notification_type_enum.dart';
import 'package:mashena_driver_app/feature/notification/data/models/notification_response_model.dart';
import 'package:mashena_driver_app/feature/notification/domain/entities/notification_response_entity.dart';

extension NotificationResponseMapper on NotificationResponseModel {
  NotificationResponseEntity toEntity() {
    return NotificationResponseEntity(
      count: count ?? 0,
      unreadCount: unreadCount ?? 0,
      data: data?.map((item) => item.toEntity()).toList() ?? [],
    );
  }
}

extension NotificationItemMapper on NotificationItemModel {
  NotificationItemEntity toEntity() {
    return NotificationItemEntity(
      id: id ?? 0,
      userId: userId ?? 0,
      title: title ?? '',
      body: body ?? '',
      type: type ?? NotificationType.unknown,
      metadata: metadata?.toEntity() ??
          const NotificationMetadataEntity(
            tripId: 0,
            rideRequestId: 0,
            amount: 0,
            walletTransactionId: 0,
            driverProfileId: 0,
          ),
      isRead: isRead ?? false,
      createdAt: createdAt ?? '',
      updatedAt: updatedAt ?? '',
    );
  }
}

extension NotificationMetadataMapper on NotificationMetadataModel {
  NotificationMetadataEntity toEntity() {
    return NotificationMetadataEntity(
      tripId: tripId ?? 0,
      rideRequestId: rideRequestId ?? 0,
      amount: amount ?? 0,
      walletTransactionId: walletTransactionId ?? 0,
      driverProfileId: driverProfileId ?? 0,
    );
  }
}
