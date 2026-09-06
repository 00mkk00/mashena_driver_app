import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/get_appeal_details_params.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/get_appeals_params.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/get_penalties_params.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/get_violations_params.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/submit_appeal_params.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/appeal_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/moderation_overview_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/penalty_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/restriction_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/violation_entity.dart';

abstract class ModerationRepository {
  Future<Either<Failure, ModerationOverviewEntity>> getModerationOverview();

  Future<Either<Failure, List<ViolationEntity>>> getViolations(
    GetViolationsParams params,
  );

  Future<Either<Failure, List<PenaltyEntity>>> getPenalties(
    GetPenaltiesParams params,
  );

  Future<Either<Failure, List<RestrictionEntity>>> getActiveRestrictions();

  Future<Either<Failure, List<AppealEntity>>> getAppeals(
    GetAppealsParams params,
  );

  Future<Either<Failure, AppealEntity>> submitAppeal(
    SubmitAppealParams params,
  );

  Future<Either<Failure, AppealEntity>> getAppealDetails(
    GetAppealDetailsParams params,
  );
}
