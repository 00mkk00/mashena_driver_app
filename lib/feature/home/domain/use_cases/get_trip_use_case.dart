import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_trip_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/trip_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class GetTripUseCase {
  final HomeRepository repository;

  GetTripUseCase(this.repository);

  Future<Either<Failure, TripEntity>> call(GetTripParams params) {
    return repository.getTripByRide(params);
  }
}