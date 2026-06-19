import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/auth/domain/entities/driver_entity.dart';
import 'package:mashena_driver_app/feature/auth/domain/entities/login_entity.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/create_driver_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/login_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/send_otp_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/upload_driver_docs_param.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/verify_otp_params.dart';

abstract class AuthRepository {
  Future<Either<Failure, DriverEntity>> signup(CreateDriverParams params);
  Future<Either<Failure, void>> sendOtp(SendOtpParams params);
  Future<Either<Failure, void>> verifyOtp(VerifyOtpParams params);
  Future<Either<Failure, LoginEntity>> login(LoginParams params);
  Future<Either<Failure, void>> uploadDocuments(UploadDriverDocsParams params);
    Future<Either<Failure, Unit>> logout(); 

}
