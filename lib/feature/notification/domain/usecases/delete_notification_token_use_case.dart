import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/delete_notification_token_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/repos/notification_repository.dart';

class DeleteNotificationTokenUseCase {
  final NotificationRepository repository;

  DeleteNotificationTokenUseCase(this.repository);

  Future<Either<Failure, void>> call(
    DeleteNotificationTokenParams params,
  ) {
    return repository.deleteNotificationToken(params);
  }
}
