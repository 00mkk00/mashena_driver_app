// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_trip_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StartTripEntity {
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of StartTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StartTripEntityCopyWith<StartTripEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartTripEntityCopyWith<$Res> {
  factory $StartTripEntityCopyWith(
    StartTripEntity value,
    $Res Function(StartTripEntity) then,
  ) = _$StartTripEntityCopyWithImpl<$Res, StartTripEntity>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$StartTripEntityCopyWithImpl<$Res, $Val extends StartTripEntity>
    implements $StartTripEntityCopyWith<$Res> {
  _$StartTripEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartTripEntity
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
abstract class _$$StartTripEntityImplCopyWith<$Res>
    implements $StartTripEntityCopyWith<$Res> {
  factory _$$StartTripEntityImplCopyWith(
    _$StartTripEntityImpl value,
    $Res Function(_$StartTripEntityImpl) then,
  ) = __$$StartTripEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StartTripEntityImplCopyWithImpl<$Res>
    extends _$StartTripEntityCopyWithImpl<$Res, _$StartTripEntityImpl>
    implements _$$StartTripEntityImplCopyWith<$Res> {
  __$$StartTripEntityImplCopyWithImpl(
    _$StartTripEntityImpl _value,
    $Res Function(_$StartTripEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StartTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$StartTripEntityImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$StartTripEntityImpl implements _StartTripEntity {
  const _$StartTripEntityImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'StartTripEntity(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartTripEntityImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of StartTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartTripEntityImplCopyWith<_$StartTripEntityImpl> get copyWith =>
      __$$StartTripEntityImplCopyWithImpl<_$StartTripEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _StartTripEntity implements StartTripEntity {
  const factory _StartTripEntity({required final String message}) =
      _$StartTripEntityImpl;

  @override
  String get message;

  /// Create a copy of StartTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartTripEntityImplCopyWith<_$StartTripEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
