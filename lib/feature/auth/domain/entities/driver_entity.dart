import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/auth/data/enums/approval_status_enum.dart';
part 'driver_entity.freezed.dart';

@freezed
class DriverEntity with _$DriverEntity {
  const factory DriverEntity({
    required int id,
    required String fullName,
    required String email,
    required String phoneNumber,
    @Default([]) List<RoleEntity> roles,
    @Default('') String activeRole,
    @Default(DriverApprovalInfoEntity())
    DriverApprovalInfoEntity driverApprovalInfo,
  }) = _DriverEntity;
}

@freezed
class RoleEntity with _$RoleEntity {
  const factory RoleEntity({required int id, required String name}) =
      _RoleEntity;
}

@freezed
class DriverApprovalInfoEntity with _$DriverApprovalInfoEntity {
  const factory DriverApprovalInfoEntity({
    @Default(false) bool isVerified,
    @Default(false) bool hasApprovalRequest,
    DriverApprovalRequestStatus? approvalRequestStatus,
  }) = _DriverApprovalInfoEntity;
}
