// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_trip_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CompleteTripEntity {
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of CompleteTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompleteTripEntityCopyWith<CompleteTripEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteTripEntityCopyWith<$Res> {
  factory $CompleteTripEntityCopyWith(
    CompleteTripEntity value,
    $Res Function(CompleteTripEntity) then,
  ) = _$CompleteTripEntityCopyWithImpl<$Res, CompleteTripEntity>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CompleteTripEntityCopyWithImpl<$Res, $Val extends CompleteTripEntity>
    implements $CompleteTripEntityCopyWith<$Res> {
  _$CompleteTripEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompleteTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CompleteTripEntityImplCopyWith<$Res>
    implements $CompleteTripEntityCopyWith<$Res> {
  factory _$$CompleteTripEntityImplCopyWith(
    _$CompleteTripEntityImpl value,
    $Res Function(_$CompleteTripEntityImpl) then,
  ) = __$$CompleteTripEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CompleteTripEntityImplCopyWithImpl<$Res>
    extends _$CompleteTripEntityCopyWithImpl<$Res, _$CompleteTripEntityImpl>
    implements _$$CompleteTripEntityImplCopyWith<$Res> {
  __$$CompleteTripEntityImplCopyWithImpl(
    _$CompleteTripEntityImpl _value,
    $Res Function(_$CompleteTripEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompleteTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$CompleteTripEntityImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CompleteTripEntityImpl implements _CompleteTripEntity {
  const _$CompleteTripEntityImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CompleteTripEntity(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteTripEntityImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CompleteTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteTripEntityImplCopyWith<_$CompleteTripEntityImpl> get copyWith =>
      __$$CompleteTripEntityImplCopyWithImpl<_$CompleteTripEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _CompleteTripEntity implements CompleteTripEntity {
  const factory _CompleteTripEntity({required final String message}) =
      _$CompleteTripEntityImpl;

  @override
  String get message;

  /// Create a copy of CompleteTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompleteTripEntityImplCopyWith<_$CompleteTripEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
