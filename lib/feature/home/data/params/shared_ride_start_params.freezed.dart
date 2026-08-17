// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_ride_start_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SharedRideStartParams _$SharedRideStartParamsFromJson(
  Map<String, dynamic> json,
) {
  return _SharedRideStartParams.fromJson(json);
}

/// @nodoc
mixin _$SharedRideStartParams {
  int get id => throw _privateConstructorUsedError;

  /// Serializes this SharedRideStartParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SharedRideStartParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SharedRideStartParamsCopyWith<SharedRideStartParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedRideStartParamsCopyWith<$Res> {
  factory $SharedRideStartParamsCopyWith(
    SharedRideStartParams value,
    $Res Function(SharedRideStartParams) then,
  ) = _$SharedRideStartParamsCopyWithImpl<$Res, SharedRideStartParams>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$SharedRideStartParamsCopyWithImpl<
  $Res,
  $Val extends SharedRideStartParams
>
    implements $SharedRideStartParamsCopyWith<$Res> {
  _$SharedRideStartParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SharedRideStartParams
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
abstract class _$$SharedRideStartParamsImplCopyWith<$Res>
    implements $SharedRideStartParamsCopyWith<$Res> {
  factory _$$SharedRideStartParamsImplCopyWith(
    _$SharedRideStartParamsImpl value,
    $Res Function(_$SharedRideStartParamsImpl) then,
  ) = __$$SharedRideStartParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$SharedRideStartParamsImplCopyWithImpl<$Res>
    extends
        _$SharedRideStartParamsCopyWithImpl<$Res, _$SharedRideStartParamsImpl>
    implements _$$SharedRideStartParamsImplCopyWith<$Res> {
  __$$SharedRideStartParamsImplCopyWithImpl(
    _$SharedRideStartParamsImpl _value,
    $Res Function(_$SharedRideStartParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SharedRideStartParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$SharedRideStartParamsImpl(
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
class _$SharedRideStartParamsImpl implements _SharedRideStartParams {
  const _$SharedRideStartParamsImpl({required this.id});

  factory _$SharedRideStartParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SharedRideStartParamsImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'SharedRideStartParams(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedRideStartParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SharedRideStartParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedRideStartParamsImplCopyWith<_$SharedRideStartParamsImpl>
  get copyWith =>
      __$$SharedRideStartParamsImplCopyWithImpl<_$SharedRideStartParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SharedRideStartParamsImplToJson(this);
  }
}

abstract class _SharedRideStartParams implements SharedRideStartParams {
  const factory _SharedRideStartParams({required final int id}) =
      _$SharedRideStartParamsImpl;

  factory _SharedRideStartParams.fromJson(Map<String, dynamic> json) =
      _$SharedRideStartParamsImpl.fromJson;

  @override
  int get id;

  /// Create a copy of SharedRideStartParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharedRideStartParamsImplCopyWith<_$SharedRideStartParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
