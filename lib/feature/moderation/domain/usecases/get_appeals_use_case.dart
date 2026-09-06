import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/get_appeals_params.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/appeal_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/repos/moderation_repository.dart';

class GetAppealsUseCase {
  final ModerationRepository repository;

  GetAppealsUseCase(this.repository);

  Future<Either<Failure, List<AppealEntity>>> call(
    GetAppealsParams params,
  ) {
    return repository.getAppeals(params);
  }
}
