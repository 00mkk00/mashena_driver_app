import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/go_online_params.dart';

abstract class HomeRepository {
  Future<Either<Failure, Unit>> goOnline(GoOnlineParams params);
  Future<Either<Failure, Unit>> goOffline();
}
