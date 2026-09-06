// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appeal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AppealModel _$AppealModelFromJson(Map<String, dynamic> json) {
  return _AppealModel.fromJson(json);
}

/// @nodoc
mixin _$AppealModel {
  @JsonKey(fromJson: parseIntFromJson)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get penaltyId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get userId => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get evidence => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get submittedAt => throw _privateConstructorUsedError;
  String? get reviewedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get reviewedByUserId => throw _privateConstructorUsedError;
  String? get adminDecision => throw _privateConstructorUsedError;
  String? get adminNotes => throw _privateConstructorUsedError;
  PenaltyModel? get penalty => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this AppealModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppealModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppealModelCopyWith<AppealModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppealModelCopyWith<$Res> {
  factory $AppealModelCopyWith(
    AppealModel value,
    $Res Function(AppealModel) then,
  ) = _$AppealModelCopyWithImpl<$Res, AppealModel>;
  @useResult
  $Res call({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? penaltyId,
    @JsonKey(fromJson: parseIntFromJson) int? userId,
    String? reason,
    String? evidence,
    String? status,
    String? submittedAt,
    String? reviewedAt,
    @JsonKey(fromJson: parseIntFromJson) int? reviewedByUserId,
    String? adminDecision,
    String? adminNotes,
    PenaltyModel? penalty,
    String? createdAt,
  });

  $PenaltyModelCopyWith<$Res>? get penalty;
}

/// @nodoc
class _$AppealModelCopyWithImpl<$Res, $Val extends AppealModel>
    implements $AppealModelCopyWith<$Res> {
  _$AppealModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppealModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? penaltyId = freezed,
    Object? userId = freezed,
    Object? reason = freezed,
    Object? evidence = freezed,
    Object? status = freezed,
    Object? submittedAt = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedByUserId = freezed,
    Object? adminDecision = freezed,
    Object? adminNotes = freezed,
    Object? penalty = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            penaltyId: freezed == penaltyId
                ? _value.penaltyId
                : penaltyId // ignore: cast_nullable_to_non_nullable
                      as int?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int?,
            reason: freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String?,
            evidence: freezed == evidence
                ? _value.evidence
                : evidence // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            submittedAt: freezed == submittedAt
                ? _value.submittedAt
                : submittedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
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
                      as PenaltyModel?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of AppealModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PenaltyModelCopyWith<$Res>? get penalty {
    if (_value.penalty == null) {
      return null;
    }

    return $PenaltyModelCopyWith<$Res>(_value.penalty!, (value) {
      return _then(_value.copyWith(penalty: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppealModelImplCopyWith<$Res>
    implements $AppealModelCopyWith<$Res> {
  factory _$$AppealModelImplCopyWith(
    _$AppealModelImpl value,
    $Res Function(_$AppealModelImpl) then,
  ) = __$$AppealModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? penaltyId,
    @JsonKey(fromJson: parseIntFromJson) int? userId,
    String? reason,
    String? evidence,
    String? status,
    String? submittedAt,
    String? reviewedAt,
    @JsonKey(fromJson: parseIntFromJson) int? reviewedByUserId,
    String? adminDecision,
    String? adminNotes,
    PenaltyModel? penalty,
    String? createdAt,
  });

  @override
  $PenaltyModelCopyWith<$Res>? get penalty;
}

/// @nodoc
class __$$AppealModelImplCopyWithImpl<$Res>
    extends _$AppealModelCopyWithImpl<$Res, _$AppealModelImpl>
    implements _$$AppealModelImplCopyWith<$Res> {
  __$$AppealModelImplCopyWithImpl(
    _$AppealModelImpl _value,
    $Res Function(_$AppealModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppealModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? penaltyId = freezed,
    Object? userId = freezed,
    Object? reason = freezed,
    Object? evidence = freezed,
    Object? status = freezed,
    Object? submittedAt = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedByUserId = freezed,
    Object? adminDecision = freezed,
    Object? adminNotes = freezed,
    Object? penalty = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$AppealModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        penaltyId: freezed == penaltyId
            ? _value.penaltyId
            : penaltyId // ignore: cast_nullable_to_non_nullable
                  as int?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String?,
        evidence: freezed == evidence
            ? _value.evidence
            : evidence // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        submittedAt: freezed == submittedAt
            ? _value.submittedAt
            : submittedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
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
                  as PenaltyModel?,
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
class _$AppealModelImpl implements _AppealModel {
  const _$AppealModelImpl({
    @JsonKey(fromJson: parseIntFromJson) this.id,
    @JsonKey(fromJson: parseIntFromJson) this.penaltyId,
    @JsonKey(fromJson: parseIntFromJson) this.userId,
    this.reason,
    this.evidence,
    this.status,
    this.submittedAt,
    this.reviewedAt,
    @JsonKey(fromJson: parseIntFromJson) this.reviewedByUserId,
    this.adminDecision,
    this.adminNotes,
    this.penalty,
    this.createdAt,
  });

  factory _$AppealModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppealModelImplFromJson(json);

  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? id;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? penaltyId;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? userId;
  @override
  final String? reason;
  @override
  final String? evidence;
  @override
  final String? status;
  @override
  final String? submittedAt;
  @override
  final String? reviewedAt;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? reviewedByUserId;
  @override
  final String? adminDecision;
  @override
  final String? adminNotes;
  @override
  final PenaltyModel? penalty;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'AppealModel(id: $id, penaltyId: $penaltyId, userId: $userId, reason: $reason, evidence: $evidence, status: $status, submittedAt: $submittedAt, reviewedAt: $reviewedAt, reviewedByUserId: $reviewedByUserId, adminDecision: $adminDecision, adminNotes: $adminNotes, penalty: $penalty, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppealModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.penaltyId, penaltyId) ||
                other.penaltyId == penaltyId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.evidence, evidence) ||
                other.evidence == evidence) &&
            (identical(other.status, status) || other.status == status) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    penaltyId,
    userId,
    reason,
    evidence,
    status,
    submittedAt,
    reviewedAt,
    reviewedByUserId,
    adminDecision,
    adminNotes,
    penalty,
    createdAt,
  );

  /// Create a copy of AppealModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppealModelImplCopyWith<_$AppealModelImpl> get copyWith =>
      __$$AppealModelImplCopyWithImpl<_$AppealModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppealModelImplToJson(this);
  }
}

abstract class _AppealModel implements AppealModel {
  const factory _AppealModel({
    @JsonKey(fromJson: parseIntFromJson) final int? id,
    @JsonKey(fromJson: parseIntFromJson) final int? penaltyId,
    @JsonKey(fromJson: parseIntFromJson) final int? userId,
    final String? reason,
    final String? evidence,
    final String? status,
    final String? submittedAt,
    final String? reviewedAt,
    @JsonKey(fromJson: parseIntFromJson) final int? reviewedByUserId,
    final String? adminDecision,
    final String? adminNotes,
    final PenaltyModel? penalty,
    final String? createdAt,
  }) = _$AppealModelImpl;

  factory _AppealModel.fromJson(Map<String, dynamic> json) =
      _$AppealModelImpl.fromJson;

  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get id;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get penaltyId;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get userId;
  @override
  String? get reason;
  @override
  String? get evidence;
  @override
  String? get status;
  @override
  String? get submittedAt;
  @override
  String? get reviewedAt;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get reviewedByUserId;
  @override
  String? get adminDecision;
  @override
  String? get adminNotes;
  @override
  PenaltyModel? get penalty;
  @override
  String? get createdAt;

  /// Create a copy of AppealModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppealModelImplCopyWith<_$AppealModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
