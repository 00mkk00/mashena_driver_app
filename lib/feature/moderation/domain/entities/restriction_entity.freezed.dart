// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restriction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RestrictionEntity {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get penaltyId => throw _privateConstructorUsedError;
  RestrictionType get restrictionType => throw _privateConstructorUsedError;
  String get rawRestrictionType => throw _privateConstructorUsedError;
  ModerationItemStatus get status => throw _privateConstructorUsedError;
  String get rawStatus => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String get startsAt => throw _privateConstructorUsedError;
  String get expiresAt => throw _privateConstructorUsedError;
  String? get revokedAt => throw _privateConstructorUsedError;
  String? get revocationReason => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of RestrictionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RestrictionEntityCopyWith<RestrictionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestrictionEntityCopyWith<$Res> {
  factory $RestrictionEntityCopyWith(
    RestrictionEntity value,
    $Res Function(RestrictionEntity) then,
  ) = _$RestrictionEntityCopyWithImpl<$Res, RestrictionEntity>;
  @useResult
  $Res call({
    int id,
    int userId,
    int penaltyId,
    RestrictionType restrictionType,
    String rawRestrictionType,
    ModerationItemStatus status,
    String rawStatus,
    String reason,
    String startsAt,
    String expiresAt,
    String? revokedAt,
    String? revocationReason,
    String createdAt,
  });
}

/// @nodoc
class _$RestrictionEntityCopyWithImpl<$Res, $Val extends RestrictionEntity>
    implements $RestrictionEntityCopyWith<$Res> {
  _$RestrictionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RestrictionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? penaltyId = null,
    Object? restrictionType = null,
    Object? rawRestrictionType = null,
    Object? status = null,
    Object? rawStatus = null,
    Object? reason = null,
    Object? startsAt = null,
    Object? expiresAt = null,
    Object? revokedAt = freezed,
    Object? revocationReason = freezed,
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
            penaltyId: null == penaltyId
                ? _value.penaltyId
                : penaltyId // ignore: cast_nullable_to_non_nullable
                      as int,
            restrictionType: null == restrictionType
                ? _value.restrictionType
                : restrictionType // ignore: cast_nullable_to_non_nullable
                      as RestrictionType,
            rawRestrictionType: null == rawRestrictionType
                ? _value.rawRestrictionType
                : rawRestrictionType // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RestrictionEntityImplCopyWith<$Res>
    implements $RestrictionEntityCopyWith<$Res> {
  factory _$$RestrictionEntityImplCopyWith(
    _$RestrictionEntityImpl value,
    $Res Function(_$RestrictionEntityImpl) then,
  ) = __$$RestrictionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int userId,
    int penaltyId,
    RestrictionType restrictionType,
    String rawRestrictionType,
    ModerationItemStatus status,
    String rawStatus,
    String reason,
    String startsAt,
    String expiresAt,
    String? revokedAt,
    String? revocationReason,
    String createdAt,
  });
}

/// @nodoc
class __$$RestrictionEntityImplCopyWithImpl<$Res>
    extends _$RestrictionEntityCopyWithImpl<$Res, _$RestrictionEntityImpl>
    implements _$$RestrictionEntityImplCopyWith<$Res> {
  __$$RestrictionEntityImplCopyWithImpl(
    _$RestrictionEntityImpl _value,
    $Res Function(_$RestrictionEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RestrictionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? penaltyId = null,
    Object? restrictionType = null,
    Object? rawRestrictionType = null,
    Object? status = null,
    Object? rawStatus = null,
    Object? reason = null,
    Object? startsAt = null,
    Object? expiresAt = null,
    Object? revokedAt = freezed,
    Object? revocationReason = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _$RestrictionEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        penaltyId: null == penaltyId
            ? _value.penaltyId
            : penaltyId // ignore: cast_nullable_to_non_nullable
                  as int,
        restrictionType: null == restrictionType
            ? _value.restrictionType
            : restrictionType // ignore: cast_nullable_to_non_nullable
                  as RestrictionType,
        rawRestrictionType: null == rawRestrictionType
            ? _value.rawRestrictionType
            : rawRestrictionType // ignore: cast_nullable_to_non_nullable
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
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RestrictionEntityImpl implements _RestrictionEntity {
  const _$RestrictionEntityImpl({
    required this.id,
    required this.userId,
    required this.penaltyId,
    required this.restrictionType,
    required this.rawRestrictionType,
    required this.status,
    required this.rawStatus,
    required this.reason,
    required this.startsAt,
    required this.expiresAt,
    this.revokedAt,
    this.revocationReason,
    required this.createdAt,
  });

  @override
  final int id;
  @override
  final int userId;
  @override
  final int penaltyId;
  @override
  final RestrictionType restrictionType;
  @override
  final String rawRestrictionType;
  @override
  final ModerationItemStatus status;
  @override
  final String rawStatus;
  @override
  final String reason;
  @override
  final String startsAt;
  @override
  final String expiresAt;
  @override
  final String? revokedAt;
  @override
  final String? revocationReason;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'RestrictionEntity(id: $id, userId: $userId, penaltyId: $penaltyId, restrictionType: $restrictionType, rawRestrictionType: $rawRestrictionType, status: $status, rawStatus: $rawStatus, reason: $reason, startsAt: $startsAt, expiresAt: $expiresAt, revokedAt: $revokedAt, revocationReason: $revocationReason, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestrictionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.penaltyId, penaltyId) ||
                other.penaltyId == penaltyId) &&
            (identical(other.restrictionType, restrictionType) ||
                other.restrictionType == restrictionType) &&
            (identical(other.rawRestrictionType, rawRestrictionType) ||
                other.rawRestrictionType == rawRestrictionType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rawStatus, rawStatus) ||
                other.rawStatus == rawStatus) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.revokedAt, revokedAt) ||
                other.revokedAt == revokedAt) &&
            (identical(other.revocationReason, revocationReason) ||
                other.revocationReason == revocationReason) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    penaltyId,
    restrictionType,
    rawRestrictionType,
    status,
    rawStatus,
    reason,
    startsAt,
    expiresAt,
    revokedAt,
    revocationReason,
    createdAt,
  );

  /// Create a copy of RestrictionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestrictionEntityImplCopyWith<_$RestrictionEntityImpl> get copyWith =>
      __$$RestrictionEntityImplCopyWithImpl<_$RestrictionEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _RestrictionEntity implements RestrictionEntity {
  const factory _RestrictionEntity({
    required final int id,
    required final int userId,
    required final int penaltyId,
    required final RestrictionType restrictionType,
    required final String rawRestrictionType,
    required final ModerationItemStatus status,
    required final String rawStatus,
    required final String reason,
    required final String startsAt,
    required final String expiresAt,
    final String? revokedAt,
    final String? revocationReason,
    required final String createdAt,
  }) = _$RestrictionEntityImpl;

  @override
  int get id;
  @override
  int get userId;
  @override
  int get penaltyId;
  @override
  RestrictionType get restrictionType;
  @override
  String get rawRestrictionType;
  @override
  ModerationItemStatus get status;
  @override
  String get rawStatus;
  @override
  String get reason;
  @override
  String get startsAt;
  @override
  String get expiresAt;
  @override
  String? get revokedAt;
  @override
  String? get revocationReason;
  @override
  String get createdAt;

  /// Create a copy of RestrictionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestrictionEntityImplCopyWith<_$RestrictionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
