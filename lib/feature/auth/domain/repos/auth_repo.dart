import 'package:mashena_driver_app/feature/auth/domain/entities/driver_entity.dart';
import 'package:mashena_driver_app/feature/auth/domain/entities/login_entity.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/create_driver_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/login_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/send_otp_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/verify_otp_params.dart';

abstract class AuthRepository {
  Future<DriverEntity> signup(CreateDriverParams params);
   Future<void> sendOtp(SendOtpParams params);
  Future<void> verifyOtp(VerifyOtpParams params);
    Future<LoginEntity> login(LoginParams params);

}
