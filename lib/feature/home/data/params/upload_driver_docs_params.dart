import 'package:mashena_driver_app/feature/home/domain/entities/driver_document_entity.dart';

class UploadDriverDocsParams {
  final int driverProfileId;
  final DriverDocType docType;
  final String? issuedAt;
  final String? expiresAt;
  final String filePath;

  UploadDriverDocsParams({
    required this.driverProfileId,
    required this.docType,
    this.issuedAt,
    this.expiresAt,
    required this.filePath,
  });
}
