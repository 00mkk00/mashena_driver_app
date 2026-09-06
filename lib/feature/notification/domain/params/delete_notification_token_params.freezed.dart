// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_notification_token_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeleteNotificationTokenParams _$DeleteNotificationTokenParamsFromJson(
  Map<String, dynamic> json,
) {
  return _DeleteNotificationTokenParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteNotificationTokenParams {
  String? get token => throw _privateConstructorUsedError;

  /// Serializes this DeleteNotificationTokenParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteNotificationTokenParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteNotificationTokenParamsCopyWith<DeleteNotificationTokenParams>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteNotificationTokenParamsCopyWith<$Res> {
  factory $DeleteNotificationTokenParamsCopyWith(
    DeleteNotificationTokenParams value,
    $Res Function(DeleteNotificationTokenParams) then,
  ) =
      _$DeleteNotificationTokenParamsCopyWithImpl<
        $Res,
        DeleteNotificationTokenParams
      >;
  @useResult
  $Res call({String? token});
}

/// @nodoc
class _$DeleteNotificationTokenParamsCopyWithImpl<
  $Res,
  $Val extends DeleteNotificationTokenParams
>
    implements $DeleteNotificationTokenParamsCopyWith<$Res> {
  _$DeleteNotificationTokenParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteNotificationTokenParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = freezed}) {
    return _then(
      _value.copyWith(
            token: freezed == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeleteNotificationTokenParamsImplCopyWith<$Res>
    implements $DeleteNotificationTokenParamsCopyWith<$Res> {
  factory _$$DeleteNotificationTokenParamsImplCopyWith(
    _$DeleteNotificationTokenParamsImpl value,
    $Res Function(_$DeleteNotificationTokenParamsImpl) then,
  ) = __$$DeleteNotificationTokenParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token});
}

/// @nodoc
class __$$DeleteNotificationTokenParamsImplCopyWithImpl<$Res>
    extends
        _$DeleteNotificationTokenParamsCopyWithImpl<
          $Res,
          _$DeleteNotificationTokenParamsImpl
        >
    implements _$$DeleteNotificationTokenParamsImplCopyWith<$Res> {
  __$$DeleteNotificationTokenParamsImplCopyWithImpl(
    _$DeleteNotificationTokenParamsImpl _value,
    $Res Function(_$DeleteNotificationTokenParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteNotificationTokenParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = freezed}) {
    return _then(
      _$DeleteNotificationTokenParamsImpl(
        token: freezed == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteNotificationTokenParamsImpl
    implements _DeleteNotificationTokenParams {
  const _$DeleteNotificationTokenParamsImpl({this.token});

  factory _$DeleteNotificationTokenParamsImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$DeleteNotificationTokenParamsImplFromJson(json);

  @override
  final String? token;

  @override
  String toString() {
    return 'DeleteNotificationTokenParams(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNotificationTokenParamsImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of DeleteNotificationTokenParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNotificationTokenParamsImplCopyWith<
    _$DeleteNotificationTokenParamsImpl
  >
  get copyWith =>
      __$$DeleteNotificationTokenParamsImplCopyWithImpl<
        _$DeleteNotificationTokenParamsImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteNotificationTokenParamsImplToJson(this);
  }
}

abstract class _DeleteNotificationTokenParams
    implements DeleteNotificationTokenParams {
  const factory _DeleteNotificationTokenParams({final String? token}) =
      _$DeleteNotificationTokenParamsImpl;

  factory _DeleteNotificationTokenParams.fromJson(Map<String, dynamic> json) =
      _$DeleteNotificationTokenParamsImpl.fromJson;

  @override
  String? get token;

  /// Create a copy of DeleteNotificationTokenParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteNotificationTokenParamsImplCopyWith<
    _$DeleteNotificationTokenParamsImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
