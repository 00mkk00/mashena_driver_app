import 'package:mashena_driver_app/core/constants/endpoints.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/feature/home/data/models/ride_request_model.dart';
import 'package:mashena_driver_app/feature/home/data/models/start_trip_model.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_ride_request_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/go_online_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/update_location_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/update_radius_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/start_trip_params.dart';
import 'package:mashena_driver_app/feature/home/data/models/arrive_trip_model.dart';
import 'package:mashena_driver_app/feature/home/data/params/arrive_trip_params.dart';
import 'package:mashena_driver_app/feature/home/data/models/complete_trip_model.dart';
import 'package:mashena_driver_app/feature/home/data/params/complete_trip_params.dart';
import 'package:mashena_driver_app/feature/home/data/models/cancel_trip_model.dart';
import 'package:mashena_driver_app/feature/home/data/params/cancel_trip_params.dart';

abstract class HomeRemoteDataSource {
  Future<void> goOnline(GoOnlineParams params);
  Future<void> goOffline();
  Future<void> updateDriverLocation(UpdateDriverLocationParams params);
  Future<void> updateDriverRadius(UpdateDriverRadiusParams params);
  Future<RideRequestModel> getRideRequest(GetRideRequestParams params);
  Future<StartTripModel> startTrip(StartTripParams params);
  Future<ArriveTripModel> arriveTrip(ArriveTripParams params);
  Future<CompleteTripModel> completeTrip(CompleteTripParams params);
  Future<CancelTripModel> cancelTrip(CancelTripParams params);
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

  @override
  Future<StartTripModel> startTrip(StartTripParams params) async {
    final response = await apiClient.post(
      Endpoints.startTrip.replaceAll('{rideRequestId}', params.rideRequestId),
      body: params.toJson(),
    );
    return StartTripModel.fromJson(response);
  }

  @override
  Future<ArriveTripModel> arriveTrip(ArriveTripParams params) async {
    final response = await apiClient.post(
      Endpoints.arriveTrip.replaceAll('{rideRequestId}', params.rideRequestId),
      body: params.toJson(),
    );
    return ArriveTripModel.fromJson(response);
  }

  @override
  Future<CompleteTripModel> completeTrip(CompleteTripParams params) async {
    final response = await apiClient.post(
      Endpoints.completeTrip.replaceAll(
        '{rideRequestId}',
        params.rideRequestId,
      ),
      body: params.toJson(),
    );
    return CompleteTripModel.fromJson(response);
  }

  @override
  Future<CancelTripModel> cancelTrip(CancelTripParams params) async {
    final response = await apiClient.post(
      Endpoints.cancelTrip.replaceAll('{rideRequestId}', params.rideRequestId),
      body: params.toJson(),
    );
    return CancelTripModel.fromJson(response);
  }
}
