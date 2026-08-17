import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/constants/app_constants.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/core/network/api_exception.dart';
import 'package:mashena_driver_app/core/network/api_failure_mapper.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/core/network/token_manager.dart';
import 'package:mashena_driver_app/core/storage/local_storage.dart';
import 'package:mashena_driver_app/feature/auth/data/datasource/auth_remote_data_source.dart';
import 'package:mashena_driver_app/feature/auth/data/enums/approval_status_enum.dart';
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
  final LocalStorage _localStorage;

  AuthRepositoryImpl(
    this._remoteDataSource,
    this._apiClient,
    this._tokenManager,
    this._localStorage,
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
      if (model.user.driverApprovalInfo.approvalRequestStatus ==
          DriverApprovalRequestStatus.approved) {
        await _tokenManager.saveTokens(
          accessToken: model.accessToken,
          refreshToken: model.refreshToken,
        );
        try {
          await _localStorage.setString(
            AppConstants.driverUserKey,
            jsonEncode(model.user.toJson()),
          );
        } catch (_) {}
      }

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
      final refreshToken = _tokenManager.refreshToken;
      await _remoteDataSource.logout(refreshToken: refreshToken ?? '');
      await _tokenManager.clearTokens(); // clear stored token
      await _localStorage.remove(
        AppConstants.driverUserKey,
      ); // clear stored user

      return const Right(unit);
    } on ApiException catch (e) {
      return Left(mapApiExceptionToFailure(e, _apiClient));
    } catch (e) {
      return Left(Failure(FailureCode.unknown, rawMessage: e.toString()));
    }
  }
}
