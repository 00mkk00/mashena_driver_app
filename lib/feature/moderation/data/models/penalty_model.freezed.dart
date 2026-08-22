// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'penalty_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PenaltyModel _$PenaltyModelFromJson(Map<String, dynamic> json) {
  return _PenaltyModel.fromJson(json);
}

/// @nodoc
mixin _$PenaltyModel {
  @JsonKey(fromJson: parseIntFromJson)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get userId => throw _privateConstructorUsedError;
  String? get targetRole => throw _privateConstructorUsedError;
  String? get penaltyType => throw _privateConstructorUsedError;
  String? get severity => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get issuedByType => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get issuedByUserId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get ruleId => throw _privateConstructorUsedError;
  String? get issuedAt => throw _privateConstructorUsedError;
  String? get startsAt => throw _privateConstructorUsedError;
  String? get expiresAt => throw _privateConstructorUsedError;
  String? get revokedAt => throw _privateConstructorUsedError;
  String? get revocationReason => throw _privateConstructorUsedError;
  List<RestrictionModel>? get restrictions =>
      throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PenaltyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PenaltyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PenaltyModelCopyWith<PenaltyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PenaltyModelCopyWith<$Res> {
  factory $PenaltyModelCopyWith(
    PenaltyModel value,
    $Res Function(PenaltyModel) then,
  ) = _$PenaltyModelCopyWithImpl<$Res, PenaltyModel>;
  @useResult
  $Res call({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? userId,
    String? targetRole,
    String? penaltyType,
    String? severity,
    String? status,
    String? reason,
    String? issuedByType,
    @JsonKey(fromJson: parseIntFromJson) int? issuedByUserId,
    @JsonKey(fromJson: parseIntFromJson) int? ruleId,
    String? issuedAt,
    String? startsAt,
    String? expiresAt,
    String? revokedAt,
    String? revocationReason,
    List<RestrictionModel>? restrictions,
    String? createdAt,
  });
}

/// @nodoc
class _$PenaltyModelCopyWithImpl<$Res, $Val extends PenaltyModel>
    implements $PenaltyModelCopyWith<$Res> {
  _$PenaltyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PenaltyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? targetRole = freezed,
    Object? penaltyType = freezed,
    Object? severity = freezed,
    Object? status = freezed,
    Object? reason = freezed,
    Object? issuedByType = freezed,
    Object? issuedByUserId = freezed,
    Object? ruleId = freezed,
    Object? issuedAt = freezed,
    Object? startsAt = freezed,
    Object? expiresAt = freezed,
    Object? revokedAt = freezed,
    Object? revocationReason = freezed,
    Object? restrictions = freezed,
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
            penaltyType: freezed == penaltyType
                ? _value.penaltyType
                : penaltyType // ignore: cast_nullable_to_non_nullable
                      as String?,
            severity: freezed == severity
                ? _value.severity
                : severity // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            reason: freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String?,
            issuedByType: freezed == issuedByType
                ? _value.issuedByType
                : issuedByType // ignore: cast_nullable_to_non_nullable
                      as String?,
            issuedByUserId: freezed == issuedByUserId
                ? _value.issuedByUserId
                : issuedByUserId // ignore: cast_nullable_to_non_nullable
                      as int?,
            ruleId: freezed == ruleId
                ? _value.ruleId
                : ruleId // ignore: cast_nullable_to_non_nullable
                      as int?,
            issuedAt: freezed == issuedAt
                ? _value.issuedAt
                : issuedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            startsAt: freezed == startsAt
                ? _value.startsAt
                : startsAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            expiresAt: freezed == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            revokedAt: freezed == revokedAt
                ? _value.revokedAt
                : revokedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            revocationReason: freezed == revocationReason
                ? _value.revocationReason
                : revocationReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            restrictions: freezed == restrictions
                ? _value.restrictions
                : restrictions // ignore: cast_nullable_to_non_nullable
                      as List<RestrictionModel>?,
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
abstract class _$$PenaltyModelImplCopyWith<$Res>
    implements $PenaltyModelCopyWith<$Res> {
  factory _$$PenaltyModelImplCopyWith(
    _$PenaltyModelImpl value,
    $Res Function(_$PenaltyModelImpl) then,
  ) = __$$PenaltyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? userId,
    String? targetRole,
    String? penaltyType,
    String? severity,
    String? status,
    String? reason,
    String? issuedByType,
    @JsonKey(fromJson: parseIntFromJson) int? issuedByUserId,
    @JsonKey(fromJson: parseIntFromJson) int? ruleId,
    String? issuedAt,
    String? startsAt,
    String? expiresAt,
    String? revokedAt,
    String? revocationReason,
    List<RestrictionModel>? restrictions,
    String? createdAt,
  });
}

/// @nodoc
class __$$PenaltyModelImplCopyWithImpl<$Res>
    extends _$PenaltyModelCopyWithImpl<$Res, _$PenaltyModelImpl>
    implements _$$PenaltyModelImplCopyWith<$Res> {
  __$$PenaltyModelImplCopyWithImpl(
    _$PenaltyModelImpl _value,
    $Res Function(_$PenaltyModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PenaltyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? targetRole = freezed,
    Object? penaltyType = freezed,
    Object? severity = freezed,
    Object? status = freezed,
    Object? reason = freezed,
    Object? issuedByType = freezed,
    Object? issuedByUserId = freezed,
    Object? ruleId = freezed,
    Object? issuedAt = freezed,
    Object? startsAt = freezed,
    Object? expiresAt = freezed,
    Object? revokedAt = freezed,
    Object? revocationReason = freezed,
    Object? restrictions = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$PenaltyModelImpl(
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
        penaltyType: freezed == penaltyType
            ? _value.penaltyType
            : penaltyType // ignore: cast_nullable_to_non_nullable
                  as String?,
        severity: freezed == severity
            ? _value.severity
            : severity // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String?,
        issuedByType: freezed == issuedByType
            ? _value.issuedByType
            : issuedByType // ignore: cast_nullable_to_non_nullable
                  as String?,
        issuedByUserId: freezed == issuedByUserId
            ? _value.issuedByUserId
            : issuedByUserId // ignore: cast_nullable_to_non_nullable
                  as int?,
        ruleId: freezed == ruleId
            ? _value.ruleId
            : ruleId // ignore: cast_nullable_to_non_nullable
                  as int?,
        issuedAt: freezed == issuedAt
            ? _value.issuedAt
            : issuedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        startsAt: freezed == startsAt
            ? _value.startsAt
            : startsAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        expiresAt: freezed == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        revokedAt: freezed == revokedAt
            ? _value.revokedAt
            : revokedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        revocationReason: freezed == revocationReason
            ? _value.revocationReason
            : revocationReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        restrictions: freezed == restrictions
            ? _value._restrictions
            : restrictions // ignore: cast_nullable_to_non_nullable
                  as List<RestrictionModel>?,
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
class _$PenaltyModelImpl implements _PenaltyModel {
  const _$PenaltyModelImpl({
    @JsonKey(fromJson: parseIntFromJson) this.id,
    @JsonKey(fromJson: parseIntFromJson) this.userId,
    this.targetRole,
    this.penaltyType,
    this.severity,
    this.status,
    this.reason,
    this.issuedByType,
    @JsonKey(fromJson: parseIntFromJson) this.issuedByUserId,
    @JsonKey(fromJson: parseIntFromJson) this.ruleId,
    this.issuedAt,
    this.startsAt,
    this.expiresAt,
    this.revokedAt,
    this.revocationReason,
    final List<RestrictionModel>? restrictions,
    this.createdAt,
  }) : _restrictions = restrictions;

  factory _$PenaltyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PenaltyModelImplFromJson(json);

  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? id;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? userId;
  @override
  final String? targetRole;
  @override
  final String? penaltyType;
  @override
  final String? severity;
  @override
  final String? status;
  @override
  final String? reason;
  @override
  final String? issuedByType;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? issuedByUserId;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? ruleId;
  @override
  final String? issuedAt;
  @override
  final String? startsAt;
  @override
  final String? expiresAt;
  @override
  final String? revokedAt;
  @override
  final String? revocationReason;
  final List<RestrictionModel>? _restrictions;
  @override
  List<RestrictionModel>? get restrictions {
    final value = _restrictions;
    if (value == null) return null;
    if (_restrictions is EqualUnmodifiableListView) return _restrictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;

  @override
  String toString() {
    return 'PenaltyModel(id: $id, userId: $userId, targetRole: $targetRole, penaltyType: $penaltyType, severity: $severity, status: $status, reason: $reason, issuedByType: $issuedByType, issuedByUserId: $issuedByUserId, ruleId: $ruleId, issuedAt: $issuedAt, startsAt: $startsAt, expiresAt: $expiresAt, revokedAt: $revokedAt, revocationReason: $revocationReason, restrictions: $restrictions, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PenaltyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.targetRole, targetRole) ||
                other.targetRole == targetRole) &&
            (identical(other.penaltyType, penaltyType) ||
                other.penaltyType == penaltyType) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.status, status) || other.status == status) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    targetRole,
    penaltyType,
    severity,
    status,
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
  );

  /// Create a copy of PenaltyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PenaltyModelImplCopyWith<_$PenaltyModelImpl> get copyWith =>
      __$$PenaltyModelImplCopyWithImpl<_$PenaltyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PenaltyModelImplToJson(this);
  }
}

abstract class _PenaltyModel implements PenaltyModel {
  const factory _PenaltyModel({
    @JsonKey(fromJson: parseIntFromJson) final int? id,
    @JsonKey(fromJson: parseIntFromJson) final int? userId,
    final String? targetRole,
    final String? penaltyType,
    final String? severity,
    final String? status,
    final String? reason,
    final String? issuedByType,
    @JsonKey(fromJson: parseIntFromJson) final int? issuedByUserId,
    @JsonKey(fromJson: parseIntFromJson) final int? ruleId,
    final String? issuedAt,
    final String? startsAt,
    final String? expiresAt,
    final String? revokedAt,
    final String? revocationReason,
    final List<RestrictionModel>? restrictions,
    final String? createdAt,
  }) = _$PenaltyModelImpl;

  factory _PenaltyModel.fromJson(Map<String, dynamic> json) =
      _$PenaltyModelImpl.fromJson;

  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get id;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get userId;
  @override
  String? get targetRole;
  @override
  String? get penaltyType;
  @override
  String? get severity;
  @override
  String? get status;
  @override
  String? get reason;
  @override
  String? get issuedByType;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get issuedByUserId;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get ruleId;
  @override
  String? get issuedAt;
  @override
  String? get startsAt;
  @override
  String? get expiresAt;
  @override
  String? get revokedAt;
  @override
  String? get revocationReason;
  @override
  List<RestrictionModel>? get restrictions;
  @override
  String? get createdAt;

  /// Create a copy of PenaltyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PenaltyModelImplCopyWith<_$PenaltyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
