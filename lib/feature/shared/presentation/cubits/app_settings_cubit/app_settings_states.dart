import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_states.freezed.dart';

@freezed
class AppSettingsState with _$AppSettingsState {
  const factory AppSettingsState({
    @Default(false) bool isLoadingRadius,
    @Default([]) List<int> radiusOptions,
  }) = _AppSettingsState;
}
