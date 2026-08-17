import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_notifications_response_entity.freezed.dart';

@freezed
class ReadNotificationsResponseEntity with _$ReadNotificationsResponseEntity {
  const factory ReadNotificationsResponseEntity({
    required int count,
  }) = _ReadNotificationsResponseEntity;
}
