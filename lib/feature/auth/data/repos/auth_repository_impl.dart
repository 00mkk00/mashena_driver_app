import 'package:mashena_driver_app/feature/auth/data/datasource/auth_remote_data_source.dart';
import 'package:mashena_driver_app/feature/auth/data/mappers/driver_mapper.dart';
import 'package:mashena_driver_app/feature/auth/domin/entities/driver_entity.dart';
import 'package:mashena_driver_app/feature/auth/domin/params/create_driver_params.dart';
import 'package:mashena_driver_app/feature/auth/domin/repos/auth_repo.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<DriverEntity> signup(CreateDriverParams params) async {
    final model = await remoteDataSource.signup(params);
    return model.toEntity();
  }
}
