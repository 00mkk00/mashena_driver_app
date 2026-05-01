import 'package:mashena_driver_app/feature/auth/data/models/driver_model.dart';
import 'package:mashena_driver_app/feature/auth/domain/entities/driver_entity.dart';

extension DriverMapper on DriverModel {
  DriverEntity toEntity() {
    return DriverEntity(
      id: id,
      fullName: fullName,
      email: email,
      phoneNumber: phoneNumber,
      roles: roles.map((e) => e.toEntity()).toList(),
      activeRole: activeRole,
      driverApprovalInfo: driverApprovalInfo.toEntity(),
    );
  }
}

extension RoleMapper on RoleModel {
  RoleEntity toEntity() {
    return RoleEntity(
      id: id,
      name: name,
    );
  }
}

extension DriverApprovalInfoMapper on DriverApprovalInfoModel {
  DriverApprovalInfoEntity toEntity() {
    return DriverApprovalInfoEntity(
      isVerified: isVerified,
      hasApprovalRequest: hasApprovalRequest,
      approvalRequestStatus: approvalRequestStatus,
    );
  }
}