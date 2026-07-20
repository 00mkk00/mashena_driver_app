// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_trip_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CancelTripParams _$CancelTripParamsFromJson(Map<String, dynamic> json) {
  return _CancelTripParams.fromJson(json);
}

/// @nodoc
mixin _$CancelTripParams {
  String get rideRequestId => throw _privateConstructorUsedError;

  /// Serializes this CancelTripParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CancelTripParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CancelTripParamsCopyWith<CancelTripParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelTripParamsCopyWith<$Res> {
  factory $CancelTripParamsCopyWith(
    CancelTripParams value,
    $Res Function(CancelTripParams) then,
  ) = _$CancelTripParamsCopyWithImpl<$Res, CancelTripParams>;
  @useResult
  $Res call({String rideRequestId});
}

/// @nodoc
class _$CancelTripParamsCopyWithImpl<$Res, $Val extends CancelTripParams>
    implements $CancelTripParamsCopyWith<$Res> {
  _$CancelTripParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CancelTripParams
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
abstract class _$$CancelTripParamsImplCopyWith<$Res>
    implements $CancelTripParamsCopyWith<$Res> {
  factory _$$CancelTripParamsImplCopyWith(
    _$CancelTripParamsImpl value,
    $Res Function(_$CancelTripParamsImpl) then,
  ) = __$$CancelTripParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rideRequestId});
}

/// @nodoc
class __$$CancelTripParamsImplCopyWithImpl<$Res>
    extends _$CancelTripParamsCopyWithImpl<$Res, _$CancelTripParamsImpl>
    implements _$$CancelTripParamsImplCopyWith<$Res> {
  __$$CancelTripParamsImplCopyWithImpl(
    _$CancelTripParamsImpl _value,
    $Res Function(_$CancelTripParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CancelTripParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rideRequestId = null}) {
    return _then(
      _$CancelTripParamsImpl(
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
class _$CancelTripParamsImpl implements _CancelTripParams {
  const _$CancelTripParamsImpl({required this.rideRequestId});

  factory _$CancelTripParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelTripParamsImplFromJson(json);

  @override
  final String rideRequestId;

  @override
  String toString() {
    return 'CancelTripParams(rideRequestId: $rideRequestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelTripParamsImpl &&
            (identical(other.rideRequestId, rideRequestId) ||
                other.rideRequestId == rideRequestId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rideRequestId);

  /// Create a copy of CancelTripParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelTripParamsImplCopyWith<_$CancelTripParamsImpl> get copyWith =>
      __$$CancelTripParamsImplCopyWithImpl<_$CancelTripParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelTripParamsImplToJson(this);
  }
}

abstract class _CancelTripParams implements CancelTripParams {
  const factory _CancelTripParams({required final String rideRequestId}) =
      _$CancelTripParamsImpl;

  factory _CancelTripParams.fromJson(Map<String, dynamic> json) =
      _$CancelTripParamsImpl.fromJson;

  @override
  String get rideRequestId;

  /// Create a copy of CancelTripParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelTripParamsImplCopyWith<_$CancelTripParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
