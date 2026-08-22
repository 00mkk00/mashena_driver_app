// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'violation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ViolationEntity {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  PenaltyTargetRole get targetRole => throw _privateConstructorUsedError;
  String get rawTargetRole => throw _privateConstructorUsedError;
  String get violationType => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  ModerationSeverity get severity => throw _privateConstructorUsedError;
  String get rawSeverity => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get sourceType => throw _privateConstructorUsedError;
  int? get sourceId => throw _privateConstructorUsedError;
  int? get penaltyId => throw _privateConstructorUsedError;
  String get occurredAt => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of ViolationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ViolationEntityCopyWith<ViolationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViolationEntityCopyWith<$Res> {
  factory $ViolationEntityCopyWith(
    ViolationEntity value,
    $Res Function(ViolationEntity) then,
  ) = _$ViolationEntityCopyWithImpl<$Res, ViolationEntity>;
  @useResult
  $Res call({
    int id,
    int userId,
    PenaltyTargetRole targetRole,
    String rawTargetRole,
    String violationType,
    String source,
    ModerationSeverity severity,
    String rawSeverity,
    String status,
    String description,
    String sourceType,
    int? sourceId,
    int? penaltyId,
    String occurredAt,
    String createdAt,
  });
}

/// @nodoc
class _$ViolationEntityCopyWithImpl<$Res, $Val extends ViolationEntity>
    implements $ViolationEntityCopyWith<$Res> {
  _$ViolationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ViolationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? targetRole = null,
    Object? rawTargetRole = null,
    Object? violationType = null,
    Object? source = null,
    Object? severity = null,
    Object? rawSeverity = null,
    Object? status = null,
    Object? description = null,
    Object? sourceType = null,
    Object? sourceId = freezed,
    Object? penaltyId = freezed,
    Object? occurredAt = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            targetRole: null == targetRole
                ? _value.targetRole
                : targetRole // ignore: cast_nullable_to_non_nullable
                      as PenaltyTargetRole,
            rawTargetRole: null == rawTargetRole
                ? _value.rawTargetRole
                : rawTargetRole // ignore: cast_nullable_to_non_nullable
                      as String,
            violationType: null == violationType
                ? _value.violationType
                : violationType // ignore: cast_nullable_to_non_nullable
                      as String,
            source: null == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
                      as String,
            severity: null == severity
                ? _value.severity
                : severity // ignore: cast_nullable_to_non_nullable
                      as ModerationSeverity,
            rawSeverity: null == rawSeverity
                ? _value.rawSeverity
                : rawSeverity // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            sourceType: null == sourceType
                ? _value.sourceType
                : sourceType // ignore: cast_nullable_to_non_nullable
                      as String,
            sourceId: freezed == sourceId
                ? _value.sourceId
                : sourceId // ignore: cast_nullable_to_non_nullable
                      as int?,
            penaltyId: freezed == penaltyId
                ? _value.penaltyId
                : penaltyId // ignore: cast_nullable_to_non_nullable
                      as int?,
            occurredAt: null == occurredAt
                ? _value.occurredAt
                : occurredAt // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ViolationEntityImplCopyWith<$Res>
    implements $ViolationEntityCopyWith<$Res> {
  factory _$$ViolationEntityImplCopyWith(
    _$ViolationEntityImpl value,
    $Res Function(_$ViolationEntityImpl) then,
  ) = __$$ViolationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int userId,
    PenaltyTargetRole targetRole,
    String rawTargetRole,
    String violationType,
    String source,
    ModerationSeverity severity,
    String rawSeverity,
    String status,
    String description,
    String sourceType,
    int? sourceId,
    int? penaltyId,
    String occurredAt,
    String createdAt,
  });
}

/// @nodoc
class __$$ViolationEntityImplCopyWithImpl<$Res>
    extends _$ViolationEntityCopyWithImpl<$Res, _$ViolationEntityImpl>
    implements _$$ViolationEntityImplCopyWith<$Res> {
  __$$ViolationEntityImplCopyWithImpl(
    _$ViolationEntityImpl _value,
    $Res Function(_$ViolationEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ViolationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? targetRole = null,
    Object? rawTargetRole = null,
    Object? violationType = null,
    Object? source = null,
    Object? severity = null,
    Object? rawSeverity = null,
    Object? status = null,
    Object? description = null,
    Object? sourceType = null,
    Object? sourceId = freezed,
    Object? penaltyId = freezed,
    Object? occurredAt = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$ViolationEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        targetRole: null == targetRole
            ? _value.targetRole
            : targetRole // ignore: cast_nullable_to_non_nullable
                  as PenaltyTargetRole,
        rawTargetRole: null == rawTargetRole
            ? _value.rawTargetRole
            : rawTargetRole // ignore: cast_nullable_to_non_nullable
                  as String,
        violationType: null == violationType
            ? _value.violationType
            : violationType // ignore: cast_nullable_to_non_nullable
                  as String,
        source: null == source
            ? _value.source
            : source // ignore: cast_nullable_to_non_nullable
                  as String,
        severity: null == severity
            ? _value.severity
            : severity // ignore: cast_nullable_to_non_nullable
                  as ModerationSeverity,
        rawSeverity: null == rawSeverity
            ? _value.rawSeverity
            : rawSeverity // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        sourceType: null == sourceType
            ? _value.sourceType
            : sourceType // ignore: cast_nullable_to_non_nullable
                  as String,
        sourceId: freezed == sourceId
            ? _value.sourceId
            : sourceId // ignore: cast_nullable_to_non_nullable
                  as int?,
        penaltyId: freezed == penaltyId
            ? _value.penaltyId
            : penaltyId // ignore: cast_nullable_to_non_nullable
                  as int?,
        occurredAt: null == occurredAt
            ? _value.occurredAt
            : occurredAt // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ViolationEntityImpl implements _ViolationEntity {
  const _$ViolationEntityImpl({
    required this.id,
    required this.userId,
    required this.targetRole,
    required this.rawTargetRole,
    required this.violationType,
    required this.source,
    required this.severity,
    required this.rawSeverity,
    required this.status,
    required this.description,
    required this.sourceType,
    this.sourceId,
    this.penaltyId,
    required this.occurredAt,
    required this.createdAt,
  });

  @override
  final int id;
  @override
  final int userId;
  @override
  final PenaltyTargetRole targetRole;
  @override
  final String rawTargetRole;
  @override
  final String violationType;
  @override
  final String source;
  @override
  final ModerationSeverity severity;
  @override
  final String rawSeverity;
  @override
  final String status;
  @override
  final String description;
  @override
  final String sourceType;
  @override
  final int? sourceId;
  @override
  final int? penaltyId;
  @override
  final String occurredAt;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'ViolationEntity(id: $id, userId: $userId, targetRole: $targetRole, rawTargetRole: $rawTargetRole, violationType: $violationType, source: $source, severity: $severity, rawSeverity: $rawSeverity, status: $status, description: $description, sourceType: $sourceType, sourceId: $sourceId, penaltyId: $penaltyId, occurredAt: $occurredAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViolationEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.targetRole, targetRole) ||
                other.targetRole == targetRole) &&
            (identical(other.rawTargetRole, rawTargetRole) ||
                other.rawTargetRole == rawTargetRole) &&
            (identical(other.violationType, violationType) ||
                other.violationType == violationType) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.rawSeverity, rawSeverity) ||
                other.rawSeverity == rawSeverity) &&
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

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    targetRole,
    rawTargetRole,
    violationType,
    source,
    severity,
    rawSeverity,
    status,
    description,
    sourceType,
    sourceId,
    penaltyId,
    occurredAt,
    createdAt,
  );

  /// Create a copy of ViolationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ViolationEntityImplCopyWith<_$ViolationEntityImpl> get copyWith =>
      __$$ViolationEntityImplCopyWithImpl<_$ViolationEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _ViolationEntity implements ViolationEntity {
  const factory _ViolationEntity({
    required final int id,
    required final int userId,
    required final PenaltyTargetRole targetRole,
    required final String rawTargetRole,
    required final String violationType,
    required final String source,
    required final ModerationSeverity severity,
    required final String rawSeverity,
    required final String status,
    required final String description,
    required final String sourceType,
    final int? sourceId,
    final int? penaltyId,
    required final String occurredAt,
    required final String createdAt,
  }) = _$ViolationEntityImpl;

  @override
  int get id;
  @override
  int get userId;
  @override
  PenaltyTargetRole get targetRole;
  @override
  String get rawTargetRole;
  @override
  String get violationType;
  @override
  String get source;
  @override
  ModerationSeverity get severity;
  @override
  String get rawSeverity;
  @override
  String get status;
  @override
  String get description;
  @override
  String get sourceType;
  @override
  int? get sourceId;
  @override
  int? get penaltyId;
  @override
  String get occurredAt;
  @override
  String get createdAt;

  /// Create a copy of ViolationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ViolationEntityImplCopyWith<_$ViolationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
