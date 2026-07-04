import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/shared/domain/entities/app_settings_entity.dart';
import 'package:mashena_driver_app/feature/shared/domain/params/app_settings_params.dart';
import 'package:mashena_driver_app/feature/shared/domain/repository/shared_repo.dart';

class GetAppSettingUseCase {
  final SharedRepository repository;

  GetAppSettingUseCase(this.repository);

  Future<Either<Failure, AppSettingEntity>> call(GetAppSettingParams params) {
    return repository.getAppSetting(params);
  }
}