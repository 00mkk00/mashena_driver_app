import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/remove_shared_ride_passenger_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/shared_ride_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class RemoveSharedRidePassengerUseCase {
  final HomeRepository repository;

  RemoveSharedRidePassengerUseCase(this.repository);

  Future<Either<Failure, SharedRideEntity>> call(RemoveSharedRidePassengerParams params) {
    return repository.removeSharedRidePassenger(params);
  }
}
