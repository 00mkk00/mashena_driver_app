import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/start_trip_entity.dart';
import 'package:mashena_driver_app/feature/home/data/params/start_trip_params.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class StartTripUseCase {
  final HomeRepository repository;

  StartTripUseCase(this.repository);

  Future<Either<Failure, StartTripEntity>> call(StartTripParams params) {
    return repository.startTrip(params);
  }
}
