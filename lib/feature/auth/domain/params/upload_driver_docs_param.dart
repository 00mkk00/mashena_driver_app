class UploadDriverDocsParams {
  final int userId;
  final String nationalIdNumber;
  final String driverLicenseNumber;
  final String? mechanicCardNumber;
  final String? vehiclePlateNumber;
  final String? insurancePolicyNumber;
  final String? vehicleType;
  final String? vehicleModel;
  final String? vehicleColor;
  final int? vehicleYear;
  final String imagePath; // 🔥 file path

  UploadDriverDocsParams({
    required this.userId,
    required this.nationalIdNumber,
    required this.driverLicenseNumber,
    this.mechanicCardNumber,
    this.vehiclePlateNumber,
    this.insurancePolicyNumber,
    this.vehicleType,
    this.vehicleModel,
    this.vehicleColor,
    this.vehicleYear,
    required this.imagePath,
  });
}
