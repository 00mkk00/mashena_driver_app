import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/auth/domain/entities/login_entity.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;

  /// ✅ Navigation states
  const factory LoginState.success(LoginEntity auth) = _Success;
  const factory LoginState.needsUpload(LoginEntity? auth) = _NeedsUpload;
  const factory LoginState.requireOtp({
    required int userId,
    required String email,
  }) = _RequireOtp;

  /// ℹ️ Info states
  const factory LoginState.approvalStatus(String status) = _ApprovalStatus;

  const factory LoginState.error(String message) = _Error;
}
