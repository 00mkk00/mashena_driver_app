// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_ride_complete_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SharedRideCompleteParams _$SharedRideCompleteParamsFromJson(
  Map<String, dynamic> json,
) {
  return _SharedRideCompleteParams.fromJson(json);
}

/// @nodoc
mixin _$SharedRideCompleteParams {
  int get id => throw _privateConstructorUsedError;

  /// Serializes this SharedRideCompleteParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SharedRideCompleteParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SharedRideCompleteParamsCopyWith<SharedRideCompleteParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedRideCompleteParamsCopyWith<$Res> {
  factory $SharedRideCompleteParamsCopyWith(
    SharedRideCompleteParams value,
    $Res Function(SharedRideCompleteParams) then,
  ) = _$SharedRideCompleteParamsCopyWithImpl<$Res, SharedRideCompleteParams>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$SharedRideCompleteParamsCopyWithImpl<
  $Res,
  $Val extends SharedRideCompleteParams
>
    implements $SharedRideCompleteParamsCopyWith<$Res> {
  _$SharedRideCompleteParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SharedRideCompleteParams
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
abstract class _$$SharedRideCompleteParamsImplCopyWith<$Res>
    implements $SharedRideCompleteParamsCopyWith<$Res> {
  factory _$$SharedRideCompleteParamsImplCopyWith(
    _$SharedRideCompleteParamsImpl value,
    $Res Function(_$SharedRideCompleteParamsImpl) then,
  ) = __$$SharedRideCompleteParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$SharedRideCompleteParamsImplCopyWithImpl<$Res>
    extends
        _$SharedRideCompleteParamsCopyWithImpl<
          $Res,
          _$SharedRideCompleteParamsImpl
        >
    implements _$$SharedRideCompleteParamsImplCopyWith<$Res> {
  __$$SharedRideCompleteParamsImplCopyWithImpl(
    _$SharedRideCompleteParamsImpl _value,
    $Res Function(_$SharedRideCompleteParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SharedRideCompleteParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$SharedRideCompleteParamsImpl(
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
class _$SharedRideCompleteParamsImpl implements _SharedRideCompleteParams {
  const _$SharedRideCompleteParamsImpl({required this.id});

  factory _$SharedRideCompleteParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SharedRideCompleteParamsImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'SharedRideCompleteParams(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedRideCompleteParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SharedRideCompleteParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedRideCompleteParamsImplCopyWith<_$SharedRideCompleteParamsImpl>
  get copyWith =>
      __$$SharedRideCompleteParamsImplCopyWithImpl<
        _$SharedRideCompleteParamsImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SharedRideCompleteParamsImplToJson(this);
  }
}

abstract class _SharedRideCompleteParams implements SharedRideCompleteParams {
  const factory _SharedRideCompleteParams({required final int id}) =
      _$SharedRideCompleteParamsImpl;

  factory _SharedRideCompleteParams.fromJson(Map<String, dynamic> json) =
      _$SharedRideCompleteParamsImpl.fromJson;

  @override
  int get id;

  /// Create a copy of SharedRideCompleteParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharedRideCompleteParamsImplCopyWith<_$SharedRideCompleteParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
