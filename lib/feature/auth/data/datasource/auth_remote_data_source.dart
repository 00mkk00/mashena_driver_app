import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/feature/auth/data/models/driver_model.dart';
import 'package:mashena_driver_app/feature/auth/domin/params/create_driver_params.dart';

abstract class DriverRemoteDataSource {
  Future<DriverModel> createDriver(CreateDriverParams params);
}


class DriverRemoteDataSourceImpl implements DriverRemoteDataSource {
  final ApiClient apiClient;

  DriverRemoteDataSourceImpl(this.apiClient);

  @override
  Future<DriverModel> createDriver(CreateDriverParams params) async {
    final response = await apiClient.post(
      "/api/user/drivers",
      body: params.toJson(),
    );

    return DriverModel.fromJson(response.data);
  }
}