import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/notification/domain/entities/notification_token_entity.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/register_notification_token_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/repos/notification_repository.dart';

class RegisterNotificationTokenUseCase {
  final NotificationRepository repository;

  RegisterNotificationTokenUseCase(this.repository);

  Future<Either<Failure, NotificationTokenEntity>> call(
    RegisterNotificationTokenParams params,
  ) {
    return repository.registerNotificationToken(params);
  }
}
