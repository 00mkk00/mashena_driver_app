import 'package:mashena_driver_app/feature/auth/data/datasource/auth_remote_data_source.dart';
import 'package:mashena_driver_app/feature/auth/data/mappers/driver_mapper.dart';
import 'package:mashena_driver_app/feature/auth/data/mappers/login_mapper.dart';
import 'package:mashena_driver_app/feature/auth/domain/entities/driver_entity.dart';
import 'package:mashena_driver_app/feature/auth/domain/entities/login_entity.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/create_driver_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/login_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/send_otp_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/verify_otp_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/repos/auth_repo.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<DriverEntity> signup(CreateDriverParams params) async {
    final model = await remoteDataSource.signup(params);
    return model.toEntity();
  }

  @override
  Future<void> sendOtp(SendOtpParams params) async{
    await remoteDataSource.sendOtp(params);
  }

  @override
  Future<void> verifyOtp(VerifyOtpParams params)async {
    await remoteDataSource.verifyOtp(params);
  }
  @override
  Future<LoginEntity> login(LoginParams params) async {
    final model = await remoteDataSource.login(params);
    return model.toEntity();
  }
}
