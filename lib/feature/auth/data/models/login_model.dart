import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/auth/data/models/driver_model.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    required String refreshToken,
    required String accessToken,
    required DriverModel user,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}
