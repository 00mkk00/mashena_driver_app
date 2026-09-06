import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/get_appeal_details_params.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/appeal_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/repos/moderation_repository.dart';

class GetAppealDetailsUseCase {
  final ModerationRepository repository;

  GetAppealDetailsUseCase(this.repository);

  Future<Either<Failure, AppealEntity>> call(GetAppealDetailsParams params) {
    return repository.getAppealDetails(params);
  }
}
