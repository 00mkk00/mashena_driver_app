import 'package:mashena_driver_app/feature/auth/domain/entities/driver_entity.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/create_driver_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/repos/auth_repo.dart';

class SignupUseCase {
  final AuthRepository repository;

  SignupUseCase(this.repository);

  Future<DriverEntity> call(CreateDriverParams params) {
    return repository.signup(params);
  }
}
