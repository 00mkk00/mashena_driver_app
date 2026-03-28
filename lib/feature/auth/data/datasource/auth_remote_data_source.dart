import 'package:mashena_driver_app/core/constants/endpoints.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/feature/auth/data/models/driver_model.dart';
import 'package:mashena_driver_app/feature/auth/domin/params/create_driver_params.dart';

abstract class AuthRemoteDataSource {
  Future<DriverModel> signup(CreateDriverParams params);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClient apiClient;

  AuthRemoteDataSourceImpl(this.apiClient);

  @override
  Future<DriverModel> signup(CreateDriverParams params) async {
    final response = await apiClient.post(
      Endpoints.signup,
      body: params.toJson(),
    );

    return DriverModel.fromJson(response.data);
  }
}
