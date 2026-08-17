import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/notification/data/enums/notification_type_enum.dart';

part 'notification_response_model.freezed.dart';
part 'notification_response_model.g.dart';

@freezed
class NotificationResponseModel with _$NotificationResponseModel {
  const factory NotificationResponseModel({
    int? count,
    int? unreadCount,
    List<NotificationItemModel>? data,
  }) = _NotificationResponseModel;

  factory NotificationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseModelFromJson(json);
}

@freezed
class NotificationItemModel with _$NotificationItemModel {
  const factory NotificationItemModel({
    int? id,
    int? userId,
    String? title,
    String? body,
    @JsonKey(
      fromJson: NotificationType.fromJson,
      unknownEnumValue: NotificationType.unknown,
    )
    NotificationType? type,
    NotificationMetadataModel? metadata,
    bool? isRead,
    String? createdAt,
    String? updatedAt,
  }) = _NotificationItemModel;

  factory NotificationItemModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemModelFromJson(json);
}

@freezed
class NotificationMetadataModel with _$NotificationMetadataModel {
  const factory NotificationMetadataModel({
    int? tripId,
    int? rideRequestId,
    num? amount,
    int? walletTransactionId,
    int? driverProfileId,
  }) = _NotificationMetadataModel;

  factory NotificationMetadataModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationMetadataModelFromJson(json);
}
