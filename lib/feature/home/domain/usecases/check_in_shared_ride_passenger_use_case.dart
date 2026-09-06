import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/check_in_shared_ride_passenger_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/shared_ride_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class CheckInSharedRidePassengerUseCase {
  final HomeRepository repository;

  CheckInSharedRidePassengerUseCase(this.repository);

  Future<Either<Failure, SharedRidePassengerEntity>> call(CheckInSharedRidePassengerParams params) {
    return repository.checkInSharedRidePassenger(params);
  }
}
