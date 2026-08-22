import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_available_passenger_pools_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/passenger_pool_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class GetAvailablePassengerPoolsUseCase {
  final HomeRepository repository;

  GetAvailablePassengerPoolsUseCase(this.repository);

  Future<Either<Failure, List<PassengerPoolEntity>>> call(
    GetAvailablePassengerPoolsParams params,
  ) {
    return repository.getAvailablePassengerPools(params);
  }
}
