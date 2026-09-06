import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/rate_trip_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/rate_trip_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class RateTripUseCase {
  final HomeRepository repository;

  RateTripUseCase(this.repository);

  Future<Either<Failure, RateTripEntity>> call(RateTripParams params) {
    return repository.rateTrip(params);
  }
}
