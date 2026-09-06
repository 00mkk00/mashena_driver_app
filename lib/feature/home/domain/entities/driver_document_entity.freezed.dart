// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_document_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DriverDocumentEntity {
  int get id => throw _privateConstructorUsedError;
  int get driverProfileId => throw _privateConstructorUsedError;
  DriverDocType get docType => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  DriverDocStatus get status => throw _privateConstructorUsedError;
  String get issuedAt => throw _privateConstructorUsedError;
  String get expiresAt => throw _privateConstructorUsedError;
  String get verifiedAt => throw _privateConstructorUsedError;
  int get verifiedBy => throw _privateConstructorUsedError;
  String get rejectionReason => throw _privateConstructorUsedError;
  Map<String, dynamic> get metaJson => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of DriverDocumentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverDocumentEntityCopyWith<DriverDocumentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverDocumentEntityCopyWith<$Res> {
  factory $DriverDocumentEntityCopyWith(
    DriverDocumentEntity value,
    $Res Function(DriverDocumentEntity) then,
  ) = _$DriverDocumentEntityCopyWithImpl<$Res, DriverDocumentEntity>;
  @useResult
  $Res call({
    int id,
    int driverProfileId,
    DriverDocType docType,
    String fileUrl,
    DriverDocStatus status,
    String issuedAt,
    String expiresAt,
    String verifiedAt,
    int verifiedBy,
    String rejectionReason,
    Map<String, dynamic> metaJson,
    String createdAt,
    String updatedAt,
  });
}

/// @nodoc
class _$DriverDocumentEntityCopyWithImpl<
  $Res,
  $Val extends DriverDocumentEntity
>
    implements $DriverDocumentEntityCopyWith<$Res> {
  _$DriverDocumentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverDocumentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? driverProfileId = null,
    Object? docType = null,
    Object? fileUrl = null,
    Object? status = null,
    Object? issuedAt = null,
    Object? expiresAt = null,
    Object? verifiedAt = null,
    Object? verifiedBy = null,
    Object? rejectionReason = null,
    Object? metaJson = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            driverProfileId: null == driverProfileId
                ? _value.driverProfileId
                : driverProfileId // ignore: cast_nullable_to_non_nullable
                      as int,
            docType: null == docType
                ? _value.docType
                : docType // ignore: cast_nullable_to_non_nullable
                      as DriverDocType,
            fileUrl: null == fileUrl
                ? _value.fileUrl
                : fileUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as DriverDocStatus,
            issuedAt: null == issuedAt
                ? _value.issuedAt
                : issuedAt // ignore: cast_nullable_to_non_nullable
                      as String,
            expiresAt: null == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as String,
            verifiedAt: null == verifiedAt
                ? _value.verifiedAt
                : verifiedAt // ignore: cast_nullable_to_non_nullable
                      as String,
            verifiedBy: null == verifiedBy
                ? _value.verifiedBy
                : verifiedBy // ignore: cast_nullable_to_non_nullable
                      as int,
            rejectionReason: null == rejectionReason
                ? _value.rejectionReason
                : rejectionReason // ignore: cast_nullable_to_non_nullable
                      as String,
            metaJson: null == metaJson
                ? _value.metaJson
                : metaJson // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DriverDocumentEntityImplCopyWith<$Res>
    implements $DriverDocumentEntityCopyWith<$Res> {
  factory _$$DriverDocumentEntityImplCopyWith(
    _$DriverDocumentEntityImpl value,
    $Res Function(_$DriverDocumentEntityImpl) then,
  ) = __$$DriverDocumentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int driverProfileId,
    DriverDocType docType,
    String fileUrl,
    DriverDocStatus status,
    String issuedAt,
    String expiresAt,
    String verifiedAt,
    int verifiedBy,
    String rejectionReason,
    Map<String, dynamic> metaJson,
    String createdAt,
    String updatedAt,
  });
}

/// @nodoc
class __$$DriverDocumentEntityImplCopyWithImpl<$Res>
    extends _$DriverDocumentEntityCopyWithImpl<$Res, _$DriverDocumentEntityImpl>
    implements _$$DriverDocumentEntityImplCopyWith<$Res> {
  __$$DriverDocumentEntityImplCopyWithImpl(
    _$DriverDocumentEntityImpl _value,
    $Res Function(_$DriverDocumentEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverDocumentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? driverProfileId = null,
    Object? docType = null,
    Object? fileUrl = null,
    Object? status = null,
    Object? issuedAt = null,
    Object? expiresAt = null,
    Object? verifiedAt = null,
    Object? verifiedBy = null,
    Object? rejectionReason = null,
    Object? metaJson = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$DriverDocumentEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        driverProfileId: null == driverProfileId
            ? _value.driverProfileId
            : driverProfileId // ignore: cast_nullable_to_non_nullable
                  as int,
        docType: null == docType
            ? _value.docType
            : docType // ignore: cast_nullable_to_non_nullable
                  as DriverDocType,
        fileUrl: null == fileUrl
            ? _value.fileUrl
            : fileUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as DriverDocStatus,
        issuedAt: null == issuedAt
            ? _value.issuedAt
            : issuedAt // ignore: cast_nullable_to_non_nullable
                  as String,
        expiresAt: null == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as String,
        verifiedAt: null == verifiedAt
            ? _value.verifiedAt
            : verifiedAt // ignore: cast_nullable_to_non_nullable
                  as String,
        verifiedBy: null == verifiedBy
            ? _value.verifiedBy
            : verifiedBy // ignore: cast_nullable_to_non_nullable
                  as int,
        rejectionReason: null == rejectionReason
            ? _value.rejectionReason
            : rejectionReason // ignore: cast_nullable_to_non_nullable
                  as String,
        metaJson: null == metaJson
            ? _value._metaJson
            : metaJson // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DriverDocumentEntityImpl implements _DriverDocumentEntity {
  const _$DriverDocumentEntityImpl({
    required this.id,
    required this.driverProfileId,
    required this.docType,
    required this.fileUrl,
    required this.status,
    required this.issuedAt,
    required this.expiresAt,
    required this.verifiedAt,
    required this.verifiedBy,
    required this.rejectionReason,
    required final Map<String, dynamic> metaJson,
    required this.createdAt,
    required this.updatedAt,
  }) : _metaJson = metaJson;

  @override
  final int id;
  @override
  final int driverProfileId;
  @override
  final DriverDocType docType;
  @override
  final String fileUrl;
  @override
  final DriverDocStatus status;
  @override
  final String issuedAt;
  @override
  final String expiresAt;
  @override
  final String verifiedAt;
  @override
  final int verifiedBy;
  @override
  final String rejectionReason;
  final Map<String, dynamic> _metaJson;
  @override
  Map<String, dynamic> get metaJson {
    if (_metaJson is EqualUnmodifiableMapView) return _metaJson;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metaJson);
  }

  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'DriverDocumentEntity(id: $id, driverProfileId: $driverProfileId, docType: $docType, fileUrl: $fileUrl, status: $status, issuedAt: $issuedAt, expiresAt: $expiresAt, verifiedAt: $verifiedAt, verifiedBy: $verifiedBy, rejectionReason: $rejectionReason, metaJson: $metaJson, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverDocumentEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.driverProfileId, driverProfileId) ||
                other.driverProfileId == driverProfileId) &&
            (identical(other.docType, docType) || other.docType == docType) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.issuedAt, issuedAt) ||
                other.issuedAt == issuedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            (identical(other.verifiedBy, verifiedBy) ||
                other.verifiedBy == verifiedBy) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            const DeepCollectionEquality().equals(other._metaJson, _metaJson) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    driverProfileId,
    docType,
    fileUrl,
    status,
    issuedAt,
    expiresAt,
    verifiedAt,
    verifiedBy,
    rejectionReason,
    const DeepCollectionEquality().hash(_metaJson),
    createdAt,
    updatedAt,
  );

  /// Create a copy of DriverDocumentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverDocumentEntityImplCopyWith<_$DriverDocumentEntityImpl>
  get copyWith =>
      __$$DriverDocumentEntityImplCopyWithImpl<_$DriverDocumentEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _DriverDocumentEntity implements DriverDocumentEntity {
  const factory _DriverDocumentEntity({
    required final int id,
    required final int driverProfileId,
    required final DriverDocType docType,
    required final String fileUrl,
    required final DriverDocStatus status,
    required final String issuedAt,
    required final String expiresAt,
    required final String verifiedAt,
    required final int verifiedBy,
    required final String rejectionReason,
    required final Map<String, dynamic> metaJson,
    required final String createdAt,
    required final String updatedAt,
  }) = _$DriverDocumentEntityImpl;

  @override
  int get id;
  @override
  int get driverProfileId;
  @override
  DriverDocType get docType;
  @override
  String get fileUrl;
  @override
  DriverDocStatus get status;
  @override
  String get issuedAt;
  @override
  String get expiresAt;
  @override
  String get verifiedAt;
  @override
  int get verifiedBy;
  @override
  String get rejectionReason;
  @override
  Map<String, dynamic> get metaJson;
  @override
  String get createdAt;
  @override
  String get updatedAt;

  /// Create a copy of DriverDocumentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverDocumentEntityImplCopyWith<_$DriverDocumentEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
