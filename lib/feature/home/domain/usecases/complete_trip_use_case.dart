import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/complete_trip_entity.dart';
import 'package:mashena_driver_app/feature/home/data/params/complete_trip_params.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';

class CompleteTripUseCase {
  final HomeRepository repository;

  CompleteTripUseCase(this.repository);

  Future<Either<Failure, CompleteTripEntity>> call(CompleteTripParams params) {
    return repository.completeTrip(params);
  }
}
