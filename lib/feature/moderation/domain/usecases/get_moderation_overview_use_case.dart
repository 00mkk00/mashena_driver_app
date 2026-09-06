import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/moderation_overview_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/repos/moderation_repository.dart';

class GetModerationOverviewUseCase {
  final ModerationRepository repository;

  GetModerationOverviewUseCase(this.repository);

  Future<Either<Failure, ModerationOverviewEntity>> call() {
    return repository.getModerationOverview();
  }
}
