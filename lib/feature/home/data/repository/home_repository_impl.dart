import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/core/network/api_exception.dart';
import 'package:mashena_driver_app/core/network/api_failure_mapper.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/feature/home/data/data_sources/home_remote_data_source.dart';
import 'package:mashena_driver_app/feature/home/data/mappers/ride_request_mapper.dart';
import 'package:mashena_driver_app/feature/home/data/mappers/start_trip_mapper.dart';
import 'package:mashena_driver_app/feature/home/data/params/arrive_trip_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_ride_request_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/go_online_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/update_location_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/update_radius_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/start_trip_entity.dart';
import 'package:mashena_driver_app/feature/home/data/params/start_trip_params.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/arrive_trip_entity.dart';
import 'package:mashena_driver_app/feature/home/data/mappers/arrive_trip_mapper.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/complete_trip_entity.dart';
import 'package:mashena_driver_app/feature/home/data/params/complete_trip_params.dart';
import 'package:mashena_driver_app/feature/home/data/mappers/complete_trip_mapper.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/cancel_trip_entity.dart';
import 'package:mashena_driver_app/feature/home/data/mappers/rate_trip_mapper.dart';
import 'package:mashena_driver_app/feature/home/data/params/cancel_trip_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/rate_trip_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/rate_trip_entity.dart';
import 'package:mashena_driver_app/feature/home/data/mappers/cancel_trip_mapper.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_trip_history_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_wallet_summary_entity.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_driver_trip_history_params.dart';
import 'package:mashena_driver_app/feature/home/data/mappers/driver_trip_history_mapper.dart';
import 'package:mashena_driver_app/feature/home/data/mappers/driver_wallet_summary_mapper.dart';
import 'package:mashena_driver_app/feature/home/data/mappers/driver_document_mapper.dart';
import 'package:mashena_driver_app/feature/home/data/mappers/rating_tag_mapper.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_rating_tags_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/upload_driver_docs_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_document_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/rating_tag_entity.dart';
import 'package:mashena_driver_app/feature/home/data/params/create_shared_ride_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/shared_ride_entity.dart';
import 'package:mashena_driver_app/feature/home/data/mappers/shared_ride_mapper.dart';
import 'package:mashena_driver_app/feature/home/data/params/shared_ride_ready_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/shared_ride_start_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/shared_ride_complete_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/shared_ride_cancel_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/remove_shared_ride_passenger_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/check_in_shared_ride_passenger_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/on_board_shared_ride_passenger_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/drop_off_shared_ride_passenger_params.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _remoteDataSource;
  final ApiClient _apiClient;
  HomeRepositoryImpl(this._remoteDataSource, this._apiClient);
  @override
  Future<Either<Failure, Unit>> goOnline(GoOnlineParams params) async {
    try {
      await _remoteDataSource.goOnline(params);
      return Right(unit);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> goOffline() async {
    try {
      await _remoteDataSource.goOffline();
      return const Right(unit);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateDriverLocation(
    UpdateDriverLocationParams params,
  ) async {
    try {
      await _remoteDataSource.updateDriverLocation(params);
      return const Right(unit);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateDriverRadius(
    UpdateDriverRadiusParams params,
  ) async {
    try {
      await _remoteDataSource.updateDriverRadius(params);
      return const Right(unit);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, RideRequestEntity>> getRideRequest(
    GetRideRequestParams params,
  ) async {
    try {
      final model = await _remoteDataSource.getRideRequest(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, StartTripEntity>> startTrip(
    StartTripParams params,
  ) async {
    try {
      final model = await _remoteDataSource.startTrip(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(
        mapApiExceptionToFailure(e, _apiClient),
      ); // assuming mapApiExceptionToFailure
    } catch (e) {
      return Left(
        Failure(FailureCode.unknown, rawMessage: e.toString()),
      ); // assuming FailureCode.unknown
    }
  }

  @override
  Future<Either<Failure, ArriveTripEntity>> arriveTrip(
    ArriveTripParams params,
  ) async {
    try {
      final model = await _remoteDataSource.arriveTrip(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, CompleteTripEntity>> completeTrip(
    CompleteTripParams params,
  ) async {
    try {
      final model = await _remoteDataSource.completeTrip(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, CancelTripEntity>> cancelTrip(
    CancelTripParams params,
  ) async {
    try {
      final model = await _remoteDataSource.cancelTrip(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<DriverTripHistoryEntity>>> getDriverTripHistory(
    GetDriverTripHistoryParams params,
  ) async {
    try {
      final models = await _remoteDataSource.getDriverTripHistory(params);
      final entities = models.map((m) => m.toEntity()).toList();
      return Right(entities);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, DriverWalletSummaryEntity>>
  getDriverWalletSummary() async {
    try {
      final model = await _remoteDataSource.getDriverWalletSummary();
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, RateTripEntity>> rateTrip(
    RateTripParams params,
  ) async {
    try {
      final model = await _remoteDataSource.rateTrip(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<RatingTagEntity>>> getRatingTags(
    GetRatingTagsParams params,
  ) async {
    try {
      final models = await _remoteDataSource.getRatingTags(params);
      final entities = models.map((m) => m.toEntity()).toList();
      return Right(entities);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<DriverDocumentEntity>>>
  getDriverDocuments() async {
    try {
      final models = await _remoteDataSource.getDriverDocuments();
      final entities = models.map((m) => m.toEntity()).toList();
      return Right(entities);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> uploadDocuments(
    UploadDriverDocsParams params,
  ) async {
    try {
      await _remoteDataSource.uploadDocuments(params);
      return const Right(null);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SharedRideEntity>> createSharedRide(
    CreateSharedRideParams params,
  ) async {
    try {
      final model = await _remoteDataSource.createSharedRide(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SharedRideEntity>> sharedRideReady(
    SharedRideReadyParams params,
  ) async {
    try {
      final model = await _remoteDataSource.sharedRideReady(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SharedRideEntity>> sharedRideStart(
    SharedRideStartParams params,
  ) async {
    try {
      final model = await _remoteDataSource.sharedRideStart(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SharedRideEntity>> sharedRideComplete(
    SharedRideCompleteParams params,
  ) async {
    try {
      final model = await _remoteDataSource.sharedRideComplete(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SharedRideEntity>> sharedRideCancel(
    SharedRideCancelParams params,
  ) async {
    try {
      final model = await _remoteDataSource.sharedRideCancel(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SharedRideEntity>> removeSharedRidePassenger(
    RemoveSharedRidePassengerParams params,
  ) async {
    try {
      final model = await _remoteDataSource.removeSharedRidePassenger(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SharedRidePassengerEntity>> checkInSharedRidePassenger(
    CheckInSharedRidePassengerParams params,
  ) async {
    try {
      final model = await _remoteDataSource.checkInSharedRidePassenger(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SharedRidePassengerEntity>> onBoardSharedRidePassenger(
    OnBoardSharedRidePassengerParams params,
  ) async {
    try {
      final model = await _remoteDataSource.onBoardSharedRidePassenger(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SharedRidePassengerEntity>> dropOffSharedRidePassenger(
    DropOffSharedRidePassengerParams params,
  ) async {
    try {
      final model = await _remoteDataSource.dropOffSharedRidePassenger(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }
}
