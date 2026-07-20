import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class GoOfflineUseCase {
  final HomeRepository repository;

  GoOfflineUseCase(this.repository);

  Future<Either<Failure, Unit>> call() {
    return repository.goOffline();
  }
}
