// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_notifications_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GetNotificationsParams _$GetNotificationsParamsFromJson(
  Map<String, dynamic> json,
) {
  return _GetNotificationsParams.fromJson(json);
}

/// @nodoc
mixin _$GetNotificationsParams {
  int? get skip => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  /// Serializes this GetNotificationsParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetNotificationsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetNotificationsParamsCopyWith<GetNotificationsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNotificationsParamsCopyWith<$Res> {
  factory $GetNotificationsParamsCopyWith(
    GetNotificationsParams value,
    $Res Function(GetNotificationsParams) then,
  ) = _$GetNotificationsParamsCopyWithImpl<$Res, GetNotificationsParams>;
  @useResult
  $Res call({int? skip, int? limit});
}

/// @nodoc
class _$GetNotificationsParamsCopyWithImpl<
  $Res,
  $Val extends GetNotificationsParams
>
    implements $GetNotificationsParamsCopyWith<$Res> {
  _$GetNotificationsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetNotificationsParams
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
abstract class _$$GetNotificationsParamsImplCopyWith<$Res>
    implements $GetNotificationsParamsCopyWith<$Res> {
  factory _$$GetNotificationsParamsImplCopyWith(
    _$GetNotificationsParamsImpl value,
    $Res Function(_$GetNotificationsParamsImpl) then,
  ) = __$$GetNotificationsParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? skip, int? limit});
}

/// @nodoc
class __$$GetNotificationsParamsImplCopyWithImpl<$Res>
    extends
        _$GetNotificationsParamsCopyWithImpl<$Res, _$GetNotificationsParamsImpl>
    implements _$$GetNotificationsParamsImplCopyWith<$Res> {
  __$$GetNotificationsParamsImplCopyWithImpl(
    _$GetNotificationsParamsImpl _value,
    $Res Function(_$GetNotificationsParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetNotificationsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? skip = freezed, Object? limit = freezed}) {
    return _then(
      _$GetNotificationsParamsImpl(
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
class _$GetNotificationsParamsImpl implements _GetNotificationsParams {
  const _$GetNotificationsParamsImpl({this.skip, this.limit});

  factory _$GetNotificationsParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetNotificationsParamsImplFromJson(json);

  @override
  final int? skip;
  @override
  final int? limit;

  @override
  String toString() {
    return 'GetNotificationsParams(skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationsParamsImpl &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, skip, limit);

  /// Create a copy of GetNotificationsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationsParamsImplCopyWith<_$GetNotificationsParamsImpl>
  get copyWith =>
      __$$GetNotificationsParamsImplCopyWithImpl<_$GetNotificationsParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GetNotificationsParamsImplToJson(this);
  }
}

abstract class _GetNotificationsParams implements GetNotificationsParams {
  const factory _GetNotificationsParams({final int? skip, final int? limit}) =
      _$GetNotificationsParamsImpl;

  factory _GetNotificationsParams.fromJson(Map<String, dynamic> json) =
      _$GetNotificationsParamsImpl.fromJson;

  @override
  int? get skip;
  @override
  int? get limit;

  /// Create a copy of GetNotificationsParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetNotificationsParamsImplCopyWith<_$GetNotificationsParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
