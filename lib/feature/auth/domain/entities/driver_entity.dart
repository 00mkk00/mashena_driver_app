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
    String? createdAt,
    String? updatedAt,
    @Default([]) List<RoleEntity> roles,
    @Default('') String activeRole,
    @Default(DriverApprovalInfoEntity())
    DriverApprovalInfoEntity driverApprovalInfo,
    @Default(DriverProfileEntity()) DriverProfileEntity driverProfile,
  }) = _DriverEntity;
}

@freezed
class RoleEntity with _$RoleEntity {
  const factory RoleEntity({required int id, @Default('') String name}) =
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

@freezed
class DriverProfileEntity with _$DriverProfileEntity {
  const factory DriverProfileEntity({
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
  }) = _DriverProfileEntity;
}
