// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationTokenModel _$NotificationTokenModelFromJson(
  Map<String, dynamic> json,
) {
  return _NotificationTokenModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationTokenModel {
  int? get id => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get platform => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  String? get lastUsedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this NotificationTokenModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationTokenModelCopyWith<NotificationTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationTokenModelCopyWith<$Res> {
  factory $NotificationTokenModelCopyWith(
    NotificationTokenModel value,
    $Res Function(NotificationTokenModel) then,
  ) = _$NotificationTokenModelCopyWithImpl<$Res, NotificationTokenModel>;
  @useResult
  $Res call({
    int? id,
    int? userId,
    String? token,
    String? platform,
    String? deviceId,
    bool? isActive,
    String? lastUsedAt,
    String? createdAt,
    String? updatedAt,
  });
}

/// @nodoc
class _$NotificationTokenModelCopyWithImpl<
  $Res,
  $Val extends NotificationTokenModel
>
    implements $NotificationTokenModelCopyWith<$Res> {
  _$NotificationTokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? token = freezed,
    Object? platform = freezed,
    Object? deviceId = freezed,
    Object? isActive = freezed,
    Object? lastUsedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
            token: freezed == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String?,
            platform: freezed == platform
                ? _value.platform
                : platform // ignore: cast_nullable_to_non_nullable
                      as String?,
            deviceId: freezed == deviceId
                ? _value.deviceId
                : deviceId // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool?,
            lastUsedAt: freezed == lastUsedAt
                ? _value.lastUsedAt
                : lastUsedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationTokenModelImplCopyWith<$Res>
    implements $NotificationTokenModelCopyWith<$Res> {
  factory _$$NotificationTokenModelImplCopyWith(
    _$NotificationTokenModelImpl value,
    $Res Function(_$NotificationTokenModelImpl) then,
  ) = __$$NotificationTokenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    int? userId,
    String? token,
    String? platform,
    String? deviceId,
    bool? isActive,
    String? lastUsedAt,
    String? createdAt,
    String? updatedAt,
  });
}

/// @nodoc
class __$$NotificationTokenModelImplCopyWithImpl<$Res>
    extends
        _$NotificationTokenModelCopyWithImpl<$Res, _$NotificationTokenModelImpl>
    implements _$$NotificationTokenModelImplCopyWith<$Res> {
  __$$NotificationTokenModelImplCopyWithImpl(
    _$NotificationTokenModelImpl _value,
    $Res Function(_$NotificationTokenModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? token = freezed,
    Object? platform = freezed,
    Object? deviceId = freezed,
    Object? isActive = freezed,
    Object? lastUsedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$NotificationTokenModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        token: freezed == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String?,
        platform: freezed == platform
            ? _value.platform
            : platform // ignore: cast_nullable_to_non_nullable
                  as String?,
        deviceId: freezed == deviceId
            ? _value.deviceId
            : deviceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: freezed == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool?,
        lastUsedAt: freezed == lastUsedAt
            ? _value.lastUsedAt
            : lastUsedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationTokenModelImpl implements _NotificationTokenModel {
  const _$NotificationTokenModelImpl({
    this.id,
    this.userId,
    this.token,
    this.platform,
    this.deviceId,
    this.isActive,
    this.lastUsedAt,
    this.createdAt,
    this.updatedAt,
  });

  factory _$NotificationTokenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationTokenModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? userId;
  @override
  final String? token;
  @override
  final String? platform;
  @override
  final String? deviceId;
  @override
  final bool? isActive;
  @override
  final String? lastUsedAt;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'NotificationTokenModel(id: $id, userId: $userId, token: $token, platform: $platform, deviceId: $deviceId, isActive: $isActive, lastUsedAt: $lastUsedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationTokenModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.lastUsedAt, lastUsedAt) ||
                other.lastUsedAt == lastUsedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    token,
    platform,
    deviceId,
    isActive,
    lastUsedAt,
    createdAt,
    updatedAt,
  );

  /// Create a copy of NotificationTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationTokenModelImplCopyWith<_$NotificationTokenModelImpl>
  get copyWith =>
      __$$NotificationTokenModelImplCopyWithImpl<_$NotificationTokenModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationTokenModelImplToJson(this);
  }
}

abstract class _NotificationTokenModel implements NotificationTokenModel {
  const factory _NotificationTokenModel({
    final int? id,
    final int? userId,
    final String? token,
    final String? platform,
    final String? deviceId,
    final bool? isActive,
    final String? lastUsedAt,
    final String? createdAt,
    final String? updatedAt,
  }) = _$NotificationTokenModelImpl;

  factory _NotificationTokenModel.fromJson(Map<String, dynamic> json) =
      _$NotificationTokenModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get userId;
  @override
  String? get token;
  @override
  String? get platform;
  @override
  String? get deviceId;
  @override
  bool? get isActive;
  @override
  String? get lastUsedAt;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;

  /// Create a copy of NotificationTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationTokenModelImplCopyWith<_$NotificationTokenModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
