import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/create_shared_ride_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/shared_ride_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class CreateSharedRideUseCase {
  final HomeRepository repository;

  CreateSharedRideUseCase(this.repository);

  Future<Either<Failure, SharedRideEntity>> call(CreateSharedRideParams params) {
    return repository.createSharedRide(params);
  }
}
