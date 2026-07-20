// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arrive_trip_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ArriveTripParams _$ArriveTripParamsFromJson(Map<String, dynamic> json) {
  return _ArriveTripParams.fromJson(json);
}

/// @nodoc
mixin _$ArriveTripParams {
  String get rideRequestId => throw _privateConstructorUsedError;

  /// Serializes this ArriveTripParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArriveTripParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArriveTripParamsCopyWith<ArriveTripParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArriveTripParamsCopyWith<$Res> {
  factory $ArriveTripParamsCopyWith(
    ArriveTripParams value,
    $Res Function(ArriveTripParams) then,
  ) = _$ArriveTripParamsCopyWithImpl<$Res, ArriveTripParams>;
  @useResult
  $Res call({String rideRequestId});
}

/// @nodoc
class _$ArriveTripParamsCopyWithImpl<$Res, $Val extends ArriveTripParams>
    implements $ArriveTripParamsCopyWith<$Res> {
  _$ArriveTripParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArriveTripParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rideRequestId = null}) {
    return _then(
      _value.copyWith(
            rideRequestId: null == rideRequestId
                ? _value.rideRequestId
                : rideRequestId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArriveTripParamsImplCopyWith<$Res>
    implements $ArriveTripParamsCopyWith<$Res> {
  factory _$$ArriveTripParamsImplCopyWith(
    _$ArriveTripParamsImpl value,
    $Res Function(_$ArriveTripParamsImpl) then,
  ) = __$$ArriveTripParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rideRequestId});
}

/// @nodoc
class __$$ArriveTripParamsImplCopyWithImpl<$Res>
    extends _$ArriveTripParamsCopyWithImpl<$Res, _$ArriveTripParamsImpl>
    implements _$$ArriveTripParamsImplCopyWith<$Res> {
  __$$ArriveTripParamsImplCopyWithImpl(
    _$ArriveTripParamsImpl _value,
    $Res Function(_$ArriveTripParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArriveTripParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rideRequestId = null}) {
    return _then(
      _$ArriveTripParamsImpl(
        rideRequestId: null == rideRequestId
            ? _value.rideRequestId
            : rideRequestId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ArriveTripParamsImpl implements _ArriveTripParams {
  const _$ArriveTripParamsImpl({required this.rideRequestId});

  factory _$ArriveTripParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArriveTripParamsImplFromJson(json);

  @override
  final String rideRequestId;

  @override
  String toString() {
    return 'ArriveTripParams(rideRequestId: $rideRequestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArriveTripParamsImpl &&
            (identical(other.rideRequestId, rideRequestId) ||
                other.rideRequestId == rideRequestId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rideRequestId);

  /// Create a copy of ArriveTripParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArriveTripParamsImplCopyWith<_$ArriveTripParamsImpl> get copyWith =>
      __$$ArriveTripParamsImplCopyWithImpl<_$ArriveTripParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ArriveTripParamsImplToJson(this);
  }
}

abstract class _ArriveTripParams implements ArriveTripParams {
  const factory _ArriveTripParams({required final String rideRequestId}) =
      _$ArriveTripParamsImpl;

  factory _ArriveTripParams.fromJson(Map<String, dynamic> json) =
      _$ArriveTripParamsImpl.fromJson;

  @override
  String get rideRequestId;

  /// Create a copy of ArriveTripParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArriveTripParamsImplCopyWith<_$ArriveTripParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
