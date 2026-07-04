import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_entity.freezed.dart';

@freezed
class AppSettingEntity with _$AppSettingEntity {
  const factory AppSettingEntity({
    required String key,
    required String value,
    required String createdAt,
    required String updatedAt,
  }) = _AppSettingEntity;
}