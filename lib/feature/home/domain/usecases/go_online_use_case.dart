import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/go_online_params.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class GoOnlineUseCase {
  final HomeRepository repository;

  GoOnlineUseCase(this.repository);

  Future<Either<Failure, Unit>> call(GoOnlineParams params) {
    return repository.goOnline(params);
  }
}
