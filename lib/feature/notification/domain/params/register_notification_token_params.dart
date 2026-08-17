import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_notification_token_params.freezed.dart';
part 'register_notification_token_params.g.dart';

@freezed
class RegisterNotificationTokenParams with _$RegisterNotificationTokenParams {
  const factory RegisterNotificationTokenParams({
    String? token,
    String? platform,
    String? deviceId,
  }) = _RegisterNotificationTokenParams;

  factory RegisterNotificationTokenParams.fromJson(Map<String, dynamic> json) =>
      _$RegisterNotificationTokenParamsFromJson(json);
}
