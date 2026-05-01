import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/auth/data/enums/approval_status_enum.dart';
import 'package:mashena_driver_app/feature/auth/domain/entities/driver_entity.dart';

part 'driver_model.freezed.dart';
part 'driver_model.g.dart';

@freezed
class DriverModel with _$DriverModel {
  const factory DriverModel({
    required int id,
    required String fullName,
    required String email,
    required String phoneNumber,
    @Default([]) List<RoleModel> roles,
    @Default('') String activeRole,
    @Default(DriverApprovalInfoModel())
    DriverApprovalInfoModel driverApprovalInfo,
  }) = _DriverModel;

  factory DriverModel.fromJson(Map<String, dynamic> json) =>
      _$DriverModelFromJson(json);
}

@freezed
class RoleModel with _$RoleModel {
  const factory RoleModel({
    required int id,
    required String name,
  }) = _RoleModel;

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