import 'package:mashena_driver_app/feature/auth/domin/entities/driver_entity.dart';
import 'package:mashena_driver_app/feature/auth/domin/params/create_driver_params.dart';
import 'package:mashena_driver_app/feature/auth/domin/repos/auth_repo.dart';

class CreateDriverUseCase {
  final DriverRepository repository;

  CreateDriverUseCase(this.repository);

  Future<DriverEntity> call(CreateDriverParams params) {
    return repository.createDriver(params);
  }
}