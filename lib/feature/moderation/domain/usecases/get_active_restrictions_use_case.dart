import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/restriction_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/repos/moderation_repository.dart';

class GetActiveRestrictionsUseCase {
  final ModerationRepository repository;

  GetActiveRestrictionsUseCase(this.repository);

  Future<Either<Failure, List<RestrictionEntity>>> call() {
    return repository.getActiveRestrictions();
  }
}
