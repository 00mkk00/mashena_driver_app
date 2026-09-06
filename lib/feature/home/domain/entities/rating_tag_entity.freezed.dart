// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_tag_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RatingTagEntity {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get targetType => throw _privateConstructorUsedError;
  String get sentiment => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of RatingTagEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatingTagEntityCopyWith<RatingTagEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingTagEntityCopyWith<$Res> {
  factory $RatingTagEntityCopyWith(
    RatingTagEntity value,
    $Res Function(RatingTagEntity) then,
  ) = _$RatingTagEntityCopyWithImpl<$Res, RatingTagEntity>;
  @useResult
  $Res call({
    int id,
    String code,
    String targetType,
    String sentiment,
    bool isActive,
    String name,
  });
}

/// @nodoc
class _$RatingTagEntityCopyWithImpl<$Res, $Val extends RatingTagEntity>
    implements $RatingTagEntityCopyWith<$Res> {
  _$RatingTagEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RatingTagEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? targetType = null,
    Object? sentiment = null,
    Object? isActive = null,
    Object? name = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
            targetType: null == targetType
                ? _value.targetType
                : targetType // ignore: cast_nullable_to_non_nullable
                      as String,
            sentiment: null == sentiment
                ? _value.sentiment
                : sentiment // ignore: cast_nullable_to_non_nullable
                      as String,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RatingTagEntityImplCopyWith<$Res>
    implements $RatingTagEntityCopyWith<$Res> {
  factory _$$RatingTagEntityImplCopyWith(
    _$RatingTagEntityImpl value,
    $Res Function(_$RatingTagEntityImpl) then,
  ) = __$$RatingTagEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String code,
    String targetType,
    String sentiment,
    bool isActive,
    String name,
  });
}

/// @nodoc
class __$$RatingTagEntityImplCopyWithImpl<$Res>
    extends _$RatingTagEntityCopyWithImpl<$Res, _$RatingTagEntityImpl>
    implements _$$RatingTagEntityImplCopyWith<$Res> {
  __$$RatingTagEntityImplCopyWithImpl(
    _$RatingTagEntityImpl _value,
    $Res Function(_$RatingTagEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RatingTagEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? targetType = null,
    Object? sentiment = null,
    Object? isActive = null,
    Object? name = null,
  }) {
    return _then(
      _$RatingTagEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        targetType: null == targetType
            ? _value.targetType
            : targetType // ignore: cast_nullable_to_non_nullable
                  as String,
        sentiment: null == sentiment
            ? _value.sentiment
            : sentiment // ignore: cast_nullable_to_non_nullable
                  as String,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RatingTagEntityImpl implements _RatingTagEntity {
  const _$RatingTagEntityImpl({
    required this.id,
    required this.code,
    required this.targetType,
    required this.sentiment,
    required this.isActive,
    required this.name,
  });

  @override
  final int id;
  @override
  final String code;
  @override
  final String targetType;
  @override
  final String sentiment;
  @override
  final bool isActive;
  @override
  final String name;

  @override
  String toString() {
    return 'RatingTagEntity(id: $id, code: $code, targetType: $targetType, sentiment: $sentiment, isActive: $isActive, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingTagEntityImpl &&
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

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, code, targetType, sentiment, isActive, name);

  /// Create a copy of RatingTagEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingTagEntityImplCopyWith<_$RatingTagEntityImpl> get copyWith =>
      __$$RatingTagEntityImplCopyWithImpl<_$RatingTagEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _RatingTagEntity implements RatingTagEntity {
  const factory _RatingTagEntity({
    required final int id,
    required final String code,
    required final String targetType,
    required final String sentiment,
    required final bool isActive,
    required final String name,
  }) = _$RatingTagEntityImpl;

  @override
  int get id;
  @override
  String get code;
  @override
  String get targetType;
  @override
  String get sentiment;
  @override
  bool get isActive;
  @override
  String get name;

  /// Create a copy of RatingTagEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingTagEntityImplCopyWith<_$RatingTagEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
