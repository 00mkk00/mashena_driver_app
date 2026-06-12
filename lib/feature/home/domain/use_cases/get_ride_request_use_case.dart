import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_ride_request_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class GetRideRequestUseCase {
  final HomeRepository repository;

  GetRideRequestUseCase(this.repository);

  Future<Either<Failure, RideRequestEntity>> call(GetRideRequestParams params) {
    return repository.getRideRequest(params);
  }
}