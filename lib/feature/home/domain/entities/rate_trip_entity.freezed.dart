// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_trip_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RateTripEntity {
  int get id => throw _privateConstructorUsedError;
  int get tripId => throw _privateConstructorUsedError;
  int get fromUserId => throw _privateConstructorUsedError;
  int get toUserId => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  List<RateTripTagEntity> get tags => throw _privateConstructorUsedError;
  RateTripUserEntity get fromUser => throw _privateConstructorUsedError;

  /// Create a copy of RateTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RateTripEntityCopyWith<RateTripEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateTripEntityCopyWith<$Res> {
  factory $RateTripEntityCopyWith(
    RateTripEntity value,
    $Res Function(RateTripEntity) then,
  ) = _$RateTripEntityCopyWithImpl<$Res, RateTripEntity>;
  @useResult
  $Res call({
    int id,
    int tripId,
    int fromUserId,
    int toUserId,
    int score,
    String comment,
    String createdAt,
    String updatedAt,
    List<RateTripTagEntity> tags,
    RateTripUserEntity fromUser,
  });

  $RateTripUserEntityCopyWith<$Res> get fromUser;
}

/// @nodoc
class _$RateTripEntityCopyWithImpl<$Res, $Val extends RateTripEntity>
    implements $RateTripEntityCopyWith<$Res> {
  _$RateTripEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RateTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tripId = null,
    Object? fromUserId = null,
    Object? toUserId = null,
    Object? score = null,
    Object? comment = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? tags = null,
    Object? fromUser = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            tripId: null == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                      as int,
            fromUserId: null == fromUserId
                ? _value.fromUserId
                : fromUserId // ignore: cast_nullable_to_non_nullable
                      as int,
            toUserId: null == toUserId
                ? _value.toUserId
                : toUserId // ignore: cast_nullable_to_non_nullable
                      as int,
            score: null == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int,
            comment: null == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String,
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<RateTripTagEntity>,
            fromUser: null == fromUser
                ? _value.fromUser
                : fromUser // ignore: cast_nullable_to_non_nullable
                      as RateTripUserEntity,
          )
          as $Val,
    );
  }

  /// Create a copy of RateTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RateTripUserEntityCopyWith<$Res> get fromUser {
    return $RateTripUserEntityCopyWith<$Res>(_value.fromUser, (value) {
      return _then(_value.copyWith(fromUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RateTripEntityImplCopyWith<$Res>
    implements $RateTripEntityCopyWith<$Res> {
  factory _$$RateTripEntityImplCopyWith(
    _$RateTripEntityImpl value,
    $Res Function(_$RateTripEntityImpl) then,
  ) = __$$RateTripEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int tripId,
    int fromUserId,
    int toUserId,
    int score,
    String comment,
    String createdAt,
    String updatedAt,
    List<RateTripTagEntity> tags,
    RateTripUserEntity fromUser,
  });

  @override
  $RateTripUserEntityCopyWith<$Res> get fromUser;
}

/// @nodoc
class __$$RateTripEntityImplCopyWithImpl<$Res>
    extends _$RateTripEntityCopyWithImpl<$Res, _$RateTripEntityImpl>
    implements _$$RateTripEntityImplCopyWith<$Res> {
  __$$RateTripEntityImplCopyWithImpl(
    _$RateTripEntityImpl _value,
    $Res Function(_$RateTripEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RateTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tripId = null,
    Object? fromUserId = null,
    Object? toUserId = null,
    Object? score = null,
    Object? comment = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? tags = null,
    Object? fromUser = null,
  }) {
    return _then(
      _$RateTripEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        tripId: null == tripId
            ? _value.tripId
            : tripId // ignore: cast_nullable_to_non_nullable
                  as int,
        fromUserId: null == fromUserId
            ? _value.fromUserId
            : fromUserId // ignore: cast_nullable_to_non_nullable
                  as int,
        toUserId: null == toUserId
            ? _value.toUserId
            : toUserId // ignore: cast_nullable_to_non_nullable
                  as int,
        score: null == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int,
        comment: null == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String,
        tags: null == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<RateTripTagEntity>,
        fromUser: null == fromUser
            ? _value.fromUser
            : fromUser // ignore: cast_nullable_to_non_nullable
                  as RateTripUserEntity,
      ),
    );
  }
}

/// @nodoc

class _$RateTripEntityImpl implements _RateTripEntity {
  const _$RateTripEntityImpl({
    required this.id,
    required this.tripId,
    required this.fromUserId,
    required this.toUserId,
    required this.score,
    required this.comment,
    required this.createdAt,
    required this.updatedAt,
    required final List<RateTripTagEntity> tags,
    required this.fromUser,
  }) : _tags = tags;

  @override
  final int id;
  @override
  final int tripId;
  @override
  final int fromUserId;
  @override
  final int toUserId;
  @override
  final int score;
  @override
  final String comment;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  final List<RateTripTagEntity> _tags;
  @override
  List<RateTripTagEntity> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final RateTripUserEntity fromUser;

  @override
  String toString() {
    return 'RateTripEntity(id: $id, tripId: $tripId, fromUserId: $fromUserId, toUserId: $toUserId, score: $score, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt, tags: $tags, fromUser: $fromUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateTripEntityImpl &&
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
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.fromUser, fromUser) ||
                other.fromUser == fromUser));
  }

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
    const DeepCollectionEquality().hash(_tags),
    fromUser,
  );

  /// Create a copy of RateTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RateTripEntityImplCopyWith<_$RateTripEntityImpl> get copyWith =>
      __$$RateTripEntityImplCopyWithImpl<_$RateTripEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _RateTripEntity implements RateTripEntity {
  const factory _RateTripEntity({
    required final int id,
    required final int tripId,
    required final int fromUserId,
    required final int toUserId,
    required final int score,
    required final String comment,
    required final String createdAt,
    required final String updatedAt,
    required final List<RateTripTagEntity> tags,
    required final RateTripUserEntity fromUser,
  }) = _$RateTripEntityImpl;

  @override
  int get id;
  @override
  int get tripId;
  @override
  int get fromUserId;
  @override
  int get toUserId;
  @override
  int get score;
  @override
  String get comment;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  List<RateTripTagEntity> get tags;
  @override
  RateTripUserEntity get fromUser;

  /// Create a copy of RateTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateTripEntityImplCopyWith<_$RateTripEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RateTripTagEntity {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get targetType => throw _privateConstructorUsedError;
  String get sentiment => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of RateTripTagEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RateTripTagEntityCopyWith<RateTripTagEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateTripTagEntityCopyWith<$Res> {
  factory $RateTripTagEntityCopyWith(
    RateTripTagEntity value,
    $Res Function(RateTripTagEntity) then,
  ) = _$RateTripTagEntityCopyWithImpl<$Res, RateTripTagEntity>;
  @useResult
  $Res call({
    int id,
    String code,
    String targetType,
    String sentiment,
    bool isActive,
    String createdAt,
  });
}

/// @nodoc
class _$RateTripTagEntityCopyWithImpl<$Res, $Val extends RateTripTagEntity>
    implements $RateTripTagEntityCopyWith<$Res> {
  _$RateTripTagEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RateTripTagEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? targetType = null,
    Object? sentiment = null,
    Object? isActive = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
            targetType: null == targetType
                ? _value.targetType
                : targetType // ignore: cast_nullable_to_non_nullable
                      as String,
            sentiment: null == sentiment
                ? _value.sentiment
                : sentiment // ignore: cast_nullable_to_non_nullable
                      as String,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
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
abstract class _$$RateTripTagEntityImplCopyWith<$Res>
    implements $RateTripTagEntityCopyWith<$Res> {
  factory _$$RateTripTagEntityImplCopyWith(
    _$RateTripTagEntityImpl value,
    $Res Function(_$RateTripTagEntityImpl) then,
  ) = __$$RateTripTagEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String code,
    String targetType,
    String sentiment,
    bool isActive,
    String createdAt,
  });
}

/// @nodoc
class __$$RateTripTagEntityImplCopyWithImpl<$Res>
    extends _$RateTripTagEntityCopyWithImpl<$Res, _$RateTripTagEntityImpl>
    implements _$$RateTripTagEntityImplCopyWith<$Res> {
  __$$RateTripTagEntityImplCopyWithImpl(
    _$RateTripTagEntityImpl _value,
    $Res Function(_$RateTripTagEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RateTripTagEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? targetType = null,
    Object? sentiment = null,
    Object? isActive = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$RateTripTagEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        targetType: null == targetType
            ? _value.targetType
            : targetType // ignore: cast_nullable_to_non_nullable
                  as String,
        sentiment: null == sentiment
            ? _value.sentiment
            : sentiment // ignore: cast_nullable_to_non_nullable
                  as String,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RateTripTagEntityImpl implements _RateTripTagEntity {
  const _$RateTripTagEntityImpl({
    required this.id,
    required this.code,
    required this.targetType,
    required this.sentiment,
    required this.isActive,
    required this.createdAt,
  });

  @override
  final int id;
  @override
  final String code;
  @override
  final String targetType;
  @override
  final String sentiment;
  @override
  final bool isActive;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'RateTripTagEntity(id: $id, code: $code, targetType: $targetType, sentiment: $sentiment, isActive: $isActive, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateTripTagEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    code,
    targetType,
    sentiment,
    isActive,
    createdAt,
  );

  /// Create a copy of RateTripTagEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RateTripTagEntityImplCopyWith<_$RateTripTagEntityImpl> get copyWith =>
      __$$RateTripTagEntityImplCopyWithImpl<_$RateTripTagEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _RateTripTagEntity implements RateTripTagEntity {
  const factory _RateTripTagEntity({
    required final int id,
    required final String code,
    required final String targetType,
    required final String sentiment,
    required final bool isActive,
    required final String createdAt,
  }) = _$RateTripTagEntityImpl;

  @override
  int get id;
  @override
  String get code;
  @override
  String get targetType;
  @override
  String get sentiment;
  @override
  bool get isActive;
  @override
  String get createdAt;

  /// Create a copy of RateTripTagEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateTripTagEntityImplCopyWith<_$RateTripTagEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RateTripUserEntity {
  int get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;

  /// Create a copy of RateTripUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RateTripUserEntityCopyWith<RateTripUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateTripUserEntityCopyWith<$Res> {
  factory $RateTripUserEntityCopyWith(
    RateTripUserEntity value,
    $Res Function(RateTripUserEntity) then,
  ) = _$RateTripUserEntityCopyWithImpl<$Res, RateTripUserEntity>;
  @useResult
  $Res call({int id, String fullName});
}

/// @nodoc
class _$RateTripUserEntityCopyWithImpl<$Res, $Val extends RateTripUserEntity>
    implements $RateTripUserEntityCopyWith<$Res> {
  _$RateTripUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RateTripUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? fullName = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RateTripUserEntityImplCopyWith<$Res>
    implements $RateTripUserEntityCopyWith<$Res> {
  factory _$$RateTripUserEntityImplCopyWith(
    _$RateTripUserEntityImpl value,
    $Res Function(_$RateTripUserEntityImpl) then,
  ) = __$$RateTripUserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String fullName});
}

/// @nodoc
class __$$RateTripUserEntityImplCopyWithImpl<$Res>
    extends _$RateTripUserEntityCopyWithImpl<$Res, _$RateTripUserEntityImpl>
    implements _$$RateTripUserEntityImplCopyWith<$Res> {
  __$$RateTripUserEntityImplCopyWithImpl(
    _$RateTripUserEntityImpl _value,
    $Res Function(_$RateTripUserEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RateTripUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? fullName = null}) {
    return _then(
      _$RateTripUserEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RateTripUserEntityImpl implements _RateTripUserEntity {
  const _$RateTripUserEntityImpl({required this.id, required this.fullName});

  @override
  final int id;
  @override
  final String fullName;

  @override
  String toString() {
    return 'RateTripUserEntity(id: $id, fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateTripUserEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, fullName);

  /// Create a copy of RateTripUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RateTripUserEntityImplCopyWith<_$RateTripUserEntityImpl> get copyWith =>
      __$$RateTripUserEntityImplCopyWithImpl<_$RateTripUserEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _RateTripUserEntity implements RateTripUserEntity {
  const factory _RateTripUserEntity({
    required final int id,
    required final String fullName,
  }) = _$RateTripUserEntityImpl;

  @override
  int get id;
  @override
  String get fullName;

  /// Create a copy of RateTripUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateTripUserEntityImplCopyWith<_$RateTripUserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
