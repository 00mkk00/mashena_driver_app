import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/home/data/params/arrive_trip_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_ride_request_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/go_online_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/start_trip_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/update_location_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/update_radius_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/start_trip_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/arrive_trip_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/complete_trip_entity.dart';
import 'package:mashena_driver_app/feature/home/data/params/complete_trip_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/cancel_trip_entity.dart';
import 'package:mashena_driver_app/feature/home/data/params/cancel_trip_params.dart';

import 'package:mashena_driver_app/feature/home/data/params/get_rating_tags_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/rate_trip_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_document_entity.dart';
import 'package:mashena_driver_app/feature/home/data/params/upload_driver_docs_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_trip_history_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_wallet_summary_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/rate_trip_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/rating_tag_entity.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_driver_trip_history_params.dart';

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
  );
  Future<Either<Failure, StartTripEntity>> startTrip(StartTripParams params);
  Future<Either<Failure, ArriveTripEntity>> arriveTrip(ArriveTripParams params);
  Future<Either<Failure, CompleteTripEntity>> completeTrip(
    CompleteTripParams params,
  );
  Future<Either<Failure, CancelTripEntity>> cancelTrip(CancelTripParams params);
  Future<Either<Failure, List<DriverTripHistoryEntity>>> getDriverTripHistory(
    GetDriverTripHistoryParams params,
  );
  Future<Either<Failure, DriverWalletSummaryEntity>> getDriverWalletSummary();
  Future<Either<Failure, RateTripEntity>> rateTrip(RateTripParams params);
  Future<Either<Failure, List<RatingTagEntity>>> getRatingTags(
    GetRatingTagsParams params,
  );
  Future<Either<Failure, List<DriverDocumentEntity>>> getDriverDocuments();
  Future<Either<Failure, void>> uploadDocuments(UploadDriverDocsParams params);
}
