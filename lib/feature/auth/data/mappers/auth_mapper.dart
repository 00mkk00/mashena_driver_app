import 'package:mashena_driver_app/feature/auth/data/models/driver_model.dart';
import 'package:mashena_driver_app/feature/auth/domin/entities/driver_entity.dart';

extension DriverMapper on DriverModel {
  DriverEntity toEntity() {
    return DriverEntity(
      id: id,
      email: email,
      phoneNumber: phoneNumber,
      createdAt: createdAt,
      driverProfile: driverProfile.toEntity(),
    );
  }
}

extension DriverProfileMapper on DriverProfileModel {
  DriverProfileEntity toEntity() {
    return DriverProfileEntity(
      userId: userId,
      city: city,
      approvalStatus: approvalStatus,
      isOnline: isOnline,
      isVerified: isVerified,
    );
  }
}