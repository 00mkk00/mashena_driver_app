import 'package:mashena_driver_app/core/constants/endpoints.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/feature/home/data/models/ride_request_model.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_ride_request_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/go_online_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/update_location_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/update_radius_params.dart';

abstract class HomeRemoteDataSource {
  Future<void> goOnline(GoOnlineParams params);
  Future<void> goOffline();
  Future<void> updateDriverLocation(UpdateDriverLocationParams params);
  Future<void> updateDriverRadius(UpdateDriverRadiusParams params);
  Future<RideRequestModel> getRideRequest(GetRideRequestParams params); // 👈 new

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

  @override
  Future<void> updateDriverLocation(UpdateDriverLocationParams params) async {
    await apiClient.post(Endpoints.updateDriverLocation, body: params.toJson());
  }

  @override
  Future<void> updateDriverRadius(UpdateDriverRadiusParams params) async {
    await apiClient.post(Endpoints.updateDriverRadius, body: params.toJson());
  }
 @override
Future<RideRequestModel> getRideRequest(GetRideRequestParams params) async {
  final response = await apiClient.get(
    '${Endpoints.rideRequest}/${params.id}',
  );
  return RideRequestModel.fromJson(response);
}
}
