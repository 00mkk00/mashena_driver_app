// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_shared_ride_passenger_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RemoveSharedRidePassengerParams _$RemoveSharedRidePassengerParamsFromJson(
  Map<String, dynamic> json,
) {
  return _RemoveSharedRidePassengerParams.fromJson(json);
}

/// @nodoc
mixin _$RemoveSharedRidePassengerParams {
  int get id => throw _privateConstructorUsedError;
  int get passengerId => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  /// Serializes this RemoveSharedRidePassengerParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemoveSharedRidePassengerParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoveSharedRidePassengerParamsCopyWith<RemoveSharedRidePassengerParams>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveSharedRidePassengerParamsCopyWith<$Res> {
  factory $RemoveSharedRidePassengerParamsCopyWith(
    RemoveSharedRidePassengerParams value,
    $Res Function(RemoveSharedRidePassengerParams) then,
  ) =
      _$RemoveSharedRidePassengerParamsCopyWithImpl<
        $Res,
        RemoveSharedRidePassengerParams
      >;
  @useResult
  $Res call({int id, int passengerId, String? reason});
}

/// @nodoc
class _$RemoveSharedRidePassengerParamsCopyWithImpl<
  $Res,
  $Val extends RemoveSharedRidePassengerParams
>
    implements $RemoveSharedRidePassengerParamsCopyWith<$Res> {
  _$RemoveSharedRidePassengerParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoveSharedRidePassengerParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? passengerId = null,
    Object? reason = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            passengerId: null == passengerId
                ? _value.passengerId
                : passengerId // ignore: cast_nullable_to_non_nullable
                      as int,
            reason: freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RemoveSharedRidePassengerParamsImplCopyWith<$Res>
    implements $RemoveSharedRidePassengerParamsCopyWith<$Res> {
  factory _$$RemoveSharedRidePassengerParamsImplCopyWith(
    _$RemoveSharedRidePassengerParamsImpl value,
    $Res Function(_$RemoveSharedRidePassengerParamsImpl) then,
  ) = __$$RemoveSharedRidePassengerParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int passengerId, String? reason});
}

/// @nodoc
class __$$RemoveSharedRidePassengerParamsImplCopyWithImpl<$Res>
    extends
        _$RemoveSharedRidePassengerParamsCopyWithImpl<
          $Res,
          _$RemoveSharedRidePassengerParamsImpl
        >
    implements _$$RemoveSharedRidePassengerParamsImplCopyWith<$Res> {
  __$$RemoveSharedRidePassengerParamsImplCopyWithImpl(
    _$RemoveSharedRidePassengerParamsImpl _value,
    $Res Function(_$RemoveSharedRidePassengerParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RemoveSharedRidePassengerParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? passengerId = null,
    Object? reason = freezed,
  }) {
    return _then(
      _$RemoveSharedRidePassengerParamsImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        passengerId: null == passengerId
            ? _value.passengerId
            : passengerId // ignore: cast_nullable_to_non_nullable
                  as int,
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveSharedRidePassengerParamsImpl
    implements _RemoveSharedRidePassengerParams {
  const _$RemoveSharedRidePassengerParamsImpl({
    required this.id,
    required this.passengerId,
    this.reason,
  });

  factory _$RemoveSharedRidePassengerParamsImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$RemoveSharedRidePassengerParamsImplFromJson(json);

  @override
  final int id;
  @override
  final int passengerId;
  @override
  final String? reason;

  @override
  String toString() {
    return 'RemoveSharedRidePassengerParams(id: $id, passengerId: $passengerId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveSharedRidePassengerParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.passengerId, passengerId) ||
                other.passengerId == passengerId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, passengerId, reason);

  /// Create a copy of RemoveSharedRidePassengerParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveSharedRidePassengerParamsImplCopyWith<
    _$RemoveSharedRidePassengerParamsImpl
  >
  get copyWith =>
      __$$RemoveSharedRidePassengerParamsImplCopyWithImpl<
        _$RemoveSharedRidePassengerParamsImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveSharedRidePassengerParamsImplToJson(this);
  }
}

abstract class _RemoveSharedRidePassengerParams
    implements RemoveSharedRidePassengerParams {
  const factory _RemoveSharedRidePassengerParams({
    required final int id,
    required final int passengerId,
    final String? reason,
  }) = _$RemoveSharedRidePassengerParamsImpl;

  factory _RemoveSharedRidePassengerParams.fromJson(Map<String, dynamic> json) =
      _$RemoveSharedRidePassengerParamsImpl.fromJson;

  @override
  int get id;
  @override
  int get passengerId;
  @override
  String? get reason;

  /// Create a copy of RemoveSharedRidePassengerParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveSharedRidePassengerParamsImplCopyWith<
    _$RemoveSharedRidePassengerParamsImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
