import 'package:mashena_driver_app/core/constants/endpoints.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/feature/notification/data/models/notification_response_model.dart';
import 'package:mashena_driver_app/feature/notification/data/models/notification_token_model.dart';
import 'package:mashena_driver_app/feature/notification/data/models/read_notifications_response_model.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/delete_notification_token_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/get_notifications_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/mark_notification_as_read_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/register_notification_token_params.dart';

abstract class NotificationRemoteDataSource {
  Future<NotificationTokenModel> registerNotificationToken(
    RegisterNotificationTokenParams params,
  );
  Future<void> deleteNotificationToken(
    DeleteNotificationTokenParams params,
  );
  Future<NotificationResponseModel> getNotifications(
    GetNotificationsParams params,
  );
  Future<ReadNotificationsResponseModel> markAllNotificationsAsRead();
  Future<ReadNotificationsResponseModel> markNotificationAsRead(
    MarkNotificationAsReadParams params,
  );
}

class NotificationRemoteDataSourceImpl implements NotificationRemoteDataSource {
  final ApiClient apiClient;

  NotificationRemoteDataSourceImpl(this.apiClient);

  @override
  Future<NotificationTokenModel> registerNotificationToken(
    RegisterNotificationTokenParams params,
  ) async {
    final response = await apiClient.post(
      Endpoints.notificationToken,
      body: params.toJson(),
    );

    return NotificationTokenModel.fromJson(response);
  }

  @override
  Future<void> deleteNotificationToken(
    DeleteNotificationTokenParams params,
  ) async {
    await apiClient.delete(
      Endpoints.notificationToken,
      body: params.toJson(),
    );
  }

  @override
  Future<NotificationResponseModel> getNotifications(
    GetNotificationsParams params,
  ) async {
    final response = await apiClient.get(
      Endpoints.notifications,
      query: params.toJson(),
    );

    return NotificationResponseModel.fromJson(response);
  }

  @override
  Future<ReadNotificationsResponseModel> markAllNotificationsAsRead() async {
    final response = await apiClient.patch(
      Endpoints.markAllNotificationsRead,
    );

    return ReadNotificationsResponseModel.fromJson(response);
  }

  @override
  Future<ReadNotificationsResponseModel> markNotificationAsRead(
    MarkNotificationAsReadParams params,
  ) async {
    final response = await apiClient.patch(
      Endpoints.markNotificationRead.replaceAll('{id}', params.id.toString()),
    );

    return ReadNotificationsResponseModel.fromJson(response);
  }
}
