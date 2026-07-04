import 'package:mashena_driver_app/feature/shared/data/models/app_settings_model.dart';
import 'package:mashena_driver_app/feature/shared/domain/entities/app_settings_entity.dart';


extension AppSettingMapper on AppSettingsModel {
  AppSettingEntity toEntity() {
    return AppSettingEntity(
      key: key,
      value: value,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}