import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/constants/endpoints.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/core/storage/local_storage.dart';
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

import 'package:mashena_driver_app/feature/home/data/models/driver_document_model.dart';
import 'package:mashena_driver_app/feature/home/data/models/driver_trip_history_model.dart';
import 'package:mashena_driver_app/feature/home/data/models/driver_wallet_summary_model.dart';
import 'package:mashena_driver_app/feature/home/data/models/rate_trip_model.dart';
import 'package:mashena_driver_app/feature/home/data/models/rating_tag_model.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_driver_trip_history_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_rating_tags_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/rate_trip_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/upload_driver_docs_params.dart';

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
  Future<List<DriverTripHistoryModel>> getDriverTripHistory(
    GetDriverTripHistoryParams params,
  );
  Future<DriverWalletSummaryModel> getDriverWalletSummary();
  Future<RateTripModel> rateTrip(RateTripParams params);
  Future<List<RatingTagModel>> getRatingTags(GetRatingTagsParams params);
  Future<List<DriverDocumentModel>> getDriverDocuments();
  Future<void> uploadDocuments(UploadDriverDocsParams params);
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
    return CompleteTripModel.fromJson(response as Map<String, dynamic>);
  }

  @override
  Future<CancelTripModel> cancelTrip(CancelTripParams params) async {
    final response = await apiClient.post(
      Endpoints.cancelTrip.replaceAll('{rideRequestId}', params.rideRequestId),
      body: params.toJson(),
    );
    return CancelTripModel.fromJson(response);
  }

  @override
  Future<List<DriverTripHistoryModel>> getDriverTripHistory(
    GetDriverTripHistoryParams params,
  ) async {
    final queryParams = <String, dynamic>{};
    if (params.skip != null) queryParams['skip'] = params.skip;
    if (params.limit != null) queryParams['limit'] = params.limit;

    final response = await apiClient.get(
      Endpoints.driverTripHistory,
      query: queryParams.isNotEmpty ? queryParams : null,
    );
    final list = response['data'] as List;
    return list
        .map((e) => DriverTripHistoryModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<DriverWalletSummaryModel> getDriverWalletSummary() async {
    final response = await apiClient.get(Endpoints.driverWalletSummary);
    return DriverWalletSummaryModel.fromJson(response as Map<String, dynamic>);
  }

  @override
  Future<RateTripModel> rateTrip(RateTripParams params) async {
    final response = await apiClient.post(
      Endpoints.rateTrip.replaceAll('{tripId}', params.tripId.toString()),
      body: {
        'score': params.score,
        if (params.comment != null) 'comment': params.comment,
        if (params.tagIds != null) 'tagIds': params.tagIds,
      },
    );
    return RateTripModel.fromJson(response as Map<String, dynamic>);
  }

  @override
  Future<List<RatingTagModel>> getRatingTags(GetRatingTagsParams params) async {
    final queryParams = <String, dynamic>{
      'targetType': params.targetType,
      'isActive': params.isActive,
    };
    if (params.skip != null) queryParams['skip'] = params.skip;
    if (params.limit != null) queryParams['limit'] = params.limit;

    final savedLocale = getIt<LocalStorage>().getString('app_locale');
    final language = (savedLocale != null && savedLocale.isNotEmpty)
        ? savedLocale
        : PlatformDispatcher.instance.locale.languageCode;

    final response = await apiClient.get(
      Endpoints.ratingTags,
      query: queryParams,
      options: Options(headers: {'Accept-Language': language}),
    );
    final list = response['data'] as List;
    return list
        .map((e) => RatingTagModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<DriverDocumentModel>> getDriverDocuments() async {
    final response = await apiClient.get(Endpoints.driverDocuments);
    final list = (response is List)
        ? response
        : (response['data'] as List? ?? []);
    return list
        .map((e) => DriverDocumentModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> uploadDocuments(UploadDriverDocsParams params) async {
    final Map<String, dynamic> map = {
      "driverProfileId": params.driverProfileId,
      "docType": params.docType.name,
      "file": await MultipartFile.fromFile(params.filePath),
    };

    if (params.issuedAt != null && params.issuedAt!.isNotEmpty) {
      map["issuedAt"] = params.issuedAt;
    }
    if (params.expiresAt != null && params.expiresAt!.isNotEmpty) {
      map["expiresAt"] = params.expiresAt;
    }

    final formData = FormData.fromMap(map);

    await apiClient.post(Endpoints.uploadNewDoc, body: formData);
  }
}
