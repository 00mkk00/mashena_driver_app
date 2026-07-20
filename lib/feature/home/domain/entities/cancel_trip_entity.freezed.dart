// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_trip_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CancelTripEntity {
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of CancelTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CancelTripEntityCopyWith<CancelTripEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelTripEntityCopyWith<$Res> {
  factory $CancelTripEntityCopyWith(
    CancelTripEntity value,
    $Res Function(CancelTripEntity) then,
  ) = _$CancelTripEntityCopyWithImpl<$Res, CancelTripEntity>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CancelTripEntityCopyWithImpl<$Res, $Val extends CancelTripEntity>
    implements $CancelTripEntityCopyWith<$Res> {
  _$CancelTripEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CancelTripEntity
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
abstract class _$$CancelTripEntityImplCopyWith<$Res>
    implements $CancelTripEntityCopyWith<$Res> {
  factory _$$CancelTripEntityImplCopyWith(
    _$CancelTripEntityImpl value,
    $Res Function(_$CancelTripEntityImpl) then,
  ) = __$$CancelTripEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CancelTripEntityImplCopyWithImpl<$Res>
    extends _$CancelTripEntityCopyWithImpl<$Res, _$CancelTripEntityImpl>
    implements _$$CancelTripEntityImplCopyWith<$Res> {
  __$$CancelTripEntityImplCopyWithImpl(
    _$CancelTripEntityImpl _value,
    $Res Function(_$CancelTripEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CancelTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$CancelTripEntityImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CancelTripEntityImpl implements _CancelTripEntity {
  const _$CancelTripEntityImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CancelTripEntity(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelTripEntityImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CancelTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelTripEntityImplCopyWith<_$CancelTripEntityImpl> get copyWith =>
      __$$CancelTripEntityImplCopyWithImpl<_$CancelTripEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _CancelTripEntity implements CancelTripEntity {
  const factory _CancelTripEntity({required final String message}) =
      _$CancelTripEntityImpl;

  @override
  String get message;

  /// Create a copy of CancelTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelTripEntityImplCopyWith<_$CancelTripEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
