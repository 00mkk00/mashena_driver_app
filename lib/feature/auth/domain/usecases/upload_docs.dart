import 'package:mashena_driver_app/feature/auth/domain/params/upload_driver_docs_param.dart';
import 'package:mashena_driver_app/feature/auth/domain/repos/auth_repo.dart';

import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';

class UploadDriverDocsUseCase {
  final AuthRepository repository;

  UploadDriverDocsUseCase(this.repository);

  Future<Either<Failure, void>> call(UploadDriverDocsParams params) {
    return repository.uploadDocuments(params);
  }
}
