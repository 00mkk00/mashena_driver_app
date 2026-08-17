import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_notification_token_params.freezed.dart';
part 'delete_notification_token_params.g.dart';

@freezed
class DeleteNotificationTokenParams with _$DeleteNotificationTokenParams {
  const factory DeleteNotificationTokenParams({
    String? token,
  }) = _DeleteNotificationTokenParams;

  factory DeleteNotificationTokenParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteNotificationTokenParamsFromJson(json);
}
