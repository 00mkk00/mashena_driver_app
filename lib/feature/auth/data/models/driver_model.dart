import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_model.freezed.dart';
part 'driver_model.g.dart';

@freezed
class DriverModel with _$DriverModel {
  const factory DriverModel({
    required int id,
    required String email,
    required String phoneNumber,
    required DateTime createdAt,
    required DriverProfileModel driverProfile,
  }) = _DriverModel;

  factory DriverModel.fromJson(Map<String, dynamic> json) =>
      _$DriverModelFromJson(json);
}

@freezed
class DriverProfileModel with _$DriverProfileModel {
  const factory DriverProfileModel({
    required int userId,
    required String city,
    required String approvalStatus,
    required bool isOnline,
    required bool isVerified,
  }) = _DriverProfileModel;

  factory DriverProfileModel.fromJson(Map<String, dynamic> json) =>
      _$DriverProfileModelFromJson(json);
}