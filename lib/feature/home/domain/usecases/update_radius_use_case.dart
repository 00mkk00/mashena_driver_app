import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/update_radius_params.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class UpdateDriverRadiusUseCase {
  final HomeRepository repository;

  UpdateDriverRadiusUseCase(this.repository);

  Future<Either<Failure, Unit>> call(UpdateDriverRadiusParams params) {
    return repository.updateDriverRadius(params);
  }
}
