import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_model.freezed.dart';
part 'app_settings_model.g.dart';

@freezed
class AppSettingsModel with _$AppSettingsModel {
  const factory AppSettingsModel({
    required String key,
    required String value,
    required String createdAt,
    required String updatedAt,
  }) = _AppSettingsModel;

  factory AppSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsModelFromJson(json);
} 