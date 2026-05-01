import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = _Loading;

  const factory SignupState.requireOtp(String email, int userId) = _RequireOtp;

  const factory SignupState.error(String message) = _Error;
}
