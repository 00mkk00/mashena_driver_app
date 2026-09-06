// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DriverDocumentModel _$DriverDocumentModelFromJson(Map<String, dynamic> json) {
  return _DriverDocumentModel.fromJson(json);
}

/// @nodoc
mixin _$DriverDocumentModel {
  int? get id => throw _privateConstructorUsedError;
  int? get driverProfileId => throw _privateConstructorUsedError;
  String? get docType => throw _privateConstructorUsedError;
  String? get fileUrl => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get issuedAt => throw _privateConstructorUsedError;
  String? get expiresAt => throw _privateConstructorUsedError;
  String? get verifiedAt => throw _privateConstructorUsedError;
  int? get verifiedBy => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metaJson => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this DriverDocumentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverDocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverDocumentModelCopyWith<DriverDocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverDocumentModelCopyWith<$Res> {
  factory $DriverDocumentModelCopyWith(
    DriverDocumentModel value,
    $Res Function(DriverDocumentModel) then,
  ) = _$DriverDocumentModelCopyWithImpl<$Res, DriverDocumentModel>;
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class _$DriverDocumentModelCopyWithImpl<$Res, $Val extends DriverDocumentModel>
    implements $DriverDocumentModelCopyWith<$Res> {
  _$DriverDocumentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverDocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? driverProfileId = freezed,
    Object? docType = freezed,
    Object? fileUrl = freezed,
    Object? status = freezed,
    Object? issuedAt = freezed,
    Object? expiresAt = freezed,
    Object? verifiedAt = freezed,
    Object? verifiedBy = freezed,
    Object? rejectionReason = freezed,
    Object? metaJson = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            driverProfileId: freezed == driverProfileId
                ? _value.driverProfileId
                : driverProfileId // ignore: cast_nullable_to_non_nullable
                      as int?,
            docType: freezed == docType
                ? _value.docType
                : docType // ignore: cast_nullable_to_non_nullable
                      as String?,
            fileUrl: freezed == fileUrl
                ? _value.fileUrl
                : fileUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            issuedAt: freezed == issuedAt
                ? _value.issuedAt
                : issuedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            expiresAt: freezed == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            verifiedAt: freezed == verifiedAt
                ? _value.verifiedAt
                : verifiedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            verifiedBy: freezed == verifiedBy
                ? _value.verifiedBy
                : verifiedBy // ignore: cast_nullable_to_non_nullable
                      as int?,
            rejectionReason: freezed == rejectionReason
                ? _value.rejectionReason
                : rejectionReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            metaJson: freezed == metaJson
                ? _value.metaJson
                : metaJson // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DriverDocumentModelImplCopyWith<$Res>
    implements $DriverDocumentModelCopyWith<$Res> {
  factory _$$DriverDocumentModelImplCopyWith(
    _$DriverDocumentModelImpl value,
    $Res Function(_$DriverDocumentModelImpl) then,
  ) = __$$DriverDocumentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class __$$DriverDocumentModelImplCopyWithImpl<$Res>
    extends _$DriverDocumentModelCopyWithImpl<$Res, _$DriverDocumentModelImpl>
    implements _$$DriverDocumentModelImplCopyWith<$Res> {
  __$$DriverDocumentModelImplCopyWithImpl(
    _$DriverDocumentModelImpl _value,
    $Res Function(_$DriverDocumentModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverDocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? driverProfileId = freezed,
    Object? docType = freezed,
    Object? fileUrl = freezed,
    Object? status = freezed,
    Object? issuedAt = freezed,
    Object? expiresAt = freezed,
    Object? verifiedAt = freezed,
    Object? verifiedBy = freezed,
    Object? rejectionReason = freezed,
    Object? metaJson = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$DriverDocumentModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        driverProfileId: freezed == driverProfileId
            ? _value.driverProfileId
            : driverProfileId // ignore: cast_nullable_to_non_nullable
                  as int?,
        docType: freezed == docType
            ? _value.docType
            : docType // ignore: cast_nullable_to_non_nullable
                  as String?,
        fileUrl: freezed == fileUrl
            ? _value.fileUrl
            : fileUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        issuedAt: freezed == issuedAt
            ? _value.issuedAt
            : issuedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        expiresAt: freezed == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        verifiedAt: freezed == verifiedAt
            ? _value.verifiedAt
            : verifiedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        verifiedBy: freezed == verifiedBy
            ? _value.verifiedBy
            : verifiedBy // ignore: cast_nullable_to_non_nullable
                  as int?,
        rejectionReason: freezed == rejectionReason
            ? _value.rejectionReason
            : rejectionReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        metaJson: freezed == metaJson
            ? _value._metaJson
            : metaJson // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverDocumentModelImpl implements _DriverDocumentModel {
  const _$DriverDocumentModelImpl({
    this.id,
    this.driverProfileId,
    this.docType,
    this.fileUrl,
    this.status,
    this.issuedAt,
    this.expiresAt,
    this.verifiedAt,
    this.verifiedBy,
    this.rejectionReason,
    final Map<String, dynamic>? metaJson,
    this.createdAt,
    this.updatedAt,
  }) : _metaJson = metaJson;

  factory _$DriverDocumentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverDocumentModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? driverProfileId;
  @override
  final String? docType;
  @override
  final String? fileUrl;
  @override
  final String? status;
  @override
  final String? issuedAt;
  @override
  final String? expiresAt;
  @override
  final String? verifiedAt;
  @override
  final int? verifiedBy;
  @override
  final String? rejectionReason;
  final Map<String, dynamic>? _metaJson;
  @override
  Map<String, dynamic>? get metaJson {
    final value = _metaJson;
    if (value == null) return null;
    if (_metaJson is EqualUnmodifiableMapView) return _metaJson;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'DriverDocumentModel(id: $id, driverProfileId: $driverProfileId, docType: $docType, fileUrl: $fileUrl, status: $status, issuedAt: $issuedAt, expiresAt: $expiresAt, verifiedAt: $verifiedAt, verifiedBy: $verifiedBy, rejectionReason: $rejectionReason, metaJson: $metaJson, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverDocumentModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of DriverDocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverDocumentModelImplCopyWith<_$DriverDocumentModelImpl> get copyWith =>
      __$$DriverDocumentModelImplCopyWithImpl<_$DriverDocumentModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverDocumentModelImplToJson(this);
  }
}

abstract class _DriverDocumentModel implements DriverDocumentModel {
  const factory _DriverDocumentModel({
    final int? id,
    final int? driverProfileId,
    final String? docType,
    final String? fileUrl,
    final String? status,
    final String? issuedAt,
    final String? expiresAt,
    final String? verifiedAt,
    final int? verifiedBy,
    final String? rejectionReason,
    final Map<String, dynamic>? metaJson,
    final String? createdAt,
    final String? updatedAt,
  }) = _$DriverDocumentModelImpl;

  factory _DriverDocumentModel.fromJson(Map<String, dynamic> json) =
      _$DriverDocumentModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get driverProfileId;
  @override
  String? get docType;
  @override
  String? get fileUrl;
  @override
  String? get status;
  @override
  String? get issuedAt;
  @override
  String? get expiresAt;
  @override
  String? get verifiedAt;
  @override
  int? get verifiedBy;
  @override
  String? get rejectionReason;
  @override
  Map<String, dynamic>? get metaJson;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;

  /// Create a copy of DriverDocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverDocumentModelImplCopyWith<_$DriverDocumentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
