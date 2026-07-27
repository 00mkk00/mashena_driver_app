// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_rating_tags_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GetRatingTagsParams _$GetRatingTagsParamsFromJson(Map<String, dynamic> json) {
  return _GetRatingTagsParams.fromJson(json);
}

/// @nodoc
mixin _$GetRatingTagsParams {
  int? get skip => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String get targetType => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this GetRatingTagsParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetRatingTagsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetRatingTagsParamsCopyWith<GetRatingTagsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRatingTagsParamsCopyWith<$Res> {
  factory $GetRatingTagsParamsCopyWith(
    GetRatingTagsParams value,
    $Res Function(GetRatingTagsParams) then,
  ) = _$GetRatingTagsParamsCopyWithImpl<$Res, GetRatingTagsParams>;
  @useResult
  $Res call({int? skip, int? limit, String targetType, bool isActive});
}

/// @nodoc
class _$GetRatingTagsParamsCopyWithImpl<$Res, $Val extends GetRatingTagsParams>
    implements $GetRatingTagsParamsCopyWith<$Res> {
  _$GetRatingTagsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetRatingTagsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = freezed,
    Object? limit = freezed,
    Object? targetType = null,
    Object? isActive = null,
  }) {
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
            targetType: null == targetType
                ? _value.targetType
                : targetType // ignore: cast_nullable_to_non_nullable
                      as String,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetRatingTagsParamsImplCopyWith<$Res>
    implements $GetRatingTagsParamsCopyWith<$Res> {
  factory _$$GetRatingTagsParamsImplCopyWith(
    _$GetRatingTagsParamsImpl value,
    $Res Function(_$GetRatingTagsParamsImpl) then,
  ) = __$$GetRatingTagsParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? skip, int? limit, String targetType, bool isActive});
}

/// @nodoc
class __$$GetRatingTagsParamsImplCopyWithImpl<$Res>
    extends _$GetRatingTagsParamsCopyWithImpl<$Res, _$GetRatingTagsParamsImpl>
    implements _$$GetRatingTagsParamsImplCopyWith<$Res> {
  __$$GetRatingTagsParamsImplCopyWithImpl(
    _$GetRatingTagsParamsImpl _value,
    $Res Function(_$GetRatingTagsParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetRatingTagsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = freezed,
    Object? limit = freezed,
    Object? targetType = null,
    Object? isActive = null,
  }) {
    return _then(
      _$GetRatingTagsParamsImpl(
        skip: freezed == skip
            ? _value.skip
            : skip // ignore: cast_nullable_to_non_nullable
                  as int?,
        limit: freezed == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int?,
        targetType: null == targetType
            ? _value.targetType
            : targetType // ignore: cast_nullable_to_non_nullable
                  as String,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRatingTagsParamsImpl implements _GetRatingTagsParams {
  const _$GetRatingTagsParamsImpl({
    this.skip,
    this.limit,
    this.targetType = 'RIDER',
    this.isActive = true,
  });

  factory _$GetRatingTagsParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRatingTagsParamsImplFromJson(json);

  @override
  final int? skip;
  @override
  final int? limit;
  @override
  @JsonKey()
  final String targetType;
  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'GetRatingTagsParams(skip: $skip, limit: $limit, targetType: $targetType, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRatingTagsParamsImpl &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, skip, limit, targetType, isActive);

  /// Create a copy of GetRatingTagsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRatingTagsParamsImplCopyWith<_$GetRatingTagsParamsImpl> get copyWith =>
      __$$GetRatingTagsParamsImplCopyWithImpl<_$GetRatingTagsParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRatingTagsParamsImplToJson(this);
  }
}

abstract class _GetRatingTagsParams implements GetRatingTagsParams {
  const factory _GetRatingTagsParams({
    final int? skip,
    final int? limit,
    final String targetType,
    final bool isActive,
  }) = _$GetRatingTagsParamsImpl;

  factory _GetRatingTagsParams.fromJson(Map<String, dynamic> json) =
      _$GetRatingTagsParamsImpl.fromJson;

  @override
  int? get skip;
  @override
  int? get limit;
  @override
  String get targetType;
  @override
  bool get isActive;

  /// Create a copy of GetRatingTagsParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRatingTagsParamsImplCopyWith<_$GetRatingTagsParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
