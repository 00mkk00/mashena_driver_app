// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appeal_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AppealEntity {
  int get id => throw _privateConstructorUsedError;
  int get penaltyId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String? get evidence => throw _privateConstructorUsedError;
  AppealStatus get status => throw _privateConstructorUsedError;
  String get rawStatus => throw _privateConstructorUsedError;
  String get submittedAt => throw _privateConstructorUsedError;
  String? get reviewedAt => throw _privateConstructorUsedError;
  int? get reviewedByUserId => throw _privateConstructorUsedError;
  String? get adminDecision => throw _privateConstructorUsedError;
  String? get adminNotes => throw _privateConstructorUsedError;
  PenaltyEntity? get penalty => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of AppealEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppealEntityCopyWith<AppealEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppealEntityCopyWith<$Res> {
  factory $AppealEntityCopyWith(
    AppealEntity value,
    $Res Function(AppealEntity) then,
  ) = _$AppealEntityCopyWithImpl<$Res, AppealEntity>;
  @useResult
  $Res call({
    int id,
    int penaltyId,
    int userId,
    String reason,
    String? evidence,
    AppealStatus status,
    String rawStatus,
    String submittedAt,
    String? reviewedAt,
    int? reviewedByUserId,
    String? adminDecision,
    String? adminNotes,
    PenaltyEntity? penalty,
    String createdAt,
  });

  $PenaltyEntityCopyWith<$Res>? get penalty;
}

/// @nodoc
class _$AppealEntityCopyWithImpl<$Res, $Val extends AppealEntity>
    implements $AppealEntityCopyWith<$Res> {
  _$AppealEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppealEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? penaltyId = null,
    Object? userId = null,
    Object? reason = null,
    Object? evidence = freezed,
    Object? status = null,
    Object? rawStatus = null,
    Object? submittedAt = null,
    Object? reviewedAt = freezed,
    Object? reviewedByUserId = freezed,
    Object? adminDecision = freezed,
    Object? adminNotes = freezed,
    Object? penalty = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            penaltyId: null == penaltyId
                ? _value.penaltyId
                : penaltyId // ignore: cast_nullable_to_non_nullable
                      as int,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            reason: null == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String,
            evidence: freezed == evidence
                ? _value.evidence
                : evidence // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as AppealStatus,
            rawStatus: null == rawStatus
                ? _value.rawStatus
                : rawStatus // ignore: cast_nullable_to_non_nullable
                      as String,
            submittedAt: null == submittedAt
                ? _value.submittedAt
                : submittedAt // ignore: cast_nullable_to_non_nullable
                      as String,
            reviewedAt: freezed == reviewedAt
                ? _value.reviewedAt
                : reviewedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            reviewedByUserId: freezed == reviewedByUserId
                ? _value.reviewedByUserId
                : reviewedByUserId // ignore: cast_nullable_to_non_nullable
                      as int?,
            adminDecision: freezed == adminDecision
                ? _value.adminDecision
                : adminDecision // ignore: cast_nullable_to_non_nullable
                      as String?,
            adminNotes: freezed == adminNotes
                ? _value.adminNotes
                : adminNotes // ignore: cast_nullable_to_non_nullable
                      as String?,
            penalty: freezed == penalty
                ? _value.penalty
                : penalty // ignore: cast_nullable_to_non_nullable
                      as PenaltyEntity?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of AppealEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PenaltyEntityCopyWith<$Res>? get penalty {
    if (_value.penalty == null) {
      return null;
    }

    return $PenaltyEntityCopyWith<$Res>(_value.penalty!, (value) {
      return _then(_value.copyWith(penalty: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppealEntityImplCopyWith<$Res>
    implements $AppealEntityCopyWith<$Res> {
  factory _$$AppealEntityImplCopyWith(
    _$AppealEntityImpl value,
    $Res Function(_$AppealEntityImpl) then,
  ) = __$$AppealEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int penaltyId,
    int userId,
    String reason,
    String? evidence,
    AppealStatus status,
    String rawStatus,
    String submittedAt,
    String? reviewedAt,
    int? reviewedByUserId,
    String? adminDecision,
    String? adminNotes,
    PenaltyEntity? penalty,
    String createdAt,
  });

  @override
  $PenaltyEntityCopyWith<$Res>? get penalty;
}

/// @nodoc
class __$$AppealEntityImplCopyWithImpl<$Res>
    extends _$AppealEntityCopyWithImpl<$Res, _$AppealEntityImpl>
    implements _$$AppealEntityImplCopyWith<$Res> {
  __$$AppealEntityImplCopyWithImpl(
    _$AppealEntityImpl _value,
    $Res Function(_$AppealEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppealEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? penaltyId = null,
    Object? userId = null,
    Object? reason = null,
    Object? evidence = freezed,
    Object? status = null,
    Object? rawStatus = null,
    Object? submittedAt = null,
    Object? reviewedAt = freezed,
    Object? reviewedByUserId = freezed,
    Object? adminDecision = freezed,
    Object? adminNotes = freezed,
    Object? penalty = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _$AppealEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        penaltyId: null == penaltyId
            ? _value.penaltyId
            : penaltyId // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        reason: null == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String,
        evidence: freezed == evidence
            ? _value.evidence
            : evidence // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as AppealStatus,
        rawStatus: null == rawStatus
            ? _value.rawStatus
            : rawStatus // ignore: cast_nullable_to_non_nullable
                  as String,
        submittedAt: null == submittedAt
            ? _value.submittedAt
            : submittedAt // ignore: cast_nullable_to_non_nullable
                  as String,
        reviewedAt: freezed == reviewedAt
            ? _value.reviewedAt
            : reviewedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        reviewedByUserId: freezed == reviewedByUserId
            ? _value.reviewedByUserId
            : reviewedByUserId // ignore: cast_nullable_to_non_nullable
                  as int?,
        adminDecision: freezed == adminDecision
            ? _value.adminDecision
            : adminDecision // ignore: cast_nullable_to_non_nullable
                  as String?,
        adminNotes: freezed == adminNotes
            ? _value.adminNotes
            : adminNotes // ignore: cast_nullable_to_non_nullable
                  as String?,
        penalty: freezed == penalty
            ? _value.penalty
            : penalty // ignore: cast_nullable_to_non_nullable
                  as PenaltyEntity?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$AppealEntityImpl implements _AppealEntity {
  const _$AppealEntityImpl({
    required this.id,
    required this.penaltyId,
    required this.userId,
    required this.reason,
    this.evidence,
    required this.status,
    required this.rawStatus,
    required this.submittedAt,
    this.reviewedAt,
    this.reviewedByUserId,
    this.adminDecision,
    this.adminNotes,
    this.penalty,
    required this.createdAt,
  });

  @override
  final int id;
  @override
  final int penaltyId;
  @override
  final int userId;
  @override
  final String reason;
  @override
  final String? evidence;
  @override
  final AppealStatus status;
  @override
  final String rawStatus;
  @override
  final String submittedAt;
  @override
  final String? reviewedAt;
  @override
  final int? reviewedByUserId;
  @override
  final String? adminDecision;
  @override
  final String? adminNotes;
  @override
  final PenaltyEntity? penalty;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'AppealEntity(id: $id, penaltyId: $penaltyId, userId: $userId, reason: $reason, evidence: $evidence, status: $status, rawStatus: $rawStatus, submittedAt: $submittedAt, reviewedAt: $reviewedAt, reviewedByUserId: $reviewedByUserId, adminDecision: $adminDecision, adminNotes: $adminNotes, penalty: $penalty, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppealEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.penaltyId, penaltyId) ||
                other.penaltyId == penaltyId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.evidence, evidence) ||
                other.evidence == evidence) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rawStatus, rawStatus) ||
                other.rawStatus == rawStatus) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.reviewedByUserId, reviewedByUserId) ||
                other.reviewedByUserId == reviewedByUserId) &&
            (identical(other.adminDecision, adminDecision) ||
                other.adminDecision == adminDecision) &&
            (identical(other.adminNotes, adminNotes) ||
                other.adminNotes == adminNotes) &&
            (identical(other.penalty, penalty) || other.penalty == penalty) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    penaltyId,
    userId,
    reason,
    evidence,
    status,
    rawStatus,
    submittedAt,
    reviewedAt,
    reviewedByUserId,
    adminDecision,
    adminNotes,
    penalty,
    createdAt,
  );

  /// Create a copy of AppealEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppealEntityImplCopyWith<_$AppealEntityImpl> get copyWith =>
      __$$AppealEntityImplCopyWithImpl<_$AppealEntityImpl>(this, _$identity);
}

abstract class _AppealEntity implements AppealEntity {
  const factory _AppealEntity({
    required final int id,
    required final int penaltyId,
    required final int userId,
    required final String reason,
    final String? evidence,
    required final AppealStatus status,
    required final String rawStatus,
    required final String submittedAt,
    final String? reviewedAt,
    final int? reviewedByUserId,
    final String? adminDecision,
    final String? adminNotes,
    final PenaltyEntity? penalty,
    required final String createdAt,
  }) = _$AppealEntityImpl;

  @override
  int get id;
  @override
  int get penaltyId;
  @override
  int get userId;
  @override
  String get reason;
  @override
  String? get evidence;
  @override
  AppealStatus get status;
  @override
  String get rawStatus;
  @override
  String get submittedAt;
  @override
  String? get reviewedAt;
  @override
  int? get reviewedByUserId;
  @override
  String? get adminDecision;
  @override
  String? get adminNotes;
  @override
  PenaltyEntity? get penalty;
  @override
  String get createdAt;

  /// Create a copy of AppealEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppealEntityImplCopyWith<_$AppealEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
