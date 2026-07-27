// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverDocumentModelImpl _$$DriverDocumentModelImplFromJson(
  Map<String, dynamic> json,
) => _$DriverDocumentModelImpl(
  id: (json['id'] as num?)?.toInt(),
  driverProfileId: (json['driverProfileId'] as num?)?.toInt(),
  docType: json['docType'] as String?,
  fileUrl: json['fileUrl'] as String?,
  status: json['status'] as String?,
  issuedAt: json['issuedAt'] as String?,
  expiresAt: json['expiresAt'] as String?,
  verifiedAt: json['verifiedAt'] as String?,
  verifiedBy: (json['verifiedBy'] as num?)?.toInt(),
  rejectionReason: json['rejectionReason'] as String?,
  metaJson: json['metaJson'] as Map<String, dynamic>?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$$DriverDocumentModelImplToJson(
  _$DriverDocumentModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'driverProfileId': instance.driverProfileId,
  'docType': instance.docType,
  'fileUrl': instance.fileUrl,
  'status': instance.status,
  'issuedAt': instance.issuedAt,
  'expiresAt': instance.expiresAt,
  'verifiedAt': instance.verifiedAt,
  'verifiedBy': instance.verifiedBy,
  'rejectionReason': instance.rejectionReason,
  'metaJson': instance.metaJson,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};
