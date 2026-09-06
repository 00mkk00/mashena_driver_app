// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'penalty_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PenaltyEntity {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  PenaltyTargetRole get targetRole => throw _privateConstructorUsedError;
  String get rawTargetRole => throw _privateConstructorUsedError;
  PenaltyType get penaltyType => throw _privateConstructorUsedError;
  String get rawPenaltyType => throw _privateConstructorUsedError;
  ModerationSeverity get severity => throw _privateConstructorUsedError;
  String get rawSeverity => throw _privateConstructorUsedError;
  ModerationItemStatus get status => throw _privateConstructorUsedError;
  String get rawStatus => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String get issuedByType => throw _privateConstructorUsedError;
  int? get issuedByUserId => throw _privateConstructorUsedError;
  int? get ruleId => throw _privateConstructorUsedError;
  String get issuedAt => throw _privateConstructorUsedError;
  String get startsAt => throw _privateConstructorUsedError;
  String get expiresAt => throw _privateConstructorUsedError;
  String? get revokedAt => throw _privateConstructorUsedError;
  String? get revocationReason => throw _privateConstructorUsedError;
  List<RestrictionEntity> get restrictions =>
      throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of PenaltyEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PenaltyEntityCopyWith<PenaltyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PenaltyEntityCopyWith<$Res> {
  factory $PenaltyEntityCopyWith(
    PenaltyEntity value,
    $Res Function(PenaltyEntity) then,
  ) = _$PenaltyEntityCopyWithImpl<$Res, PenaltyEntity>;
  @useResult
  $Res call({
    int id,
    int userId,
    PenaltyTargetRole targetRole,
    String rawTargetRole,
    PenaltyType penaltyType,
    String rawPenaltyType,
    ModerationSeverity severity,
    String rawSeverity,
    ModerationItemStatus status,
    String rawStatus,
    String reason,
    String issuedByType,
    int? issuedByUserId,
    int? ruleId,
    String issuedAt,
    String startsAt,
    String expiresAt,
    String? revokedAt,
    String? revocationReason,
    List<RestrictionEntity> restrictions,
    String createdAt,
  });
}

/// @nodoc
class _$PenaltyEntityCopyWithImpl<$Res, $Val extends PenaltyEntity>
    implements $PenaltyEntityCopyWith<$Res> {
  _$PenaltyEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PenaltyEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? targetRole = null,
    Object? rawTargetRole = null,
    Object? penaltyType = null,
    Object? rawPenaltyType = null,
    Object? severity = null,
    Object? rawSeverity = null,
    Object? status = null,
    Object? rawStatus = null,
    Object? reason = null,
    Object? issuedByType = null,
    Object? issuedByUserId = freezed,
    Object? ruleId = freezed,
    Object? issuedAt = null,
    Object? startsAt = null,
    Object? expiresAt = null,
    Object? revokedAt = freezed,
    Object? revocationReason = freezed,
    Object? restrictions = null,
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
            penaltyType: null == penaltyType
                ? _value.penaltyType
                : penaltyType // ignore: cast_nullable_to_non_nullable
                      as PenaltyType,
            rawPenaltyType: null == rawPenaltyType
                ? _value.rawPenaltyType
                : rawPenaltyType // ignore: cast_nullable_to_non_nullable
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
                      as ModerationItemStatus,
            rawStatus: null == rawStatus
                ? _value.rawStatus
                : rawStatus // ignore: cast_nullable_to_non_nullable
                      as String,
            reason: null == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String,
            issuedByType: null == issuedByType
                ? _value.issuedByType
                : issuedByType // ignore: cast_nullable_to_non_nullable
                      as String,
            issuedByUserId: freezed == issuedByUserId
                ? _value.issuedByUserId
                : issuedByUserId // ignore: cast_nullable_to_non_nullable
                      as int?,
            ruleId: freezed == ruleId
                ? _value.ruleId
                : ruleId // ignore: cast_nullable_to_non_nullable
                      as int?,
            issuedAt: null == issuedAt
                ? _value.issuedAt
                : issuedAt // ignore: cast_nullable_to_non_nullable
                      as String,
            startsAt: null == startsAt
                ? _value.startsAt
                : startsAt // ignore: cast_nullable_to_non_nullable
                      as String,
            expiresAt: null == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as String,
            revokedAt: freezed == revokedAt
                ? _value.revokedAt
                : revokedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            revocationReason: freezed == revocationReason
                ? _value.revocationReason
                : revocationReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            restrictions: null == restrictions
                ? _value.restrictions
                : restrictions // ignore: cast_nullable_to_non_nullable
                      as List<RestrictionEntity>,
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
abstract class _$$PenaltyEntityImplCopyWith<$Res>
    implements $PenaltyEntityCopyWith<$Res> {
  factory _$$PenaltyEntityImplCopyWith(
    _$PenaltyEntityImpl value,
    $Res Function(_$PenaltyEntityImpl) then,
  ) = __$$PenaltyEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int userId,
    PenaltyTargetRole targetRole,
    String rawTargetRole,
    PenaltyType penaltyType,
    String rawPenaltyType,
    ModerationSeverity severity,
    String rawSeverity,
    ModerationItemStatus status,
    String rawStatus,
    String reason,
    String issuedByType,
    int? issuedByUserId,
    int? ruleId,
    String issuedAt,
    String startsAt,
    String expiresAt,
    String? revokedAt,
    String? revocationReason,
    List<RestrictionEntity> restrictions,
    String createdAt,
  });
}

/// @nodoc
class __$$PenaltyEntityImplCopyWithImpl<$Res>
    extends _$PenaltyEntityCopyWithImpl<$Res, _$PenaltyEntityImpl>
    implements _$$PenaltyEntityImplCopyWith<$Res> {
  __$$PenaltyEntityImplCopyWithImpl(
    _$PenaltyEntityImpl _value,
    $Res Function(_$PenaltyEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PenaltyEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? targetRole = null,
    Object? rawTargetRole = null,
    Object? penaltyType = null,
    Object? rawPenaltyType = null,
    Object? severity = null,
    Object? rawSeverity = null,
    Object? status = null,
    Object? rawStatus = null,
    Object? reason = null,
    Object? issuedByType = null,
    Object? issuedByUserId = freezed,
    Object? ruleId = freezed,
    Object? issuedAt = null,
    Object? startsAt = null,
    Object? expiresAt = null,
    Object? revokedAt = freezed,
    Object? revocationReason = freezed,
    Object? restrictions = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$PenaltyEntityImpl(
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
        penaltyType: null == penaltyType
            ? _value.penaltyType
            : penaltyType // ignore: cast_nullable_to_non_nullable
                  as PenaltyType,
        rawPenaltyType: null == rawPenaltyType
            ? _value.rawPenaltyType
            : rawPenaltyType // ignore: cast_nullable_to_non_nullable
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
                  as ModerationItemStatus,
        rawStatus: null == rawStatus
            ? _value.rawStatus
            : rawStatus // ignore: cast_nullable_to_non_nullable
                  as String,
        reason: null == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String,
        issuedByType: null == issuedByType
            ? _value.issuedByType
            : issuedByType // ignore: cast_nullable_to_non_nullable
                  as String,
        issuedByUserId: freezed == issuedByUserId
            ? _value.issuedByUserId
            : issuedByUserId // ignore: cast_nullable_to_non_nullable
                  as int?,
        ruleId: freezed == ruleId
            ? _value.ruleId
            : ruleId // ignore: cast_nullable_to_non_nullable
                  as int?,
        issuedAt: null == issuedAt
            ? _value.issuedAt
            : issuedAt // ignore: cast_nullable_to_non_nullable
                  as String,
        startsAt: null == startsAt
            ? _value.startsAt
            : startsAt // ignore: cast_nullable_to_non_nullable
                  as String,
        expiresAt: null == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as String,
        revokedAt: freezed == revokedAt
            ? _value.revokedAt
            : revokedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        revocationReason: freezed == revocationReason
            ? _value.revocationReason
            : revocationReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        restrictions: null == restrictions
            ? _value._restrictions
            : restrictions // ignore: cast_nullable_to_non_nullable
                  as List<RestrictionEntity>,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PenaltyEntityImpl implements _PenaltyEntity {
  const _$PenaltyEntityImpl({
    required this.id,
    required this.userId,
    required this.targetRole,
    required this.rawTargetRole,
    required this.penaltyType,
    required this.rawPenaltyType,
    required this.severity,
    required this.rawSeverity,
    required this.status,
    required this.rawStatus,
    required this.reason,
    required this.issuedByType,
    this.issuedByUserId,
    this.ruleId,
    required this.issuedAt,
    required this.startsAt,
    required this.expiresAt,
    this.revokedAt,
    this.revocationReason,
    required final List<RestrictionEntity> restrictions,
    required this.createdAt,
  }) : _restrictions = restrictions;

  @override
  final int id;
  @override
  final int userId;
  @override
  final PenaltyTargetRole targetRole;
  @override
  final String rawTargetRole;
  @override
  final PenaltyType penaltyType;
  @override
  final String rawPenaltyType;
  @override
  final ModerationSeverity severity;
  @override
  final String rawSeverity;
  @override
  final ModerationItemStatus status;
  @override
  final String rawStatus;
  @override
  final String reason;
  @override
  final String issuedByType;
  @override
  final int? issuedByUserId;
  @override
  final int? ruleId;
  @override
  final String issuedAt;
  @override
  final String startsAt;
  @override
  final String expiresAt;
  @override
  final String? revokedAt;
  @override
  final String? revocationReason;
  final List<RestrictionEntity> _restrictions;
  @override
  List<RestrictionEntity> get restrictions {
    if (_restrictions is EqualUnmodifiableListView) return _restrictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restrictions);
  }

  @override
  final String createdAt;

  @override
  String toString() {
    return 'PenaltyEntity(id: $id, userId: $userId, targetRole: $targetRole, rawTargetRole: $rawTargetRole, penaltyType: $penaltyType, rawPenaltyType: $rawPenaltyType, severity: $severity, rawSeverity: $rawSeverity, status: $status, rawStatus: $rawStatus, reason: $reason, issuedByType: $issuedByType, issuedByUserId: $issuedByUserId, ruleId: $ruleId, issuedAt: $issuedAt, startsAt: $startsAt, expiresAt: $expiresAt, revokedAt: $revokedAt, revocationReason: $revocationReason, restrictions: $restrictions, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PenaltyEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.targetRole, targetRole) ||
                other.targetRole == targetRole) &&
            (identical(other.rawTargetRole, rawTargetRole) ||
                other.rawTargetRole == rawTargetRole) &&
            (identical(other.penaltyType, penaltyType) ||
                other.penaltyType == penaltyType) &&
            (identical(other.rawPenaltyType, rawPenaltyType) ||
                other.rawPenaltyType == rawPenaltyType) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.rawSeverity, rawSeverity) ||
                other.rawSeverity == rawSeverity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rawStatus, rawStatus) ||
                other.rawStatus == rawStatus) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.issuedByType, issuedByType) ||
                other.issuedByType == issuedByType) &&
            (identical(other.issuedByUserId, issuedByUserId) ||
                other.issuedByUserId == issuedByUserId) &&
            (identical(other.ruleId, ruleId) || other.ruleId == ruleId) &&
            (identical(other.issuedAt, issuedAt) ||
                other.issuedAt == issuedAt) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.revokedAt, revokedAt) ||
                other.revokedAt == revokedAt) &&
            (identical(other.revocationReason, revocationReason) ||
                other.revocationReason == revocationReason) &&
            const DeepCollectionEquality().equals(
              other._restrictions,
              _restrictions,
            ) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    userId,
    targetRole,
    rawTargetRole,
    penaltyType,
    rawPenaltyType,
    severity,
    rawSeverity,
    status,
    rawStatus,
    reason,
    issuedByType,
    issuedByUserId,
    ruleId,
    issuedAt,
    startsAt,
    expiresAt,
    revokedAt,
    revocationReason,
    const DeepCollectionEquality().hash(_restrictions),
    createdAt,
  ]);

  /// Create a copy of PenaltyEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PenaltyEntityImplCopyWith<_$PenaltyEntityImpl> get copyWith =>
      __$$PenaltyEntityImplCopyWithImpl<_$PenaltyEntityImpl>(this, _$identity);
}

abstract class _PenaltyEntity implements PenaltyEntity {
  const factory _PenaltyEntity({
    required final int id,
    required final int userId,
    required final PenaltyTargetRole targetRole,
    required final String rawTargetRole,
    required final PenaltyType penaltyType,
    required final String rawPenaltyType,
    required final ModerationSeverity severity,
    required final String rawSeverity,
    required final ModerationItemStatus status,
    required final String rawStatus,
    required final String reason,
    required final String issuedByType,
    final int? issuedByUserId,
    final int? ruleId,
    required final String issuedAt,
    required final String startsAt,
    required final String expiresAt,
    final String? revokedAt,
    final String? revocationReason,
    required final List<RestrictionEntity> restrictions,
    required final String createdAt,
  }) = _$PenaltyEntityImpl;

  @override
  int get id;
  @override
  int get userId;
  @override
  PenaltyTargetRole get targetRole;
  @override
  String get rawTargetRole;
  @override
  PenaltyType get penaltyType;
  @override
  String get rawPenaltyType;
  @override
  ModerationSeverity get severity;
  @override
  String get rawSeverity;
  @override
  ModerationItemStatus get status;
  @override
  String get rawStatus;
  @override
  String get reason;
  @override
  String get issuedByType;
  @override
  int? get issuedByUserId;
  @override
  int? get ruleId;
  @override
  String get issuedAt;
  @override
  String get startsAt;
  @override
  String get expiresAt;
  @override
  String? get revokedAt;
  @override
  String? get revocationReason;
  @override
  List<RestrictionEntity> get restrictions;
  @override
  String get createdAt;

  /// Create a copy of PenaltyEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PenaltyEntityImplCopyWith<_$PenaltyEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
