// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationResponseModelImpl _$$NotificationResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationResponseModelImpl(
  count: (json['count'] as num?)?.toInt(),
  unreadCount: (json['unreadCount'] as num?)?.toInt(),
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => NotificationItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$NotificationResponseModelImplToJson(
  _$NotificationResponseModelImpl instance,
) => <String, dynamic>{
  'count': instance.count,
  'unreadCount': instance.unreadCount,
  'data': instance.data,
};

_$NotificationItemModelImpl _$$NotificationItemModelImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationItemModelImpl(
  id: (json['id'] as num?)?.toInt(),
  userId: (json['userId'] as num?)?.toInt(),
  title: json['title'] as String?,
  body: json['body'] as String?,
  type: NotificationType.fromJson(json['type']),
  metadata: json['metadata'] == null
      ? null
      : NotificationMetadataModel.fromJson(
          json['metadata'] as Map<String, dynamic>,
        ),
  isRead: json['isRead'] as bool?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$$NotificationItemModelImplToJson(
  _$NotificationItemModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'title': instance.title,
  'body': instance.body,
  'type': _$NotificationTypeEnumMap[instance.type],
  'metadata': instance.metadata,
  'isRead': instance.isRead,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};

const _$NotificationTypeEnumMap = {
  NotificationType.tripCancelled: 'notification.trip.cancelled',
  NotificationType.walletDeposit: 'notification.wallet.deposit',
  NotificationType.walletTransfer: 'notification.wallet.transfer',
  NotificationType.driverApproved: 'notification.driver.approved',
  NotificationType.unknown: 'unknown',
};

_$NotificationMetadataModelImpl _$$NotificationMetadataModelImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationMetadataModelImpl(
  tripId: (json['tripId'] as num?)?.toInt(),
  rideRequestId: (json['rideRequestId'] as num?)?.toInt(),
  amount: json['amount'] as num?,
  walletTransactionId: (json['walletTransactionId'] as num?)?.toInt(),
  driverProfileId: (json['driverProfileId'] as num?)?.toInt(),
);

Map<String, dynamic> _$$NotificationMetadataModelImplToJson(
  _$NotificationMetadataModelImpl instance,
) => <String, dynamic>{
  'tripId': instance.tripId,
  'rideRequestId': instance.rideRequestId,
  'amount': instance.amount,
  'walletTransactionId': instance.walletTransactionId,
  'driverProfileId': instance.driverProfileId,
};
