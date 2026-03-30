import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_state.freezed.dart';

@freezed
class VerifyOtpState with _$VerifyOtpState {
  const factory VerifyOtpState.initial() = _Initial;
  const factory VerifyOtpState.loading() = _Loading;
  const factory VerifyOtpState.success() = _Success;
  const factory VerifyOtpState.error(String message) = _Error;
}