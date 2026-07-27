// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_trip_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RateTripParams _$RateTripParamsFromJson(Map<String, dynamic> json) {
  return _RateTripParams.fromJson(json);
}

/// @nodoc
mixin _$RateTripParams {
  int get tripId => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  List<int>? get tagIds => throw _privateConstructorUsedError;

  /// Serializes this RateTripParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RateTripParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RateTripParamsCopyWith<RateTripParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateTripParamsCopyWith<$Res> {
  factory $RateTripParamsCopyWith(
    RateTripParams value,
    $Res Function(RateTripParams) then,
  ) = _$RateTripParamsCopyWithImpl<$Res, RateTripParams>;
  @useResult
  $Res call({int tripId, int score, String? comment, List<int>? tagIds});
}

/// @nodoc
class _$RateTripParamsCopyWithImpl<$Res, $Val extends RateTripParams>
    implements $RateTripParamsCopyWith<$Res> {
  _$RateTripParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RateTripParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? score = null,
    Object? comment = freezed,
    Object? tagIds = freezed,
  }) {
    return _then(
      _value.copyWith(
            tripId: null == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                      as int,
            score: null == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int,
            comment: freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as String?,
            tagIds: freezed == tagIds
                ? _value.tagIds
                : tagIds // ignore: cast_nullable_to_non_nullable
                      as List<int>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RateTripParamsImplCopyWith<$Res>
    implements $RateTripParamsCopyWith<$Res> {
  factory _$$RateTripParamsImplCopyWith(
    _$RateTripParamsImpl value,
    $Res Function(_$RateTripParamsImpl) then,
  ) = __$$RateTripParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tripId, int score, String? comment, List<int>? tagIds});
}

/// @nodoc
class __$$RateTripParamsImplCopyWithImpl<$Res>
    extends _$RateTripParamsCopyWithImpl<$Res, _$RateTripParamsImpl>
    implements _$$RateTripParamsImplCopyWith<$Res> {
  __$$RateTripParamsImplCopyWithImpl(
    _$RateTripParamsImpl _value,
    $Res Function(_$RateTripParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RateTripParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? score = null,
    Object? comment = freezed,
    Object? tagIds = freezed,
  }) {
    return _then(
      _$RateTripParamsImpl(
        tripId: null == tripId
            ? _value.tripId
            : tripId // ignore: cast_nullable_to_non_nullable
                  as int,
        score: null == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int,
        comment: freezed == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String?,
        tagIds: freezed == tagIds
            ? _value._tagIds
            : tagIds // ignore: cast_nullable_to_non_nullable
                  as List<int>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RateTripParamsImpl implements _RateTripParams {
  const _$RateTripParamsImpl({
    required this.tripId,
    required this.score,
    this.comment,
    final List<int>? tagIds,
  }) : _tagIds = tagIds;

  factory _$RateTripParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RateTripParamsImplFromJson(json);

  @override
  final int tripId;
  @override
  final int score;
  @override
  final String? comment;
  final List<int>? _tagIds;
  @override
  List<int>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RateTripParams(tripId: $tripId, score: $score, comment: $comment, tagIds: $tagIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateTripParamsImpl &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    tripId,
    score,
    comment,
    const DeepCollectionEquality().hash(_tagIds),
  );

  /// Create a copy of RateTripParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RateTripParamsImplCopyWith<_$RateTripParamsImpl> get copyWith =>
      __$$RateTripParamsImplCopyWithImpl<_$RateTripParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RateTripParamsImplToJson(this);
  }
}

abstract class _RateTripParams implements RateTripParams {
  const factory _RateTripParams({
    required final int tripId,
    required final int score,
    final String? comment,
    final List<int>? tagIds,
  }) = _$RateTripParamsImpl;

  factory _RateTripParams.fromJson(Map<String, dynamic> json) =
      _$RateTripParamsImpl.fromJson;

  @override
  int get tripId;
  @override
  int get score;
  @override
  String? get comment;
  @override
  List<int>? get tagIds;

  /// Create a copy of RateTripParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateTripParamsImplCopyWith<_$RateTripParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
