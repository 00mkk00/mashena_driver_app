import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/get_penalties_params.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/penalty_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/repos/moderation_repository.dart';

class GetPenaltiesUseCase {
  final ModerationRepository repository;

  GetPenaltiesUseCase(this.repository);

  Future<Either<Failure, List<PenaltyEntity>>> call(
    GetPenaltiesParams params,
  ) {
    return repository.getPenalties(params);
  }
}
