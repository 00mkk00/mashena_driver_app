import 'package:dio/dio.dart';
import 'package:mashena_driver_app/core/constants/endpoints.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/feature/auth/data/models/driver_model.dart';
import 'package:mashena_driver_app/feature/auth/data/models/login_model.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/create_driver_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/login_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/send_otp_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/upload_driver_docs_param.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/verify_otp_params.dart';

abstract class AuthRemoteDataSource {
  Future<DriverModel> signup(CreateDriverParams params);
  Future<LoginModel> login(LoginParams params);
  Future<void> sendOtp(SendOtpParams params);

  Future<void> verifyOtp(VerifyOtpParams params);
  Future<void> uploadDocuments(UploadDriverDocsParams params);
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

    return DriverModel.fromJson(response);
  }

  @override
  Future<void> sendOtp(params) async {
    await apiClient.post(Endpoints.sendOtp, body: params.toJson());
  }

  @override
  Future<void> verifyOtp(params) async {
    await apiClient.post(Endpoints.verifyOtp, body: params.toJson());
  }

  @override
  Future<LoginModel> login(LoginParams params) async {
    final response = await apiClient.post(
      Endpoints.login,
      body: params.toJson(),
    );

    return LoginModel.fromJson(response);
  }

  @override
  Future<void> uploadDocuments(UploadDriverDocsParams params) async {
    final formData = FormData.fromMap({
      "userId": params.userId,
      "nationalIdNumber": params.nationalIdNumber,
      "driverLicenseNumber": params.driverLicenseNumber,
      "mechanicCardNumber": params.mechanicCardNumber,
      "vehiclePlateNumber": params.vehiclePlateNumber,
      "insurancePolicyNumber": params.insurancePolicyNumber,
      "vehicleType": params.vehicleType,
      "vehicleModel": params.vehicleModel,
      "vehicleColor": params.vehicleColor,
      "vehicleYear": params.vehicleYear,
      "image": await MultipartFile.fromFile(params.imagePath),
    });

    await apiClient.post(Endpoints.uploadDocs, body: formData);
  }
}
