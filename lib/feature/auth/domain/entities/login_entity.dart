import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/auth/domain/entities/driver_entity.dart';
part 'login_entity.freezed.dart';

@freezed
class LoginEntity with _$LoginEntity {
  const factory LoginEntity({
    required String accessToken,
    required DriverEntity user,
  }) = _LoginEntity;
}
