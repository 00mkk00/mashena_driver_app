// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_trip_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CompleteTripParams _$CompleteTripParamsFromJson(Map<String, dynamic> json) {
  return _CompleteTripParams.fromJson(json);
}

/// @nodoc
mixin _$CompleteTripParams {
  String get rideRequestId => throw _privateConstructorUsedError;

  /// Serializes this CompleteTripParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompleteTripParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompleteTripParamsCopyWith<CompleteTripParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteTripParamsCopyWith<$Res> {
  factory $CompleteTripParamsCopyWith(
    CompleteTripParams value,
    $Res Function(CompleteTripParams) then,
  ) = _$CompleteTripParamsCopyWithImpl<$Res, CompleteTripParams>;
  @useResult
  $Res call({String rideRequestId});
}

/// @nodoc
class _$CompleteTripParamsCopyWithImpl<$Res, $Val extends CompleteTripParams>
    implements $CompleteTripParamsCopyWith<$Res> {
  _$CompleteTripParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompleteTripParams
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
abstract class _$$CompleteTripParamsImplCopyWith<$Res>
    implements $CompleteTripParamsCopyWith<$Res> {
  factory _$$CompleteTripParamsImplCopyWith(
    _$CompleteTripParamsImpl value,
    $Res Function(_$CompleteTripParamsImpl) then,
  ) = __$$CompleteTripParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rideRequestId});
}

/// @nodoc
class __$$CompleteTripParamsImplCopyWithImpl<$Res>
    extends _$CompleteTripParamsCopyWithImpl<$Res, _$CompleteTripParamsImpl>
    implements _$$CompleteTripParamsImplCopyWith<$Res> {
  __$$CompleteTripParamsImplCopyWithImpl(
    _$CompleteTripParamsImpl _value,
    $Res Function(_$CompleteTripParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompleteTripParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rideRequestId = null}) {
    return _then(
      _$CompleteTripParamsImpl(
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
class _$CompleteTripParamsImpl implements _CompleteTripParams {
  const _$CompleteTripParamsImpl({required this.rideRequestId});

  factory _$CompleteTripParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompleteTripParamsImplFromJson(json);

  @override
  final String rideRequestId;

  @override
  String toString() {
    return 'CompleteTripParams(rideRequestId: $rideRequestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteTripParamsImpl &&
            (identical(other.rideRequestId, rideRequestId) ||
                other.rideRequestId == rideRequestId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rideRequestId);

  /// Create a copy of CompleteTripParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteTripParamsImplCopyWith<_$CompleteTripParamsImpl> get copyWith =>
      __$$CompleteTripParamsImplCopyWithImpl<_$CompleteTripParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CompleteTripParamsImplToJson(this);
  }
}

abstract class _CompleteTripParams implements CompleteTripParams {
  const factory _CompleteTripParams({required final String rideRequestId}) =
      _$CompleteTripParamsImpl;

  factory _CompleteTripParams.fromJson(Map<String, dynamic> json) =
      _$CompleteTripParamsImpl.fromJson;

  @override
  String get rideRequestId;

  /// Create a copy of CompleteTripParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompleteTripParamsImplCopyWith<_$CompleteTripParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
