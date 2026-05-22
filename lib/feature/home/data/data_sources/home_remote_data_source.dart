import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';

abstract class HomeRemoteDataSource {
  Future<Either<Failure, void>> goOnline();

  Future<Either<Failure, void>> goOffline();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  @override
  Future<Either<Failure, void>> goOnline() async {
    // TODO: implement goOnline
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> goOffline() async {
    // TODO: implement goOffline
    throw UnimplementedError();
  }
}
