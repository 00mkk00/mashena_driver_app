import 'package:mashena_driver_app/feature/auth/domin/entities/driver_entity.dart';
import 'package:mashena_driver_app/feature/auth/domin/params/create_driver_params.dart';

abstract class DriverRepository {
  Future<DriverEntity> createDriver(CreateDriverParams params);
}