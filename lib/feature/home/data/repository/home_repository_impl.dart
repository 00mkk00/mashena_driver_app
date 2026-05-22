import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/core/network/api_exception.dart';
import 'package:mashena_driver_app/core/network/api_failure_mapper.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/feature/home/data/data_sources/home_remote_data_source.dart';
import 'package:mashena_driver_app/feature/home/data/params/go_online_params.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _remoteDataSource;
  final ApiClient _apiClient;
  HomeRepositoryImpl(this._remoteDataSource, this._apiClient);
  @override
  Future<Either<Failure, Unit>> goOnline(GoOnlineParams params) async {
    try {
      await _remoteDataSource.goOnline(params);
      return Right(unit);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> goOffline() async {
    try {
      await _remoteDataSource.goOffline();
      return const Right(unit);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }
}
