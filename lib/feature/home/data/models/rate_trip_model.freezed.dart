// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_trip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RateTripModel _$RateTripModelFromJson(Map<String, dynamic> json) {
  return _RateTripModel.fromJson(json);
}

/// @nodoc
mixin _$RateTripModel {
  int? get id => throw _privateConstructorUsedError;
  int? get tripId => throw _privateConstructorUsedError;
  int? get fromUserId => throw _privateConstructorUsedError;
  int? get toUserId => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;
  List<RateTripTagModel>? get tags => throw _privateConstructorUsedError;
  RateTripUserModel? get fromUser => throw _privateConstructorUsedError;

  /// Serializes this RateTripModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RateTripModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RateTripModelCopyWith<RateTripModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateTripModelCopyWith<$Res> {
  factory $RateTripModelCopyWith(
    RateTripModel value,
    $Res Function(RateTripModel) then,
  ) = _$RateTripModelCopyWithImpl<$Res, RateTripModel>;
  @useResult
  $Res call({
    int? id,
    int? tripId,
    int? fromUserId,
    int? toUserId,
    int? score,
    String? comment,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
    List<RateTripTagModel>? tags,
    RateTripUserModel? fromUser,
  });

  $RateTripUserModelCopyWith<$Res>? get fromUser;
}

/// @nodoc
class _$RateTripModelCopyWithImpl<$Res, $Val extends RateTripModel>
    implements $RateTripModelCopyWith<$Res> {
  _$RateTripModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RateTripModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tripId = freezed,
    Object? fromUserId = freezed,
    Object? toUserId = freezed,
    Object? score = freezed,
    Object? comment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? tags = freezed,
    Object? fromUser = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            tripId: freezed == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                      as int?,
            fromUserId: freezed == fromUserId
                ? _value.fromUserId
                : fromUserId // ignore: cast_nullable_to_non_nullable
                      as int?,
            toUserId: freezed == toUserId
                ? _value.toUserId
                : toUserId // ignore: cast_nullable_to_non_nullable
                      as int?,
            score: freezed == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int?,
            comment: freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            deletedAt: freezed == deletedAt
                ? _value.deletedAt
                : deletedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            tags: freezed == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<RateTripTagModel>?,
            fromUser: freezed == fromUser
                ? _value.fromUser
                : fromUser // ignore: cast_nullable_to_non_nullable
                      as RateTripUserModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of RateTripModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RateTripUserModelCopyWith<$Res>? get fromUser {
    if (_value.fromUser == null) {
      return null;
    }

    return $RateTripUserModelCopyWith<$Res>(_value.fromUser!, (value) {
      return _then(_value.copyWith(fromUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RateTripModelImplCopyWith<$Res>
    implements $RateTripModelCopyWith<$Res> {
  factory _$$RateTripModelImplCopyWith(
    _$RateTripModelImpl value,
    $Res Function(_$RateTripModelImpl) then,
  ) = __$$RateTripModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    int? tripId,
    int? fromUserId,
    int? toUserId,
    int? score,
    String? comment,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
    List<RateTripTagModel>? tags,
    RateTripUserModel? fromUser,
  });

  @override
  $RateTripUserModelCopyWith<$Res>? get fromUser;
}

/// @nodoc
class __$$RateTripModelImplCopyWithImpl<$Res>
    extends _$RateTripModelCopyWithImpl<$Res, _$RateTripModelImpl>
    implements _$$RateTripModelImplCopyWith<$Res> {
  __$$RateTripModelImplCopyWithImpl(
    _$RateTripModelImpl _value,
    $Res Function(_$RateTripModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RateTripModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tripId = freezed,
    Object? fromUserId = freezed,
    Object? toUserId = freezed,
    Object? score = freezed,
    Object? comment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? tags = freezed,
    Object? fromUser = freezed,
  }) {
    return _then(
      _$RateTripModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        tripId: freezed == tripId
            ? _value.tripId
            : tripId // ignore: cast_nullable_to_non_nullable
                  as int?,
        fromUserId: freezed == fromUserId
            ? _value.fromUserId
            : fromUserId // ignore: cast_nullable_to_non_nullable
                  as int?,
        toUserId: freezed == toUserId
            ? _value.toUserId
            : toUserId // ignore: cast_nullable_to_non_nullable
                  as int?,
        score: freezed == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int?,
        comment: freezed == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        deletedAt: freezed == deletedAt
            ? _value.deletedAt
            : deletedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        tags: freezed == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<RateTripTagModel>?,
        fromUser: freezed == fromUser
            ? _value.fromUser
            : fromUser // ignore: cast_nullable_to_non_nullable
                  as RateTripUserModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RateTripModelImpl implements _RateTripModel {
  const _$RateTripModelImpl({
    this.id,
    this.tripId,
    this.fromUserId,
    this.toUserId,
    this.score,
    this.comment,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    final List<RateTripTagModel>? tags,
    this.fromUser,
  }) : _tags = tags;

  factory _$RateTripModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RateTripModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? tripId;
  @override
  final int? fromUserId;
  @override
  final int? toUserId;
  @override
  final int? score;
  @override
  final String? comment;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deletedAt;
  final List<RateTripTagModel>? _tags;
  @override
  List<RateTripTagModel>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final RateTripUserModel? fromUser;

  @override
  String toString() {
    return 'RateTripModel(id: $id, tripId: $tripId, fromUserId: $fromUserId, toUserId: $toUserId, score: $score, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, tags: $tags, fromUser: $fromUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateTripModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.fromUserId, fromUserId) ||
                other.fromUserId == fromUserId) &&
            (identical(other.toUserId, toUserId) ||
                other.toUserId == toUserId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.fromUser, fromUser) ||
                other.fromUser == fromUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    tripId,
    fromUserId,
    toUserId,
    score,
    comment,
    createdAt,
    updatedAt,
    deletedAt,
    const DeepCollectionEquality().hash(_tags),
    fromUser,
  );

  /// Create a copy of RateTripModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RateTripModelImplCopyWith<_$RateTripModelImpl> get copyWith =>
      __$$RateTripModelImplCopyWithImpl<_$RateTripModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RateTripModelImplToJson(this);
  }
}

abstract class _RateTripModel implements RateTripModel {
  const factory _RateTripModel({
    final int? id,
    final int? tripId,
    final int? fromUserId,
    final int? toUserId,
    final int? score,
    final String? comment,
    final String? createdAt,
    final String? updatedAt,
    final String? deletedAt,
    final List<RateTripTagModel>? tags,
    final RateTripUserModel? fromUser,
  }) = _$RateTripModelImpl;

  factory _RateTripModel.fromJson(Map<String, dynamic> json) =
      _$RateTripModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get tripId;
  @override
  int? get fromUserId;
  @override
  int? get toUserId;
  @override
  int? get score;
  @override
  String? get comment;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get deletedAt;
  @override
  List<RateTripTagModel>? get tags;
  @override
  RateTripUserModel? get fromUser;

  /// Create a copy of RateTripModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateTripModelImplCopyWith<_$RateTripModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RateTripTagModel _$RateTripTagModelFromJson(Map<String, dynamic> json) {
  return _RateTripTagModel.fromJson(json);
}

/// @nodoc
mixin _$RateTripTagModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get targetType => throw _privateConstructorUsedError;
  String? get sentiment => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this RateTripTagModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RateTripTagModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RateTripTagModelCopyWith<RateTripTagModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateTripTagModelCopyWith<$Res> {
  factory $RateTripTagModelCopyWith(
    RateTripTagModel value,
    $Res Function(RateTripTagModel) then,
  ) = _$RateTripTagModelCopyWithImpl<$Res, RateTripTagModel>;
  @useResult
  $Res call({
    int? id,
    String? code,
    String? targetType,
    String? sentiment,
    bool? isActive,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
  });
}

/// @nodoc
class _$RateTripTagModelCopyWithImpl<$Res, $Val extends RateTripTagModel>
    implements $RateTripTagModelCopyWith<$Res> {
  _$RateTripTagModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RateTripTagModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? targetType = freezed,
    Object? sentiment = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            code: freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String?,
            targetType: freezed == targetType
                ? _value.targetType
                : targetType // ignore: cast_nullable_to_non_nullable
                      as String?,
            sentiment: freezed == sentiment
                ? _value.sentiment
                : sentiment // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            deletedAt: freezed == deletedAt
                ? _value.deletedAt
                : deletedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RateTripTagModelImplCopyWith<$Res>
    implements $RateTripTagModelCopyWith<$Res> {
  factory _$$RateTripTagModelImplCopyWith(
    _$RateTripTagModelImpl value,
    $Res Function(_$RateTripTagModelImpl) then,
  ) = __$$RateTripTagModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String? code,
    String? targetType,
    String? sentiment,
    bool? isActive,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
  });
}

/// @nodoc
class __$$RateTripTagModelImplCopyWithImpl<$Res>
    extends _$RateTripTagModelCopyWithImpl<$Res, _$RateTripTagModelImpl>
    implements _$$RateTripTagModelImplCopyWith<$Res> {
  __$$RateTripTagModelImplCopyWithImpl(
    _$RateTripTagModelImpl _value,
    $Res Function(_$RateTripTagModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RateTripTagModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? targetType = freezed,
    Object? sentiment = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(
      _$RateTripTagModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        code: freezed == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String?,
        targetType: freezed == targetType
            ? _value.targetType
            : targetType // ignore: cast_nullable_to_non_nullable
                  as String?,
        sentiment: freezed == sentiment
            ? _value.sentiment
            : sentiment // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: freezed == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        deletedAt: freezed == deletedAt
            ? _value.deletedAt
            : deletedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RateTripTagModelImpl implements _RateTripTagModel {
  const _$RateTripTagModelImpl({
    this.id,
    this.code,
    this.targetType,
    this.sentiment,
    this.isActive,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory _$RateTripTagModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RateTripTagModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? targetType;
  @override
  final String? sentiment;
  @override
  final bool? isActive;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deletedAt;

  @override
  String toString() {
    return 'RateTripTagModel(id: $id, code: $code, targetType: $targetType, sentiment: $sentiment, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateTripTagModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    code,
    targetType,
    sentiment,
    isActive,
    createdAt,
    updatedAt,
    deletedAt,
  );

  /// Create a copy of RateTripTagModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RateTripTagModelImplCopyWith<_$RateTripTagModelImpl> get copyWith =>
      __$$RateTripTagModelImplCopyWithImpl<_$RateTripTagModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RateTripTagModelImplToJson(this);
  }
}

abstract class _RateTripTagModel implements RateTripTagModel {
  const factory _RateTripTagModel({
    final int? id,
    final String? code,
    final String? targetType,
    final String? sentiment,
    final bool? isActive,
    final String? createdAt,
    final String? updatedAt,
    final String? deletedAt,
  }) = _$RateTripTagModelImpl;

  factory _RateTripTagModel.fromJson(Map<String, dynamic> json) =
      _$RateTripTagModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get targetType;
  @override
  String? get sentiment;
  @override
  bool? get isActive;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get deletedAt;

  /// Create a copy of RateTripTagModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateTripTagModelImplCopyWith<_$RateTripTagModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RateTripUserModel _$RateTripUserModelFromJson(Map<String, dynamic> json) {
  return _RateTripUserModel.fromJson(json);
}

/// @nodoc
mixin _$RateTripUserModel {
  int? get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;

  /// Serializes this RateTripUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RateTripUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RateTripUserModelCopyWith<RateTripUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateTripUserModelCopyWith<$Res> {
  factory $RateTripUserModelCopyWith(
    RateTripUserModel value,
    $Res Function(RateTripUserModel) then,
  ) = _$RateTripUserModelCopyWithImpl<$Res, RateTripUserModel>;
  @useResult
  $Res call({int? id, String? fullName});
}

/// @nodoc
class _$RateTripUserModelCopyWithImpl<$Res, $Val extends RateTripUserModel>
    implements $RateTripUserModelCopyWith<$Res> {
  _$RateTripUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RateTripUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? fullName = freezed}) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RateTripUserModelImplCopyWith<$Res>
    implements $RateTripUserModelCopyWith<$Res> {
  factory _$$RateTripUserModelImplCopyWith(
    _$RateTripUserModelImpl value,
    $Res Function(_$RateTripUserModelImpl) then,
  ) = __$$RateTripUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? fullName});
}

/// @nodoc
class __$$RateTripUserModelImplCopyWithImpl<$Res>
    extends _$RateTripUserModelCopyWithImpl<$Res, _$RateTripUserModelImpl>
    implements _$$RateTripUserModelImplCopyWith<$Res> {
  __$$RateTripUserModelImplCopyWithImpl(
    _$RateTripUserModelImpl _value,
    $Res Function(_$RateTripUserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RateTripUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? fullName = freezed}) {
    return _then(
      _$RateTripUserModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RateTripUserModelImpl implements _RateTripUserModel {
  const _$RateTripUserModelImpl({this.id, this.fullName});

  factory _$RateTripUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RateTripUserModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? fullName;

  @override
  String toString() {
    return 'RateTripUserModel(id: $id, fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateTripUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName);

  /// Create a copy of RateTripUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RateTripUserModelImplCopyWith<_$RateTripUserModelImpl> get copyWith =>
      __$$RateTripUserModelImplCopyWithImpl<_$RateTripUserModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RateTripUserModelImplToJson(this);
  }
}

abstract class _RateTripUserModel implements RateTripUserModel {
  const factory _RateTripUserModel({final int? id, final String? fullName}) =
      _$RateTripUserModelImpl;

  factory _RateTripUserModel.fromJson(Map<String, dynamic> json) =
      _$RateTripUserModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get fullName;

  /// Create a copy of RateTripUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateTripUserModelImplCopyWith<_$RateTripUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
