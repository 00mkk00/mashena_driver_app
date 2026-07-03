import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_state.freezed.dart';

@freezed
class LogoutState with _$LogoutState {
  const factory LogoutState.initial() = _Initial;
  const factory LogoutState.loading() = _loading;
  const factory LogoutState.success() = _success;
  const factory LogoutState.failure(String error) = _Failure;
}
