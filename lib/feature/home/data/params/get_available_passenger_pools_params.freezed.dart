// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_available_passenger_pools_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GetAvailablePassengerPoolsParams _$GetAvailablePassengerPoolsParamsFromJson(
  Map<String, dynamic> json,
) {
  return _GetAvailablePassengerPoolsParams.fromJson(json);
}

/// @nodoc
mixin _$GetAvailablePassengerPoolsParams {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  double? get radiusKm => throw _privateConstructorUsedError;

  /// Serializes this GetAvailablePassengerPoolsParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAvailablePassengerPoolsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAvailablePassengerPoolsParamsCopyWith<GetAvailablePassengerPoolsParams>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAvailablePassengerPoolsParamsCopyWith<$Res> {
  factory $GetAvailablePassengerPoolsParamsCopyWith(
    GetAvailablePassengerPoolsParams value,
    $Res Function(GetAvailablePassengerPoolsParams) then,
  ) =
      _$GetAvailablePassengerPoolsParamsCopyWithImpl<
        $Res,
        GetAvailablePassengerPoolsParams
      >;
  @useResult
  $Res call({double lat, double lng, double? radiusKm});
}

/// @nodoc
class _$GetAvailablePassengerPoolsParamsCopyWithImpl<
  $Res,
  $Val extends GetAvailablePassengerPoolsParams
>
    implements $GetAvailablePassengerPoolsParamsCopyWith<$Res> {
  _$GetAvailablePassengerPoolsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAvailablePassengerPoolsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? radiusKm = freezed,
  }) {
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
            radiusKm: freezed == radiusKm
                ? _value.radiusKm
                : radiusKm // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetAvailablePassengerPoolsParamsImplCopyWith<$Res>
    implements $GetAvailablePassengerPoolsParamsCopyWith<$Res> {
  factory _$$GetAvailablePassengerPoolsParamsImplCopyWith(
    _$GetAvailablePassengerPoolsParamsImpl value,
    $Res Function(_$GetAvailablePassengerPoolsParamsImpl) then,
  ) = __$$GetAvailablePassengerPoolsParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng, double? radiusKm});
}

/// @nodoc
class __$$GetAvailablePassengerPoolsParamsImplCopyWithImpl<$Res>
    extends
        _$GetAvailablePassengerPoolsParamsCopyWithImpl<
          $Res,
          _$GetAvailablePassengerPoolsParamsImpl
        >
    implements _$$GetAvailablePassengerPoolsParamsImplCopyWith<$Res> {
  __$$GetAvailablePassengerPoolsParamsImplCopyWithImpl(
    _$GetAvailablePassengerPoolsParamsImpl _value,
    $Res Function(_$GetAvailablePassengerPoolsParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAvailablePassengerPoolsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? radiusKm = freezed,
  }) {
    return _then(
      _$GetAvailablePassengerPoolsParamsImpl(
        lat: null == lat
            ? _value.lat
            : lat // ignore: cast_nullable_to_non_nullable
                  as double,
        lng: null == lng
            ? _value.lng
            : lng // ignore: cast_nullable_to_non_nullable
                  as double,
        radiusKm: freezed == radiusKm
            ? _value.radiusKm
            : radiusKm // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAvailablePassengerPoolsParamsImpl
    implements _GetAvailablePassengerPoolsParams {
  const _$GetAvailablePassengerPoolsParamsImpl({
    required this.lat,
    required this.lng,
    this.radiusKm,
  });

  factory _$GetAvailablePassengerPoolsParamsImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$GetAvailablePassengerPoolsParamsImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;
  @override
  final double? radiusKm;

  @override
  String toString() {
    return 'GetAvailablePassengerPoolsParams(lat: $lat, lng: $lng, radiusKm: $radiusKm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAvailablePassengerPoolsParamsImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.radiusKm, radiusKm) ||
                other.radiusKm == radiusKm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, radiusKm);

  /// Create a copy of GetAvailablePassengerPoolsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAvailablePassengerPoolsParamsImplCopyWith<
    _$GetAvailablePassengerPoolsParamsImpl
  >
  get copyWith =>
      __$$GetAvailablePassengerPoolsParamsImplCopyWithImpl<
        _$GetAvailablePassengerPoolsParamsImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAvailablePassengerPoolsParamsImplToJson(this);
  }
}

abstract class _GetAvailablePassengerPoolsParams
    implements GetAvailablePassengerPoolsParams {
  const factory _GetAvailablePassengerPoolsParams({
    required final double lat,
    required final double lng,
    final double? radiusKm,
  }) = _$GetAvailablePassengerPoolsParamsImpl;

  factory _GetAvailablePassengerPoolsParams.fromJson(
    Map<String, dynamic> json,
  ) = _$GetAvailablePassengerPoolsParamsImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  double? get radiusKm;

  /// Create a copy of GetAvailablePassengerPoolsParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAvailablePassengerPoolsParamsImplCopyWith<
    _$GetAvailablePassengerPoolsParamsImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
