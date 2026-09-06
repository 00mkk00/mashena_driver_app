import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_document_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class GetDriverDocumentsUseCase {
  final HomeRepository repository;

  GetDriverDocumentsUseCase(this.repository);

  Future<Either<Failure, List<DriverDocumentEntity>>> call() {
    return repository.getDriverDocuments();
  }
}
