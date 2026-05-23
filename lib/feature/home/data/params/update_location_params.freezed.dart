// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_location_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UpdateDriverLocationParams _$UpdateDriverLocationParamsFromJson(
  Map<String, dynamic> json,
) {
  return _UpdateDriverLocationParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateDriverLocationParams {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  /// Serializes this UpdateDriverLocationParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateDriverLocationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateDriverLocationParamsCopyWith<UpdateDriverLocationParams>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDriverLocationParamsCopyWith<$Res> {
  factory $UpdateDriverLocationParamsCopyWith(
    UpdateDriverLocationParams value,
    $Res Function(UpdateDriverLocationParams) then,
  ) =
      _$UpdateDriverLocationParamsCopyWithImpl<
        $Res,
        UpdateDriverLocationParams
      >;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$UpdateDriverLocationParamsCopyWithImpl<
  $Res,
  $Val extends UpdateDriverLocationParams
>
    implements $UpdateDriverLocationParamsCopyWith<$Res> {
  _$UpdateDriverLocationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateDriverLocationParams
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
abstract class _$$UpdateDriverLocationParamsImplCopyWith<$Res>
    implements $UpdateDriverLocationParamsCopyWith<$Res> {
  factory _$$UpdateDriverLocationParamsImplCopyWith(
    _$UpdateDriverLocationParamsImpl value,
    $Res Function(_$UpdateDriverLocationParamsImpl) then,
  ) = __$$UpdateDriverLocationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$UpdateDriverLocationParamsImplCopyWithImpl<$Res>
    extends
        _$UpdateDriverLocationParamsCopyWithImpl<
          $Res,
          _$UpdateDriverLocationParamsImpl
        >
    implements _$$UpdateDriverLocationParamsImplCopyWith<$Res> {
  __$$UpdateDriverLocationParamsImplCopyWithImpl(
    _$UpdateDriverLocationParamsImpl _value,
    $Res Function(_$UpdateDriverLocationParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateDriverLocationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lat = null, Object? lng = null}) {
    return _then(
      _$UpdateDriverLocationParamsImpl(
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
class _$UpdateDriverLocationParamsImpl implements _UpdateDriverLocationParams {
  const _$UpdateDriverLocationParamsImpl({
    required this.lat,
    required this.lng,
  });

  factory _$UpdateDriverLocationParamsImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$UpdateDriverLocationParamsImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'UpdateDriverLocationParams(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDriverLocationParamsImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  /// Create a copy of UpdateDriverLocationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDriverLocationParamsImplCopyWith<_$UpdateDriverLocationParamsImpl>
  get copyWith =>
      __$$UpdateDriverLocationParamsImplCopyWithImpl<
        _$UpdateDriverLocationParamsImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateDriverLocationParamsImplToJson(this);
  }
}

abstract class _UpdateDriverLocationParams
    implements UpdateDriverLocationParams {
  const factory _UpdateDriverLocationParams({
    required final double lat,
    required final double lng,
  }) = _$UpdateDriverLocationParamsImpl;

  factory _UpdateDriverLocationParams.fromJson(Map<String, dynamic> json) =
      _$UpdateDriverLocationParamsImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;

  /// Create a copy of UpdateDriverLocationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDriverLocationParamsImplCopyWith<_$UpdateDriverLocationParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
