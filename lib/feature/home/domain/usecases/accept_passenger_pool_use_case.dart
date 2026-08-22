import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/accept_passenger_pool_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/accept_passenger_pool_response_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class AcceptPassengerPoolUseCase {
  final HomeRepository repository;

  AcceptPassengerPoolUseCase(this.repository);

  Future<Either<Failure, AcceptPassengerPoolResponseEntity>> call(
    AcceptPassengerPoolParams params,
  ) {
    return repository.acceptPassengerPool(params);
  }
}
