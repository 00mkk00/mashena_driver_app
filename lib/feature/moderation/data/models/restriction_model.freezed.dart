// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restriction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RestrictionModel _$RestrictionModelFromJson(Map<String, dynamic> json) {
  return _RestrictionModel.fromJson(json);
}

/// @nodoc
mixin _$RestrictionModel {
  @JsonKey(fromJson: parseIntFromJson)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get penaltyId => throw _privateConstructorUsedError;
  String? get restrictionType => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get startsAt => throw _privateConstructorUsedError;
  String? get expiresAt => throw _privateConstructorUsedError;
  String? get revokedAt => throw _privateConstructorUsedError;
  String? get revocationReason => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this RestrictionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RestrictionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RestrictionModelCopyWith<RestrictionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestrictionModelCopyWith<$Res> {
  factory $RestrictionModelCopyWith(
    RestrictionModel value,
    $Res Function(RestrictionModel) then,
  ) = _$RestrictionModelCopyWithImpl<$Res, RestrictionModel>;
  @useResult
  $Res call({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? userId,
    @JsonKey(fromJson: parseIntFromJson) int? penaltyId,
    String? restrictionType,
    String? status,
    String? reason,
    String? startsAt,
    String? expiresAt,
    String? revokedAt,
    String? revocationReason,
    String? createdAt,
  });
}

/// @nodoc
class _$RestrictionModelCopyWithImpl<$Res, $Val extends RestrictionModel>
    implements $RestrictionModelCopyWith<$Res> {
  _$RestrictionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RestrictionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? penaltyId = freezed,
    Object? restrictionType = freezed,
    Object? status = freezed,
    Object? reason = freezed,
    Object? startsAt = freezed,
    Object? expiresAt = freezed,
    Object? revokedAt = freezed,
    Object? revocationReason = freezed,
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
            penaltyId: freezed == penaltyId
                ? _value.penaltyId
                : penaltyId // ignore: cast_nullable_to_non_nullable
                      as int?,
            restrictionType: freezed == restrictionType
                ? _value.restrictionType
                : restrictionType // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            reason: freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RestrictionModelImplCopyWith<$Res>
    implements $RestrictionModelCopyWith<$Res> {
  factory _$$RestrictionModelImplCopyWith(
    _$RestrictionModelImpl value,
    $Res Function(_$RestrictionModelImpl) then,
  ) = __$$RestrictionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? userId,
    @JsonKey(fromJson: parseIntFromJson) int? penaltyId,
    String? restrictionType,
    String? status,
    String? reason,
    String? startsAt,
    String? expiresAt,
    String? revokedAt,
    String? revocationReason,
    String? createdAt,
  });
}

/// @nodoc
class __$$RestrictionModelImplCopyWithImpl<$Res>
    extends _$RestrictionModelCopyWithImpl<$Res, _$RestrictionModelImpl>
    implements _$$RestrictionModelImplCopyWith<$Res> {
  __$$RestrictionModelImplCopyWithImpl(
    _$RestrictionModelImpl _value,
    $Res Function(_$RestrictionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RestrictionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? penaltyId = freezed,
    Object? restrictionType = freezed,
    Object? status = freezed,
    Object? reason = freezed,
    Object? startsAt = freezed,
    Object? expiresAt = freezed,
    Object? revokedAt = freezed,
    Object? revocationReason = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$RestrictionModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        penaltyId: freezed == penaltyId
            ? _value.penaltyId
            : penaltyId // ignore: cast_nullable_to_non_nullable
                  as int?,
        restrictionType: freezed == restrictionType
            ? _value.restrictionType
            : restrictionType // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
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
class _$RestrictionModelImpl implements _RestrictionModel {
  const _$RestrictionModelImpl({
    @JsonKey(fromJson: parseIntFromJson) this.id,
    @JsonKey(fromJson: parseIntFromJson) this.userId,
    @JsonKey(fromJson: parseIntFromJson) this.penaltyId,
    this.restrictionType,
    this.status,
    this.reason,
    this.startsAt,
    this.expiresAt,
    this.revokedAt,
    this.revocationReason,
    this.createdAt,
  });

  factory _$RestrictionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestrictionModelImplFromJson(json);

  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? id;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? userId;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? penaltyId;
  @override
  final String? restrictionType;
  @override
  final String? status;
  @override
  final String? reason;
  @override
  final String? startsAt;
  @override
  final String? expiresAt;
  @override
  final String? revokedAt;
  @override
  final String? revocationReason;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'RestrictionModel(id: $id, userId: $userId, penaltyId: $penaltyId, restrictionType: $restrictionType, status: $status, reason: $reason, startsAt: $startsAt, expiresAt: $expiresAt, revokedAt: $revokedAt, revocationReason: $revocationReason, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestrictionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.penaltyId, penaltyId) ||
                other.penaltyId == penaltyId) &&
            (identical(other.restrictionType, restrictionType) ||
                other.restrictionType == restrictionType) &&
            (identical(other.status, status) || other.status == status) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    penaltyId,
    restrictionType,
    status,
    reason,
    startsAt,
    expiresAt,
    revokedAt,
    revocationReason,
    createdAt,
  );

  /// Create a copy of RestrictionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestrictionModelImplCopyWith<_$RestrictionModelImpl> get copyWith =>
      __$$RestrictionModelImplCopyWithImpl<_$RestrictionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RestrictionModelImplToJson(this);
  }
}

abstract class _RestrictionModel implements RestrictionModel {
  const factory _RestrictionModel({
    @JsonKey(fromJson: parseIntFromJson) final int? id,
    @JsonKey(fromJson: parseIntFromJson) final int? userId,
    @JsonKey(fromJson: parseIntFromJson) final int? penaltyId,
    final String? restrictionType,
    final String? status,
    final String? reason,
    final String? startsAt,
    final String? expiresAt,
    final String? revokedAt,
    final String? revocationReason,
    final String? createdAt,
  }) = _$RestrictionModelImpl;

  factory _RestrictionModel.fromJson(Map<String, dynamic> json) =
      _$RestrictionModelImpl.fromJson;

  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get id;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get userId;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get penaltyId;
  @override
  String? get restrictionType;
  @override
  String? get status;
  @override
  String? get reason;
  @override
  String? get startsAt;
  @override
  String? get expiresAt;
  @override
  String? get revokedAt;
  @override
  String? get revocationReason;
  @override
  String? get createdAt;

  /// Create a copy of RestrictionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestrictionModelImplCopyWith<_$RestrictionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
