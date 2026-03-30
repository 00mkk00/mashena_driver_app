import 'package:mashena_driver_app/feature/auth/domain/entities/login_entity.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/login_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/repos/auth_repo.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<LoginEntity> call(LoginParams params) {
    return repository.login(params);
  }
}