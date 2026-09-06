import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/core/network/api_exception.dart';
import 'package:mashena_driver_app/core/network/api_failure_mapper.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/feature/shared/data/data_source/shared_remote_data_source.dart';
import 'package:mashena_driver_app/feature/shared/data/mappers/app_setting_mapper.dart';
import 'package:mashena_driver_app/feature/shared/domain/entities/app_settings_entity.dart';
import 'package:mashena_driver_app/feature/shared/domain/params/app_settings_params.dart';

abstract class SharedRepository {
  Future<Either<Failure, AppSettingEntity>> getAppSetting(
    GetAppSettingParams params,
  );
}

class SharedRepositoryImpl implements SharedRepository {
  final SharedRemoteDataSource _remoteDataSource;
  final ApiClient _apiClient;

  SharedRepositoryImpl(this._remoteDataSource, this._apiClient);

  @override
  Future<Either<Failure, AppSettingEntity>> getAppSetting(
    GetAppSettingParams params,
  ) async {
    try {
      final model = await _remoteDataSource.getAppSetting(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }
}
