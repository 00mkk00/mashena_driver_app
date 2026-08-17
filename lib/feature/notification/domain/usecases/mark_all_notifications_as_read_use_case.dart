import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/notification/domain/entities/read_notifications_response_entity.dart';
import 'package:mashena_driver_app/feature/notification/domain/repos/notification_repository.dart';

class MarkAllNotificationsAsReadUseCase {
  final NotificationRepository repository;

  MarkAllNotificationsAsReadUseCase(this.repository);

  Future<Either<Failure, ReadNotificationsResponseEntity>> call() {
    return repository.markAllNotificationsAsRead();
  }
}
