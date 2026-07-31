import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_document_entity.freezed.dart';

enum DriverDocType { license, insurance, mechanic, identity, other }

enum DriverDocStatus { pending, approved, rejected, expired }

@freezed
class DriverDocumentEntity with _$DriverDocumentEntity {
  const factory DriverDocumentEntity({
    required int id,
    required int driverProfileId,
    required DriverDocType docType,
    required String fileUrl,
    required DriverDocStatus status,
    required String issuedAt,
    required String expiresAt,
    required String verifiedAt,
    required int verifiedBy,
    required String rejectionReason,
    required Map<String, dynamic> metaJson,
    required String createdAt,
    required String updatedAt,
  }) = _DriverDocumentEntity;
}
