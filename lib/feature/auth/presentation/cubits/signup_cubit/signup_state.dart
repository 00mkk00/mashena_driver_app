import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/auth/domain/entities/driver_entity.dart';

part 'signup_state.freezed.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = _Loading;

  /// 🔥 لما يحتاج OTP بعد التسجيل
  const factory SignupState.requireOtp(
    String email,
    String phone,
  ) = _RequireOtp;

  const factory SignupState.error(String message) = _Error;
}