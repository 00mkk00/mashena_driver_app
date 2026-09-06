// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_driver_trip_history_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GetDriverTripHistoryParams _$GetDriverTripHistoryParamsFromJson(
  Map<String, dynamic> json,
) {
  return _GetDriverTripHistoryParams.fromJson(json);
}

/// @nodoc
mixin _$GetDriverTripHistoryParams {
  int? get skip => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  /// Serializes this GetDriverTripHistoryParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetDriverTripHistoryParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDriverTripHistoryParamsCopyWith<GetDriverTripHistoryParams>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDriverTripHistoryParamsCopyWith<$Res> {
  factory $GetDriverTripHistoryParamsCopyWith(
    GetDriverTripHistoryParams value,
    $Res Function(GetDriverTripHistoryParams) then,
  ) =
      _$GetDriverTripHistoryParamsCopyWithImpl<
        $Res,
        GetDriverTripHistoryParams
      >;
  @useResult
  $Res call({int? skip, int? limit});
}

/// @nodoc
class _$GetDriverTripHistoryParamsCopyWithImpl<
  $Res,
  $Val extends GetDriverTripHistoryParams
>
    implements $GetDriverTripHistoryParamsCopyWith<$Res> {
  _$GetDriverTripHistoryParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDriverTripHistoryParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? skip = freezed, Object? limit = freezed}) {
    return _then(
      _value.copyWith(
            skip: freezed == skip
                ? _value.skip
                : skip // ignore: cast_nullable_to_non_nullable
                      as int?,
            limit: freezed == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetDriverTripHistoryParamsImplCopyWith<$Res>
    implements $GetDriverTripHistoryParamsCopyWith<$Res> {
  factory _$$GetDriverTripHistoryParamsImplCopyWith(
    _$GetDriverTripHistoryParamsImpl value,
    $Res Function(_$GetDriverTripHistoryParamsImpl) then,
  ) = __$$GetDriverTripHistoryParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? skip, int? limit});
}

/// @nodoc
class __$$GetDriverTripHistoryParamsImplCopyWithImpl<$Res>
    extends
        _$GetDriverTripHistoryParamsCopyWithImpl<
          $Res,
          _$GetDriverTripHistoryParamsImpl
        >
    implements _$$GetDriverTripHistoryParamsImplCopyWith<$Res> {
  __$$GetDriverTripHistoryParamsImplCopyWithImpl(
    _$GetDriverTripHistoryParamsImpl _value,
    $Res Function(_$GetDriverTripHistoryParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetDriverTripHistoryParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? skip = freezed, Object? limit = freezed}) {
    return _then(
      _$GetDriverTripHistoryParamsImpl(
        skip: freezed == skip
            ? _value.skip
            : skip // ignore: cast_nullable_to_non_nullable
                  as int?,
        limit: freezed == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDriverTripHistoryParamsImpl implements _GetDriverTripHistoryParams {
  const _$GetDriverTripHistoryParamsImpl({this.skip, this.limit});

  factory _$GetDriverTripHistoryParamsImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$GetDriverTripHistoryParamsImplFromJson(json);

  @override
  final int? skip;
  @override
  final int? limit;

  @override
  String toString() {
    return 'GetDriverTripHistoryParams(skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDriverTripHistoryParamsImpl &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, skip, limit);

  /// Create a copy of GetDriverTripHistoryParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDriverTripHistoryParamsImplCopyWith<_$GetDriverTripHistoryParamsImpl>
  get copyWith =>
      __$$GetDriverTripHistoryParamsImplCopyWithImpl<
        _$GetDriverTripHistoryParamsImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDriverTripHistoryParamsImplToJson(this);
  }
}

abstract class _GetDriverTripHistoryParams
    implements GetDriverTripHistoryParams {
  const factory _GetDriverTripHistoryParams({
    final int? skip,
    final int? limit,
  }) = _$GetDriverTripHistoryParamsImpl;

  factory _GetDriverTripHistoryParams.fromJson(Map<String, dynamic> json) =
      _$GetDriverTripHistoryParamsImpl.fromJson;

  @override
  int? get skip;
  @override
  int? get limit;

  /// Create a copy of GetDriverTripHistoryParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDriverTripHistoryParamsImplCopyWith<_$GetDriverTripHistoryParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
