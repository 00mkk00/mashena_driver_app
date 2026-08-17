import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/notification/domain/entities/notification_response_entity.dart';
import 'package:mashena_driver_app/feature/notification/domain/entities/notification_token_entity.dart';
import 'package:mashena_driver_app/feature/notification/domain/entities/read_notifications_response_entity.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/delete_notification_token_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/get_notifications_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/mark_notification_as_read_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/register_notification_token_params.dart';

abstract class NotificationRepository {
  Future<Either<Failure, NotificationTokenEntity>> registerNotificationToken(
    RegisterNotificationTokenParams params,
  );
  Future<Either<Failure, void>> deleteNotificationToken(
    DeleteNotificationTokenParams params,
  );
  Future<Either<Failure, NotificationResponseEntity>> getNotifications(
    GetNotificationsParams params,
  );
  Future<Either<Failure, ReadNotificationsResponseEntity>> markAllNotificationsAsRead();
  Future<Either<Failure, ReadNotificationsResponseEntity>> markNotificationAsRead(
    MarkNotificationAsReadParams params,
  );
}
