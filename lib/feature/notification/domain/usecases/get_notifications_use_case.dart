import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/notification/domain/entities/notification_response_entity.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/get_notifications_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/repos/notification_repository.dart';

class GetNotificationsUseCase {
  final NotificationRepository repository;

  GetNotificationsUseCase(this.repository);

  Future<Either<Failure, NotificationResponseEntity>> call(
    GetNotificationsParams params,
  ) {
    return repository.getNotifications(params);
  }
}
