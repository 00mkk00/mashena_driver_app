// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'go_online_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GoOnlineParams _$GoOnlineParamsFromJson(Map<String, dynamic> json) {
  return _GoOnlineParams.fromJson(json);
}

/// @nodoc
mixin _$GoOnlineParams {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  /// Serializes this GoOnlineParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoOnlineParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoOnlineParamsCopyWith<GoOnlineParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoOnlineParamsCopyWith<$Res> {
  factory $GoOnlineParamsCopyWith(
    GoOnlineParams value,
    $Res Function(GoOnlineParams) then,
  ) = _$GoOnlineParamsCopyWithImpl<$Res, GoOnlineParams>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$GoOnlineParamsCopyWithImpl<$Res, $Val extends GoOnlineParams>
    implements $GoOnlineParamsCopyWith<$Res> {
  _$GoOnlineParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoOnlineParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lat = null, Object? lng = null}) {
    return _then(
      _value.copyWith(
            lat: null == lat
                ? _value.lat
                : lat // ignore: cast_nullable_to_non_nullable
                      as double,
            lng: null == lng
                ? _value.lng
                : lng // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GoOnlineParamsImplCopyWith<$Res>
    implements $GoOnlineParamsCopyWith<$Res> {
  factory _$$GoOnlineParamsImplCopyWith(
    _$GoOnlineParamsImpl value,
    $Res Function(_$GoOnlineParamsImpl) then,
  ) = __$$GoOnlineParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$GoOnlineParamsImplCopyWithImpl<$Res>
    extends _$GoOnlineParamsCopyWithImpl<$Res, _$GoOnlineParamsImpl>
    implements _$$GoOnlineParamsImplCopyWith<$Res> {
  __$$GoOnlineParamsImplCopyWithImpl(
    _$GoOnlineParamsImpl _value,
    $Res Function(_$GoOnlineParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GoOnlineParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lat = null, Object? lng = null}) {
    return _then(
      _$GoOnlineParamsImpl(
        lat: null == lat
            ? _value.lat
            : lat // ignore: cast_nullable_to_non_nullable
                  as double,
        lng: null == lng
            ? _value.lng
            : lng // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GoOnlineParamsImpl implements _GoOnlineParams {
  const _$GoOnlineParamsImpl({required this.lat, required this.lng});

  factory _$GoOnlineParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoOnlineParamsImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'GoOnlineParams(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoOnlineParamsImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  /// Create a copy of GoOnlineParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoOnlineParamsImplCopyWith<_$GoOnlineParamsImpl> get copyWith =>
      __$$GoOnlineParamsImplCopyWithImpl<_$GoOnlineParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GoOnlineParamsImplToJson(this);
  }
}

abstract class _GoOnlineParams implements GoOnlineParams {
  const factory _GoOnlineParams({
    required final double lat,
    required final double lng,
  }) = _$GoOnlineParamsImpl;

  factory _GoOnlineParams.fromJson(Map<String, dynamic> json) =
      _$GoOnlineParamsImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;

  /// Create a copy of GoOnlineParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoOnlineParamsImplCopyWith<_$GoOnlineParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
