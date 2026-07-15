import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_params.freezed.dart';

@freezed
class GetAppSettingParams with _$GetAppSettingParams {
  const factory GetAppSettingParams({required String key}) =
      _GetAppSettingParams;
}
