// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'violation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ViolationModel _$ViolationModelFromJson(Map<String, dynamic> json) {
  return _ViolationModel.fromJson(json);
}

/// @nodoc
mixin _$ViolationModel {
  @JsonKey(fromJson: parseIntFromJson)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get userId => throw _privateConstructorUsedError;
  String? get targetRole => throw _privateConstructorUsedError;
  String? get violationType => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  String? get severity => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get sourceType => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get sourceId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get penaltyId => throw _privateConstructorUsedError;
  String? get occurredAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ViolationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ViolationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ViolationModelCopyWith<ViolationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViolationModelCopyWith<$Res> {
  factory $ViolationModelCopyWith(
    ViolationModel value,
    $Res Function(ViolationModel) then,
  ) = _$ViolationModelCopyWithImpl<$Res, ViolationModel>;
  @useResult
  $Res call({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? userId,
    String? targetRole,
    String? violationType,
    String? source,
    String? severity,
    String? status,
    String? description,
    String? sourceType,
    @JsonKey(fromJson: parseIntFromJson) int? sourceId,
    @JsonKey(fromJson: parseIntFromJson) int? penaltyId,
    String? occurredAt,
    String? createdAt,
  });
}

/// @nodoc
class _$ViolationModelCopyWithImpl<$Res, $Val extends ViolationModel>
    implements $ViolationModelCopyWith<$Res> {
  _$ViolationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ViolationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? targetRole = freezed,
    Object? violationType = freezed,
    Object? source = freezed,
    Object? severity = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? sourceType = freezed,
    Object? sourceId = freezed,
    Object? penaltyId = freezed,
    Object? occurredAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int?,
            targetRole: freezed == targetRole
                ? _value.targetRole
                : targetRole // ignore: cast_nullable_to_non_nullable
                      as String?,
            violationType: freezed == violationType
                ? _value.violationType
                : violationType // ignore: cast_nullable_to_non_nullable
                      as String?,
            source: freezed == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
                      as String?,
            severity: freezed == severity
                ? _value.severity
                : severity // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            sourceType: freezed == sourceType
                ? _value.sourceType
                : sourceType // ignore: cast_nullable_to_non_nullable
                      as String?,
            sourceId: freezed == sourceId
                ? _value.sourceId
                : sourceId // ignore: cast_nullable_to_non_nullable
                      as int?,
            penaltyId: freezed == penaltyId
                ? _value.penaltyId
                : penaltyId // ignore: cast_nullable_to_non_nullable
                      as int?,
            occurredAt: freezed == occurredAt
                ? _value.occurredAt
                : occurredAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ViolationModelImplCopyWith<$Res>
    implements $ViolationModelCopyWith<$Res> {
  factory _$$ViolationModelImplCopyWith(
    _$ViolationModelImpl value,
    $Res Function(_$ViolationModelImpl) then,
  ) = __$$ViolationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? userId,
    String? targetRole,
    String? violationType,
    String? source,
    String? severity,
    String? status,
    String? description,
    String? sourceType,
    @JsonKey(fromJson: parseIntFromJson) int? sourceId,
    @JsonKey(fromJson: parseIntFromJson) int? penaltyId,
    String? occurredAt,
    String? createdAt,
  });
}

/// @nodoc
class __$$ViolationModelImplCopyWithImpl<$Res>
    extends _$ViolationModelCopyWithImpl<$Res, _$ViolationModelImpl>
    implements _$$ViolationModelImplCopyWith<$Res> {
  __$$ViolationModelImplCopyWithImpl(
    _$ViolationModelImpl _value,
    $Res Function(_$ViolationModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ViolationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? targetRole = freezed,
    Object? violationType = freezed,
    Object? source = freezed,
    Object? severity = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? sourceType = freezed,
    Object? sourceId = freezed,
    Object? penaltyId = freezed,
    Object? occurredAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$ViolationModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        targetRole: freezed == targetRole
            ? _value.targetRole
            : targetRole // ignore: cast_nullable_to_non_nullable
                  as String?,
        violationType: freezed == violationType
            ? _value.violationType
            : violationType // ignore: cast_nullable_to_non_nullable
                  as String?,
        source: freezed == source
            ? _value.source
            : source // ignore: cast_nullable_to_non_nullable
                  as String?,
        severity: freezed == severity
            ? _value.severity
            : severity // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        sourceType: freezed == sourceType
            ? _value.sourceType
            : sourceType // ignore: cast_nullable_to_non_nullable
                  as String?,
        sourceId: freezed == sourceId
            ? _value.sourceId
            : sourceId // ignore: cast_nullable_to_non_nullable
                  as int?,
        penaltyId: freezed == penaltyId
            ? _value.penaltyId
            : penaltyId // ignore: cast_nullable_to_non_nullable
                  as int?,
        occurredAt: freezed == occurredAt
            ? _value.occurredAt
            : occurredAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ViolationModelImpl implements _ViolationModel {
  const _$ViolationModelImpl({
    @JsonKey(fromJson: parseIntFromJson) this.id,
    @JsonKey(fromJson: parseIntFromJson) this.userId,
    this.targetRole,
    this.violationType,
    this.source,
    this.severity,
    this.status,
    this.description,
    this.sourceType,
    @JsonKey(fromJson: parseIntFromJson) this.sourceId,
    @JsonKey(fromJson: parseIntFromJson) this.penaltyId,
    this.occurredAt,
    this.createdAt,
  });

  factory _$ViolationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViolationModelImplFromJson(json);

  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? id;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? userId;
  @override
  final String? targetRole;
  @override
  final String? violationType;
  @override
  final String? source;
  @override
  final String? severity;
  @override
  final String? status;
  @override
  final String? description;
  @override
  final String? sourceType;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? sourceId;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? penaltyId;
  @override
  final String? occurredAt;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'ViolationModel(id: $id, userId: $userId, targetRole: $targetRole, violationType: $violationType, source: $source, severity: $severity, status: $status, description: $description, sourceType: $sourceType, sourceId: $sourceId, penaltyId: $penaltyId, occurredAt: $occurredAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViolationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.targetRole, targetRole) ||
                other.targetRole == targetRole) &&
            (identical(other.violationType, violationType) ||
                other.violationType == violationType) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.sourceType, sourceType) ||
                other.sourceType == sourceType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.penaltyId, penaltyId) ||
                other.penaltyId == penaltyId) &&
            (identical(other.occurredAt, occurredAt) ||
                other.occurredAt == occurredAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    targetRole,
    violationType,
    source,
    severity,
    status,
    description,
    sourceType,
    sourceId,
    penaltyId,
    occurredAt,
    createdAt,
  );

  /// Create a copy of ViolationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ViolationModelImplCopyWith<_$ViolationModelImpl> get copyWith =>
      __$$ViolationModelImplCopyWithImpl<_$ViolationModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ViolationModelImplToJson(this);
  }
}

abstract class _ViolationModel implements ViolationModel {
  const factory _ViolationModel({
    @JsonKey(fromJson: parseIntFromJson) final int? id,
    @JsonKey(fromJson: parseIntFromJson) final int? userId,
    final String? targetRole,
    final String? violationType,
    final String? source,
    final String? severity,
    final String? status,
    final String? description,
    final String? sourceType,
    @JsonKey(fromJson: parseIntFromJson) final int? sourceId,
    @JsonKey(fromJson: parseIntFromJson) final int? penaltyId,
    final String? occurredAt,
    final String? createdAt,
  }) = _$ViolationModelImpl;

  factory _ViolationModel.fromJson(Map<String, dynamic> json) =
      _$ViolationModelImpl.fromJson;

  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get id;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get userId;
  @override
  String? get targetRole;
  @override
  String? get violationType;
  @override
  String? get source;
  @override
  String? get severity;
  @override
  String? get status;
  @override
  String? get description;
  @override
  String? get sourceType;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get sourceId;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get penaltyId;
  @override
  String? get occurredAt;
  @override
  String? get createdAt;

  /// Create a copy of ViolationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ViolationModelImplCopyWith<_$ViolationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
