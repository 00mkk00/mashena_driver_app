import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/update_location_params.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class UpdateDriverLocationUseCase {
  final HomeRepository repository;

  UpdateDriverLocationUseCase(this.repository);

  Future<Either<Failure, Unit>> call(UpdateDriverLocationParams params) {
    return repository.updateDriverLocation(params);
  }
}
