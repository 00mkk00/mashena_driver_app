import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_ride_request_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/go_online_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/update_location_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/update_radius_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, Unit>> goOnline(GoOnlineParams params);
  Future<Either<Failure, Unit>> goOffline();
  Future<Either<Failure, Unit>> updateDriverLocation(
    UpdateDriverLocationParams params,
  );
  Future<Either<Failure, Unit>> updateDriverRadius(
    UpdateDriverRadiusParams params,
  );
  Future<Either<Failure, RideRequestEntity>> getRideRequest(
    GetRideRequestParams params,
  ); // 👈
}
