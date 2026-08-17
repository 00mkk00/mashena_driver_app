import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/core/network/api_exception.dart';
import 'package:mashena_driver_app/core/network/api_failure_mapper.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/feature/notification/data/datasource/notification_remote_data_source.dart';
import 'package:mashena_driver_app/feature/notification/data/mappers/notification_response_mapper.dart';
import 'package:mashena_driver_app/feature/notification/data/mappers/notification_token_mapper.dart';
import 'package:mashena_driver_app/feature/notification/data/mappers/read_notifications_response_mapper.dart';
import 'package:mashena_driver_app/feature/notification/domain/entities/notification_response_entity.dart';
import 'package:mashena_driver_app/feature/notification/domain/entities/notification_token_entity.dart';
import 'package:mashena_driver_app/feature/notification/domain/entities/read_notifications_response_entity.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/delete_notification_token_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/get_notifications_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/mark_notification_as_read_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/params/register_notification_token_params.dart';
import 'package:mashena_driver_app/feature/notification/domain/repos/notification_repository.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationRemoteDataSource _remoteDataSource;
  final ApiClient _apiClient;

  NotificationRepositoryImpl(
    this._remoteDataSource,
    this._apiClient,
  );

  @override
  Future<Either<Failure, NotificationTokenEntity>> registerNotificationToken(
    RegisterNotificationTokenParams params,
  ) async {
    try {
      final model = await _remoteDataSource.registerNotificationToken(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteNotificationToken(
    DeleteNotificationTokenParams params,
  ) async {
    try {
      await _remoteDataSource.deleteNotificationToken(params);
      return const Right(null);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, NotificationResponseEntity>> getNotifications(
    GetNotificationsParams params,
  ) async {
    try {
      final model = await _remoteDataSource.getNotifications(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, ReadNotificationsResponseEntity>> markAllNotificationsAsRead() async {
    try {
      final model = await _remoteDataSource.markAllNotificationsAsRead();
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, ReadNotificationsResponseEntity>> markNotificationAsRead(
    MarkNotificationAsReadParams params,
  ) async {
    try {
      final model = await _remoteDataSource.markNotificationAsRead(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }
}
