import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_entity.freezed.dart';

@freezed
class DriverEntity with _$DriverEntity {
  const factory DriverEntity({
    required int id,
    required String email,
    required String phoneNumber,
    required DateTime createdAt,
    required DriverProfileEntity driverProfile,
  }) = _DriverEntity;
}

@freezed
class DriverProfileEntity with _$DriverProfileEntity {
  const factory DriverProfileEntity({
    required int userId,
    required String city,
    required String approvalStatus,
    required bool isOnline,
    required bool isVerified,
  }) = _DriverProfileEntity;
}