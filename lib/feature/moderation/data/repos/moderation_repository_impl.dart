import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/core/network/api_exception.dart';
import 'package:mashena_driver_app/core/network/api_failure_mapper.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/feature/moderation/data/datasource/moderation_remote_data_source.dart';
import 'package:mashena_driver_app/feature/moderation/data/mappers/moderation_mappers.dart';
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
import 'package:mashena_driver_app/feature/moderation/domain/repos/moderation_repository.dart';

class ModerationRepositoryImpl implements ModerationRepository {
  final ModerationRemoteDataSource _remoteDataSource;
  final ApiClient _apiClient;

  ModerationRepositoryImpl(this._remoteDataSource, this._apiClient);

  @override
  Future<Either<Failure, ModerationOverviewEntity>> getModerationOverview() async {
    try {
      final model = await _remoteDataSource.getModerationOverview();
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ViolationEntity>>> getViolations(
    GetViolationsParams params,
  ) async {
    try {
      final models = await _remoteDataSource.getViolations(params);
      final entities = models.map((m) => m.toEntity()).toList();
      return Right(entities);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<PenaltyEntity>>> getPenalties(
    GetPenaltiesParams params,
  ) async {
    try {
      final models = await _remoteDataSource.getPenalties(params);
      final entities = models.map((m) => m.toEntity()).toList();
      return Right(entities);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<RestrictionEntity>>> getActiveRestrictions() async {
    try {
      final models = await _remoteDataSource.getActiveRestrictions();
      final entities = models.map((m) => m.toEntity()).toList();
      return Right(entities);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AppealEntity>>> getAppeals(
    GetAppealsParams params,
  ) async {
    try {
      final models = await _remoteDataSource.getAppeals(params);
      final entities = models.map((m) => m.toEntity()).toList();
      return Right(entities);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AppealEntity>> submitAppeal(
    SubmitAppealParams params,
  ) async {
    try {
      final model = await _remoteDataSource.submitAppeal(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AppealEntity>> getAppealDetails(
    GetAppealDetailsParams params,
  ) async {
    try {
      final model = await _remoteDataSource.getAppealDetails(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }
}
