// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_ride_ready_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SharedRideReadyParams _$SharedRideReadyParamsFromJson(
  Map<String, dynamic> json,
) {
  return _SharedRideReadyParams.fromJson(json);
}

/// @nodoc
mixin _$SharedRideReadyParams {
  int get id => throw _privateConstructorUsedError;

  /// Serializes this SharedRideReadyParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SharedRideReadyParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SharedRideReadyParamsCopyWith<SharedRideReadyParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedRideReadyParamsCopyWith<$Res> {
  factory $SharedRideReadyParamsCopyWith(
    SharedRideReadyParams value,
    $Res Function(SharedRideReadyParams) then,
  ) = _$SharedRideReadyParamsCopyWithImpl<$Res, SharedRideReadyParams>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$SharedRideReadyParamsCopyWithImpl<
  $Res,
  $Val extends SharedRideReadyParams
>
    implements $SharedRideReadyParamsCopyWith<$Res> {
  _$SharedRideReadyParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SharedRideReadyParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SharedRideReadyParamsImplCopyWith<$Res>
    implements $SharedRideReadyParamsCopyWith<$Res> {
  factory _$$SharedRideReadyParamsImplCopyWith(
    _$SharedRideReadyParamsImpl value,
    $Res Function(_$SharedRideReadyParamsImpl) then,
  ) = __$$SharedRideReadyParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$SharedRideReadyParamsImplCopyWithImpl<$Res>
    extends
        _$SharedRideReadyParamsCopyWithImpl<$Res, _$SharedRideReadyParamsImpl>
    implements _$$SharedRideReadyParamsImplCopyWith<$Res> {
  __$$SharedRideReadyParamsImplCopyWithImpl(
    _$SharedRideReadyParamsImpl _value,
    $Res Function(_$SharedRideReadyParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SharedRideReadyParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$SharedRideReadyParamsImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SharedRideReadyParamsImpl implements _SharedRideReadyParams {
  const _$SharedRideReadyParamsImpl({required this.id});

  factory _$SharedRideReadyParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SharedRideReadyParamsImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'SharedRideReadyParams(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedRideReadyParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SharedRideReadyParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedRideReadyParamsImplCopyWith<_$SharedRideReadyParamsImpl>
  get copyWith =>
      __$$SharedRideReadyParamsImplCopyWithImpl<_$SharedRideReadyParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SharedRideReadyParamsImplToJson(this);
  }
}

abstract class _SharedRideReadyParams implements SharedRideReadyParams {
  const factory _SharedRideReadyParams({required final int id}) =
      _$SharedRideReadyParamsImpl;

  factory _SharedRideReadyParams.fromJson(Map<String, dynamic> json) =
      _$SharedRideReadyParamsImpl.fromJson;

  @override
  int get id;

  /// Create a copy of SharedRideReadyParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharedRideReadyParamsImplCopyWith<_$SharedRideReadyParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
