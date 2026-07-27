import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_document_model.freezed.dart';
part 'driver_document_model.g.dart';

@freezed
class DriverDocumentModel with _$DriverDocumentModel {
  const factory DriverDocumentModel({
    int? id,
    int? driverProfileId,
    String? docType,
    String? fileUrl,
    String? status,
    String? issuedAt,
    String? expiresAt,
    String? verifiedAt,
    int? verifiedBy,
    String? rejectionReason,
    Map<String, dynamic>? metaJson,
    String? createdAt,
    String? updatedAt,
  }) = _DriverDocumentModel;

  factory DriverDocumentModel.fromJson(Map<String, dynamic> json) =>
      _$DriverDocumentModelFromJson(json);
}
