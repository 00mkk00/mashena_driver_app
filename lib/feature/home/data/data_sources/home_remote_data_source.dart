import 'package:mashena_driver_app/core/constants/endpoints.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/feature/home/data/params/go_online_params.dart';

abstract class HomeRemoteDataSource {
  Future<void> goOnline(GoOnlineParams params);
  Future<void> goOffline();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiClient apiClient;
  HomeRemoteDataSourceImpl(this.apiClient);
  @override
  Future<void> goOnline(GoOnlineParams params) async {
    await apiClient.post(Endpoints.goOnline, body: params.toJson());
  }

  @override
  Future<void> goOffline() async {
    await apiClient.post(Endpoints.goOffline);
  }
}
