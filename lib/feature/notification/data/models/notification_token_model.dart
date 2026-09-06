import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_token_model.freezed.dart';
part 'notification_token_model.g.dart';

@freezed
class NotificationTokenModel with _$NotificationTokenModel {
  const factory NotificationTokenModel({
    int? id,
    int? userId,
    String? token,
    String? platform,
    String? deviceId,
    bool? isActive,
    String? lastUsedAt,
    String? createdAt,
    String? updatedAt,
  }) = _NotificationTokenModel;

  factory NotificationTokenModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationTokenModelFromJson(json);
}
