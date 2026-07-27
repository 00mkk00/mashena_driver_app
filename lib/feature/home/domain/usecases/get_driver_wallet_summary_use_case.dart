import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_wallet_summary_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class GetDriverWalletSummaryUseCase {
  final HomeRepository repository;

  GetDriverWalletSummaryUseCase(this.repository);

  Future<Either<Failure, DriverWalletSummaryEntity>> call() {
    return repository.getDriverWalletSummary();
  }
}
