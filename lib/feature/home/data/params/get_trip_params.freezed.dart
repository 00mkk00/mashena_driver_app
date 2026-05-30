// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_trip_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetTripParams {
  int get rideRequestId => throw _privateConstructorUsedError;

  /// Create a copy of GetTripParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetTripParamsCopyWith<GetTripParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTripParamsCopyWith<$Res> {
  factory $GetTripParamsCopyWith(
    GetTripParams value,
    $Res Function(GetTripParams) then,
  ) = _$GetTripParamsCopyWithImpl<$Res, GetTripParams>;
  @useResult
  $Res call({int rideRequestId});
}

/// @nodoc
class _$GetTripParamsCopyWithImpl<$Res, $Val extends GetTripParams>
    implements $GetTripParamsCopyWith<$Res> {
  _$GetTripParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetTripParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rideRequestId = null}) {
    return _then(
      _value.copyWith(
            rideRequestId: null == rideRequestId
                ? _value.rideRequestId
                : rideRequestId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetTripParamsImplCopyWith<$Res>
    implements $GetTripParamsCopyWith<$Res> {
  factory _$$GetTripParamsImplCopyWith(
    _$GetTripParamsImpl value,
    $Res Function(_$GetTripParamsImpl) then,
  ) = __$$GetTripParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rideRequestId});
}

/// @nodoc
class __$$GetTripParamsImplCopyWithImpl<$Res>
    extends _$GetTripParamsCopyWithImpl<$Res, _$GetTripParamsImpl>
    implements _$$GetTripParamsImplCopyWith<$Res> {
  __$$GetTripParamsImplCopyWithImpl(
    _$GetTripParamsImpl _value,
    $Res Function(_$GetTripParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetTripParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rideRequestId = null}) {
    return _then(
      _$GetTripParamsImpl(
        rideRequestId: null == rideRequestId
            ? _value.rideRequestId
            : rideRequestId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetTripParamsImpl implements _GetTripParams {
  const _$GetTripParamsImpl({required this.rideRequestId});

  @override
  final int rideRequestId;

  @override
  String toString() {
    return 'GetTripParams(rideRequestId: $rideRequestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTripParamsImpl &&
            (identical(other.rideRequestId, rideRequestId) ||
                other.rideRequestId == rideRequestId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rideRequestId);

  /// Create a copy of GetTripParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTripParamsImplCopyWith<_$GetTripParamsImpl> get copyWith =>
      __$$GetTripParamsImplCopyWithImpl<_$GetTripParamsImpl>(this, _$identity);
}

abstract class _GetTripParams implements GetTripParams {
  const factory _GetTripParams({required final int rideRequestId}) =
      _$GetTripParamsImpl;

  @override
  int get rideRequestId;

  /// Create a copy of GetTripParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTripParamsImplCopyWith<_$GetTripParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
