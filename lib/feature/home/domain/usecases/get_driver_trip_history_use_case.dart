import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_driver_trip_history_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_trip_history_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class GetDriverTripHistoryUseCase {
  final HomeRepository repository;

  GetDriverTripHistoryUseCase(this.repository);

  Future<Either<Failure, List<DriverTripHistoryEntity>>> call(
    GetDriverTripHistoryParams params,
  ) {
    return repository.getDriverTripHistory(params);
  }
}
