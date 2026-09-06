import 'package:mashena_driver_app/feature/notification/data/models/read_notifications_response_model.dart';
import 'package:mashena_driver_app/feature/notification/domain/entities/read_notifications_response_entity.dart';

extension ReadNotificationsResponseMapper on ReadNotificationsResponseModel {
  ReadNotificationsResponseEntity toEntity() {
    return ReadNotificationsResponseEntity(
      count: count ?? 0,
    );
  }
}
