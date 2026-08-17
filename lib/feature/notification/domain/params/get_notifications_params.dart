import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_notifications_params.freezed.dart';
part 'get_notifications_params.g.dart';

@freezed
class GetNotificationsParams with _$GetNotificationsParams {
  const factory GetNotificationsParams({
    int? skip,
    int? limit,
  }) = _GetNotificationsParams;

  factory GetNotificationsParams.fromJson(Map<String, dynamic> json) =>
      _$GetNotificationsParamsFromJson(json);
}
