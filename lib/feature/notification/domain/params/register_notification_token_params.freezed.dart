// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_notification_token_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RegisterNotificationTokenParams _$RegisterNotificationTokenParamsFromJson(
  Map<String, dynamic> json,
) {
  return _RegisterNotificationTokenParams.fromJson(json);
}

/// @nodoc
mixin _$RegisterNotificationTokenParams {
  String? get token => throw _privateConstructorUsedError;
  String? get platform => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;

  /// Serializes this RegisterNotificationTokenParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterNotificationTokenParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterNotificationTokenParamsCopyWith<RegisterNotificationTokenParams>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterNotificationTokenParamsCopyWith<$Res> {
  factory $RegisterNotificationTokenParamsCopyWith(
    RegisterNotificationTokenParams value,
    $Res Function(RegisterNotificationTokenParams) then,
  ) =
      _$RegisterNotificationTokenParamsCopyWithImpl<
        $Res,
        RegisterNotificationTokenParams
      >;
  @useResult
  $Res call({String? token, String? platform, String? deviceId});
}

/// @nodoc
class _$RegisterNotificationTokenParamsCopyWithImpl<
  $Res,
  $Val extends RegisterNotificationTokenParams
>
    implements $RegisterNotificationTokenParamsCopyWith<$Res> {
  _$RegisterNotificationTokenParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterNotificationTokenParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? platform = freezed,
    Object? deviceId = freezed,
  }) {
    return _then(
      _value.copyWith(
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RegisterNotificationTokenParamsImplCopyWith<$Res>
    implements $RegisterNotificationTokenParamsCopyWith<$Res> {
  factory _$$RegisterNotificationTokenParamsImplCopyWith(
    _$RegisterNotificationTokenParamsImpl value,
    $Res Function(_$RegisterNotificationTokenParamsImpl) then,
  ) = __$$RegisterNotificationTokenParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token, String? platform, String? deviceId});
}

/// @nodoc
class __$$RegisterNotificationTokenParamsImplCopyWithImpl<$Res>
    extends
        _$RegisterNotificationTokenParamsCopyWithImpl<
          $Res,
          _$RegisterNotificationTokenParamsImpl
        >
    implements _$$RegisterNotificationTokenParamsImplCopyWith<$Res> {
  __$$RegisterNotificationTokenParamsImplCopyWithImpl(
    _$RegisterNotificationTokenParamsImpl _value,
    $Res Function(_$RegisterNotificationTokenParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterNotificationTokenParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? platform = freezed,
    Object? deviceId = freezed,
  }) {
    return _then(
      _$RegisterNotificationTokenParamsImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterNotificationTokenParamsImpl
    implements _RegisterNotificationTokenParams {
  const _$RegisterNotificationTokenParamsImpl({
    this.token,
    this.platform,
    this.deviceId,
  });

  factory _$RegisterNotificationTokenParamsImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$RegisterNotificationTokenParamsImplFromJson(json);

  @override
  final String? token;
  @override
  final String? platform;
  @override
  final String? deviceId;

  @override
  String toString() {
    return 'RegisterNotificationTokenParams(token: $token, platform: $platform, deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterNotificationTokenParamsImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, platform, deviceId);

  /// Create a copy of RegisterNotificationTokenParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterNotificationTokenParamsImplCopyWith<
    _$RegisterNotificationTokenParamsImpl
  >
  get copyWith =>
      __$$RegisterNotificationTokenParamsImplCopyWithImpl<
        _$RegisterNotificationTokenParamsImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterNotificationTokenParamsImplToJson(this);
  }
}

abstract class _RegisterNotificationTokenParams
    implements RegisterNotificationTokenParams {
  const factory _RegisterNotificationTokenParams({
    final String? token,
    final String? platform,
    final String? deviceId,
  }) = _$RegisterNotificationTokenParamsImpl;

  factory _RegisterNotificationTokenParams.fromJson(Map<String, dynamic> json) =
      _$RegisterNotificationTokenParamsImpl.fromJson;

  @override
  String? get token;
  @override
  String? get platform;
  @override
  String? get deviceId;

  /// Create a copy of RegisterNotificationTokenParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterNotificationTokenParamsImplCopyWith<
    _$RegisterNotificationTokenParamsImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
