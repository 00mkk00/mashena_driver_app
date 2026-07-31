import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/upload_driver_docs_params.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';

class UploadDriverDocsUseCase {
  final HomeRepository repository;

  UploadDriverDocsUseCase(this.repository);

  Future<Either<Failure, void>> call(UploadDriverDocsParams params) {
    return repository.uploadDocuments(params);
  }
}
