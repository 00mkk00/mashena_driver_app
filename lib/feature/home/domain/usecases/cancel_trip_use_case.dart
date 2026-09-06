import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/cancel_trip_entity.dart';
import 'package:mashena_driver_app/feature/home/data/params/cancel_trip_params.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';

class CancelTripUseCase {
  final HomeRepository repository;

  CancelTripUseCase(this.repository);

  Future<Either<Failure, CancelTripEntity>> call(CancelTripParams params) {
    return repository.cancelTrip(params);
  }
}
