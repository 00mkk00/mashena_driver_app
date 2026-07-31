import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/auth/data/enums/approval_status_enum.dart';

part 'driver_model.freezed.dart';
part 'driver_model.g.dart';

@freezed
class DriverModel with _$DriverModel {
  const factory DriverModel({
    @Default(0) int id,
    @Default('') String fullName,
    @Default('') String email,
    @Default('') String phoneNumber,
    String? createdAt,
    String? updatedAt,
    @Default([]) List<RoleModel> roles,
    @Default('') String activeRole,
    @Default(DriverApprovalInfoModel())
    DriverApprovalInfoModel driverApprovalInfo,
    DriverProfileModel? driverProfile,
  }) = _DriverModel;

  factory DriverModel.fromJson(Map<String, dynamic> json) =>
      _$DriverModelFromJson(json);
}

@freezed
class RoleModel with _$RoleModel {
  const factory RoleModel({required int id, @Default('') String name}) =
      _RoleModel;

  factory RoleModel.fromJson(Map<String, dynamic> json) =>
      _$RoleModelFromJson(json);
}

@freezed
class DriverApprovalInfoModel with _$DriverApprovalInfoModel {
  const factory DriverApprovalInfoModel({
    @Default(false) bool isVerified,
    @Default(false) bool hasApprovalRequest,
    DriverApprovalRequestStatus? approvalRequestStatus,
  }) = _DriverApprovalInfoModel;

  factory DriverApprovalInfoModel.fromJson(Map<String, dynamic> json) =>
      _$DriverApprovalInfoModelFromJson(json);
}

@freezed
class DriverProfileModel with _$DriverProfileModel {
  const factory DriverProfileModel({
    @Default(0) int id,
    @Default(0) int userId,
    String? city,
    String? approvalStatus,
    @Default(false) bool isOnline,
    String? emailVerifiedAt,
    String? phoneVerifiedAt,
    String? lastLoginAt,
    String? createdAt,
    String? updatedAt,
  }) = _DriverProfileModel;

  factory DriverProfileModel.fromJson(Map<String, dynamic> json) =>
      _$DriverProfileModelFromJson(json);
}
