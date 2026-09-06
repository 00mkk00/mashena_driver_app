import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/shared_ride_ready_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/shared_ride_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class SharedRideReadyUseCase {
  final HomeRepository repository;

  SharedRideReadyUseCase(this.repository);

  Future<Either<Failure, SharedRideEntity>> call(SharedRideReadyParams params) {
    return repository.sharedRideReady(params);
  }
}
