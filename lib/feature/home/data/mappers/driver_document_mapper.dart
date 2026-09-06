import 'package:mashena_driver_app/feature/home/data/models/driver_document_model.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_document_entity.dart';

extension DriverDocumentModelMapper on DriverDocumentModel {
  DriverDocumentEntity toEntity() {
    return DriverDocumentEntity(
      id: id ?? 0,
      driverProfileId: driverProfileId ?? 0,
      docType: _parseDocType(docType),
      fileUrl: fileUrl ?? '',
      status: _parseStatus(status),
      issuedAt: issuedAt ?? '',
      expiresAt: expiresAt ?? '',
      verifiedAt: verifiedAt ?? '',
      verifiedBy: verifiedBy ?? 0,
      rejectionReason: rejectionReason ?? '',
      metaJson: metaJson ?? const {},
      createdAt: createdAt ?? '',
      updatedAt: updatedAt ?? '',
    );
  }

  DriverDocType _parseDocType(String? type) {
    if (type == null) return DriverDocType.other;
    final t = type.toLowerCase();
    if (t.contains('license')) return DriverDocType.license;
    if (t.contains('insurance')) return DriverDocType.insurance;
    if (t.contains('mechanic')) return DriverDocType.mechanic;
    if (t.contains('identity') || t.contains('id') || t.contains('national')) {
      return DriverDocType.identity;
    }
    return DriverDocType.other;
  }

  DriverDocStatus _parseStatus(String? statusStr) {
    if (statusStr == null) return DriverDocStatus.pending;
    final s = statusStr.toLowerCase();
    if (s == 'approved' || s == 'verified') return DriverDocStatus.approved;
    if (s == 'rejected' || s == 'declined') return DriverDocStatus.rejected;
    if (s == 'expired') return DriverDocStatus.expired;
    return DriverDocStatus.pending;
  }
}
