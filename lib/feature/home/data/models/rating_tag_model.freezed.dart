// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_tag_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RatingTagModel _$RatingTagModelFromJson(Map<String, dynamic> json) {
  return _RatingTagModel.fromJson(json);
}

/// @nodoc
mixin _$RatingTagModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get targetType => throw _privateConstructorUsedError;
  String? get sentiment => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this RatingTagModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RatingTagModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatingTagModelCopyWith<RatingTagModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingTagModelCopyWith<$Res> {
  factory $RatingTagModelCopyWith(
    RatingTagModel value,
    $Res Function(RatingTagModel) then,
  ) = _$RatingTagModelCopyWithImpl<$Res, RatingTagModel>;
  @useResult
  $Res call({
    int? id,
    String? code,
    String? targetType,
    String? sentiment,
    bool? isActive,
    String? name,
  });
}

/// @nodoc
class _$RatingTagModelCopyWithImpl<$Res, $Val extends RatingTagModel>
    implements $RatingTagModelCopyWith<$Res> {
  _$RatingTagModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RatingTagModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? targetType = freezed,
    Object? sentiment = freezed,
    Object? isActive = freezed,
    Object? name = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            code: freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String?,
            targetType: freezed == targetType
                ? _value.targetType
                : targetType // ignore: cast_nullable_to_non_nullable
                      as String?,
            sentiment: freezed == sentiment
                ? _value.sentiment
                : sentiment // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RatingTagModelImplCopyWith<$Res>
    implements $RatingTagModelCopyWith<$Res> {
  factory _$$RatingTagModelImplCopyWith(
    _$RatingTagModelImpl value,
    $Res Function(_$RatingTagModelImpl) then,
  ) = __$$RatingTagModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String? code,
    String? targetType,
    String? sentiment,
    bool? isActive,
    String? name,
  });
}

/// @nodoc
class __$$RatingTagModelImplCopyWithImpl<$Res>
    extends _$RatingTagModelCopyWithImpl<$Res, _$RatingTagModelImpl>
    implements _$$RatingTagModelImplCopyWith<$Res> {
  __$$RatingTagModelImplCopyWithImpl(
    _$RatingTagModelImpl _value,
    $Res Function(_$RatingTagModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RatingTagModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? targetType = freezed,
    Object? sentiment = freezed,
    Object? isActive = freezed,
    Object? name = freezed,
  }) {
    return _then(
      _$RatingTagModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        code: freezed == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String?,
        targetType: freezed == targetType
            ? _value.targetType
            : targetType // ignore: cast_nullable_to_non_nullable
                  as String?,
        sentiment: freezed == sentiment
            ? _value.sentiment
            : sentiment // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: freezed == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingTagModelImpl implements _RatingTagModel {
  const _$RatingTagModelImpl({
    this.id,
    this.code,
    this.targetType,
    this.sentiment,
    this.isActive,
    this.name,
  });

  factory _$RatingTagModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingTagModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? targetType;
  @override
  final String? sentiment;
  @override
  final bool? isActive;
  @override
  final String? name;

  @override
  String toString() {
    return 'RatingTagModel(id: $id, code: $code, targetType: $targetType, sentiment: $sentiment, isActive: $isActive, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingTagModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, code, targetType, sentiment, isActive, name);

  /// Create a copy of RatingTagModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingTagModelImplCopyWith<_$RatingTagModelImpl> get copyWith =>
      __$$RatingTagModelImplCopyWithImpl<_$RatingTagModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingTagModelImplToJson(this);
  }
}

abstract class _RatingTagModel implements RatingTagModel {
  const factory _RatingTagModel({
    final int? id,
    final String? code,
    final String? targetType,
    final String? sentiment,
    final bool? isActive,
    final String? name,
  }) = _$RatingTagModelImpl;

  factory _RatingTagModel.fromJson(Map<String, dynamic> json) =
      _$RatingTagModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get targetType;
  @override
  String? get sentiment;
  @override
  bool? get isActive;
  @override
  String? get name;

  /// Create a copy of RatingTagModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingTagModelImplCopyWith<_$RatingTagModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
