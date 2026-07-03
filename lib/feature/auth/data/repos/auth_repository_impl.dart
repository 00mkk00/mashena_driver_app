import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/core/network/api_exception.dart';
import 'package:mashena_driver_app/core/network/api_failure_mapper.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/core/network/token_manager.dart';
import 'package:mashena_driver_app/feature/auth/data/datasource/auth_remote_data_source.dart';
import 'package:mashena_driver_app/feature/auth/data/mappers/driver_mapper.dart';
import 'package:mashena_driver_app/feature/auth/data/mappers/login_mapper.dart';
import 'package:mashena_driver_app/feature/auth/domain/entities/driver_entity.dart';
import 'package:mashena_driver_app/feature/auth/domain/entities/login_entity.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/create_driver_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/login_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/send_otp_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/upload_driver_docs_param.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/verify_otp_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/repos/auth_repo.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final ApiClient _apiClient;
  final TokenManager _tokenManager;

  AuthRepositoryImpl(
    this._remoteDataSource,
    this._apiClient,
    this._tokenManager,
  );

  @override
  Future<Either<Failure, DriverEntity>> signup(
    CreateDriverParams params,
  ) async {
    try {
      final model = await _remoteDataSource.signup(params);
      return Right(model.toEntity());
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> sendOtp(SendOtpParams params) async {
    try {
      await _remoteDataSource.sendOtp(params);
      return const Right(unit);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> verifyOtp(VerifyOtpParams params) async {
    try {
      await _remoteDataSource.verifyOtp(params);
      return const Right(unit);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, LoginEntity>> login(LoginParams params) async {
    try {
      final model = await _remoteDataSource.login(params);
      await _tokenManager.saveTokens(
        accessToken: model.accessToken,
        refreshToken: model.refreshToken,
      );

      return Right(model.toEntity());
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
  Future<Either<Failure, Unit>> logout() async {
    try {
      await _remoteDataSource.logout();
      await getIt<TokenManager>().clearTokens(); // clear stored token

      return const Right(unit);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }
}
