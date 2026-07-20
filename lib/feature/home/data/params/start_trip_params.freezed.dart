// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_trip_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StartTripParams _$StartTripParamsFromJson(Map<String, dynamic> json) {
  return _StartTripParams.fromJson(json);
}

/// @nodoc
mixin _$StartTripParams {
  String get rideRequestId => throw _privateConstructorUsedError;

  /// Serializes this StartTripParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StartTripParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StartTripParamsCopyWith<StartTripParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartTripParamsCopyWith<$Res> {
  factory $StartTripParamsCopyWith(
    StartTripParams value,
    $Res Function(StartTripParams) then,
  ) = _$StartTripParamsCopyWithImpl<$Res, StartTripParams>;
  @useResult
  $Res call({String rideRequestId});
}

/// @nodoc
class _$StartTripParamsCopyWithImpl<$Res, $Val extends StartTripParams>
    implements $StartTripParamsCopyWith<$Res> {
  _$StartTripParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartTripParams
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
abstract class _$$StartTripParamsImplCopyWith<$Res>
    implements $StartTripParamsCopyWith<$Res> {
  factory _$$StartTripParamsImplCopyWith(
    _$StartTripParamsImpl value,
    $Res Function(_$StartTripParamsImpl) then,
  ) = __$$StartTripParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rideRequestId});
}

/// @nodoc
class __$$StartTripParamsImplCopyWithImpl<$Res>
    extends _$StartTripParamsCopyWithImpl<$Res, _$StartTripParamsImpl>
    implements _$$StartTripParamsImplCopyWith<$Res> {
  __$$StartTripParamsImplCopyWithImpl(
    _$StartTripParamsImpl _value,
    $Res Function(_$StartTripParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StartTripParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rideRequestId = null}) {
    return _then(
      _$StartTripParamsImpl(
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
class _$StartTripParamsImpl implements _StartTripParams {
  const _$StartTripParamsImpl({required this.rideRequestId});

  factory _$StartTripParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StartTripParamsImplFromJson(json);

  @override
  final String rideRequestId;

  @override
  String toString() {
    return 'StartTripParams(rideRequestId: $rideRequestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartTripParamsImpl &&
            (identical(other.rideRequestId, rideRequestId) ||
                other.rideRequestId == rideRequestId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rideRequestId);

  /// Create a copy of StartTripParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartTripParamsImplCopyWith<_$StartTripParamsImpl> get copyWith =>
      __$$StartTripParamsImplCopyWithImpl<_$StartTripParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StartTripParamsImplToJson(this);
  }
}

abstract class _StartTripParams implements StartTripParams {
  const factory _StartTripParams({required final String rideRequestId}) =
      _$StartTripParamsImpl;

  factory _StartTripParams.fromJson(Map<String, dynamic> json) =
      _$StartTripParamsImpl.fromJson;

  @override
  String get rideRequestId;

  /// Create a copy of StartTripParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartTripParamsImplCopyWith<_$StartTripParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
