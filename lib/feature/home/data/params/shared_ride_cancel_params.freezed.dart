// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_ride_cancel_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SharedRideCancelParams _$SharedRideCancelParamsFromJson(
  Map<String, dynamic> json,
) {
  return _SharedRideCancelParams.fromJson(json);
}

/// @nodoc
mixin _$SharedRideCancelParams {
  int get id => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  /// Serializes this SharedRideCancelParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SharedRideCancelParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SharedRideCancelParamsCopyWith<SharedRideCancelParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedRideCancelParamsCopyWith<$Res> {
  factory $SharedRideCancelParamsCopyWith(
    SharedRideCancelParams value,
    $Res Function(SharedRideCancelParams) then,
  ) = _$SharedRideCancelParamsCopyWithImpl<$Res, SharedRideCancelParams>;
  @useResult
  $Res call({int id, String? reason});
}

/// @nodoc
class _$SharedRideCancelParamsCopyWithImpl<
  $Res,
  $Val extends SharedRideCancelParams
>
    implements $SharedRideCancelParamsCopyWith<$Res> {
  _$SharedRideCancelParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SharedRideCancelParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? reason = freezed}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SharedRideCancelParamsImplCopyWith<$Res>
    implements $SharedRideCancelParamsCopyWith<$Res> {
  factory _$$SharedRideCancelParamsImplCopyWith(
    _$SharedRideCancelParamsImpl value,
    $Res Function(_$SharedRideCancelParamsImpl) then,
  ) = __$$SharedRideCancelParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? reason});
}

/// @nodoc
class __$$SharedRideCancelParamsImplCopyWithImpl<$Res>
    extends
        _$SharedRideCancelParamsCopyWithImpl<$Res, _$SharedRideCancelParamsImpl>
    implements _$$SharedRideCancelParamsImplCopyWith<$Res> {
  __$$SharedRideCancelParamsImplCopyWithImpl(
    _$SharedRideCancelParamsImpl _value,
    $Res Function(_$SharedRideCancelParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SharedRideCancelParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? reason = freezed}) {
    return _then(
      _$SharedRideCancelParamsImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
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
class _$SharedRideCancelParamsImpl implements _SharedRideCancelParams {
  const _$SharedRideCancelParamsImpl({required this.id, this.reason});

  factory _$SharedRideCancelParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SharedRideCancelParamsImplFromJson(json);

  @override
  final int id;
  @override
  final String? reason;

  @override
  String toString() {
    return 'SharedRideCancelParams(id: $id, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedRideCancelParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, reason);

  /// Create a copy of SharedRideCancelParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedRideCancelParamsImplCopyWith<_$SharedRideCancelParamsImpl>
  get copyWith =>
      __$$SharedRideCancelParamsImplCopyWithImpl<_$SharedRideCancelParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SharedRideCancelParamsImplToJson(this);
  }
}

abstract class _SharedRideCancelParams implements SharedRideCancelParams {
  const factory _SharedRideCancelParams({
    required final int id,
    final String? reason,
  }) = _$SharedRideCancelParamsImpl;

  factory _SharedRideCancelParams.fromJson(Map<String, dynamic> json) =
      _$SharedRideCancelParamsImpl.fromJson;

  @override
  int get id;
  @override
  String? get reason;

  /// Create a copy of SharedRideCancelParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharedRideCancelParamsImplCopyWith<_$SharedRideCancelParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
