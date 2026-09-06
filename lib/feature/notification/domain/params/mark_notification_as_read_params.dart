import 'package:freezed_annotation/freezed_annotation.dart';

part 'mark_notification_as_read_params.freezed.dart';
part 'mark_notification_as_read_params.g.dart';

@freezed
class MarkNotificationAsReadParams with _$MarkNotificationAsReadParams {
  const factory MarkNotificationAsReadParams({
    required int id,
  }) = _MarkNotificationAsReadParams;

  factory MarkNotificationAsReadParams.fromJson(Map<String, dynamic> json) =>
      _$MarkNotificationAsReadParamsFromJson(json);
}
