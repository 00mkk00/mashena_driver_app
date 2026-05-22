import 'package:mashena_driver_app/feature/auth/data/mappers/driver_mapper.dart';
import 'package:mashena_driver_app/feature/auth/data/models/login_model.dart';
import 'package:mashena_driver_app/feature/auth/domain/entities/login_entity.dart';

extension LoginMapper on LoginModel {
  LoginEntity toEntity() {
    return LoginEntity(accessToken: accessToken, user: user.toEntity());
  }
}
