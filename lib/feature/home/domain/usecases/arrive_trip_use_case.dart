import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/feature/home/data/params/arrive_trip_params.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/arrive_trip_entity.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';

class ArriveTripUseCase {
  final HomeRepository repository;

  ArriveTripUseCase(this.repository);

  Future<Either<Failure, ArriveTripEntity>> call(ArriveTripParams params) {
    return repository.arriveTrip(params);
  }
}
