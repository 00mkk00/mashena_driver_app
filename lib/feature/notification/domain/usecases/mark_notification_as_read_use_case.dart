import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/notification/domain/entities/read_notifications_response_entity.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/mark_notification_as_read_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/repos/notification_repository.dart';

class MarkNotificationAsReadUseCase {
  final NotificationRepository repository;

  MarkNotificationAsReadUseCase(this.repository);

  Future<Either<Failure, ReadNotificationsResponseEntity>> call(
    MarkNotificationAsReadParams params,
  ) {
    return repository.markNotificationAsRead(params);
  }
}
