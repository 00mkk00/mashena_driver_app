import 'package:mashena_driver_app/core/constants/endpoints.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/feature/shared/data/models/app_settings_model.dart';
import 'package:mashena_driver_app/feature/shared/domain/params/app_settings_params.dart';

abstract class SharedRemoteDataSource {
  Future<AppSettingsModel> getAppSetting(GetAppSettingParams params);
}



class SharedRemoteDataSourceImpl implements SharedRemoteDataSource {
  final ApiClient _apiClient;

  SharedRemoteDataSourceImpl(this._apiClient);

  @override
  Future<AppSettingsModel> getAppSetting(GetAppSettingParams params) async {
    final response = await _apiClient.get(
      '${Endpoints.appSettings}/${params.key}',
    );
    return AppSettingsModel.fromJson(response);
  }
}