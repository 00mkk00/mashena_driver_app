import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/get_violations_params.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/violation_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/repos/moderation_repository.dart';

class GetViolationsUseCase {
  final ModerationRepository repository;

  GetViolationsUseCase(this.repository);

  Future<Either<Failure, List<ViolationEntity>>> call(
    GetViolationsParams params,
  ) {
    return repository.getViolations(params);
  }
}
