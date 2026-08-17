import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/shared_ride_cancel_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/shared_ride_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class SharedRideCancelUseCase {
  final HomeRepository repository;

  SharedRideCancelUseCase(this.repository);

  Future<Either<Failure, SharedRideEntity>> call(SharedRideCancelParams params) {
    return repository.sharedRideCancel(params);
  }
}
