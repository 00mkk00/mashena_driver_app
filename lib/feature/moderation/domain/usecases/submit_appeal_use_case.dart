import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/submit_appeal_params.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/appeal_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/repos/moderation_repository.dart';

class SubmitAppealUseCase {
  final ModerationRepository repository;

  SubmitAppealUseCase(this.repository);

  Future<Either<Failure, AppealEntity>> call(SubmitAppealParams params) {
    return repository.submitAppeal(params);
  }
}
