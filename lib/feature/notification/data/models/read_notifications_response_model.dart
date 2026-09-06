import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_notifications_response_model.freezed.dart';
part 'read_notifications_response_model.g.dart';

@freezed
class ReadNotificationsResponseModel with _$ReadNotificationsResponseModel {
  const factory ReadNotificationsResponseModel({
    int? count,
  }) = _ReadNotificationsResponseModel;

  factory ReadNotificationsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ReadNotificationsResponseModelFromJson(json);
}
