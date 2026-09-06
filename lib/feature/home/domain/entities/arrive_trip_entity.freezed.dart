// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arrive_trip_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ArriveTripEntity {
  int get tripId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime? get arrivedAt => throw _privateConstructorUsedError;
  int get freeWaitTimeSeconds => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of ArriveTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArriveTripEntityCopyWith<ArriveTripEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArriveTripEntityCopyWith<$Res> {
  factory $ArriveTripEntityCopyWith(
    ArriveTripEntity value,
    $Res Function(ArriveTripEntity) then,
  ) = _$ArriveTripEntityCopyWithImpl<$Res, ArriveTripEntity>;
  @useResult
  $Res call({
    int tripId,
    String status,
    DateTime? arrivedAt,
    int freeWaitTimeSeconds,
    String message,
  });
}

/// @nodoc
class _$ArriveTripEntityCopyWithImpl<$Res, $Val extends ArriveTripEntity>
    implements $ArriveTripEntityCopyWith<$Res> {
  _$ArriveTripEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArriveTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? status = null,
    Object? arrivedAt = freezed,
    Object? freeWaitTimeSeconds = null,
    Object? message = null,
  }) {
    return _then(
      _value.copyWith(
            tripId: null == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            arrivedAt: freezed == arrivedAt
                ? _value.arrivedAt
                : arrivedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            freeWaitTimeSeconds: null == freeWaitTimeSeconds
                ? _value.freeWaitTimeSeconds
                : freeWaitTimeSeconds // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$ArriveTripEntityImplCopyWith<$Res>
    implements $ArriveTripEntityCopyWith<$Res> {
  factory _$$ArriveTripEntityImplCopyWith(
    _$ArriveTripEntityImpl value,
    $Res Function(_$ArriveTripEntityImpl) then,
  ) = __$$ArriveTripEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int tripId,
    String status,
    DateTime? arrivedAt,
    int freeWaitTimeSeconds,
    String message,
  });
}

/// @nodoc
class __$$ArriveTripEntityImplCopyWithImpl<$Res>
    extends _$ArriveTripEntityCopyWithImpl<$Res, _$ArriveTripEntityImpl>
    implements _$$ArriveTripEntityImplCopyWith<$Res> {
  __$$ArriveTripEntityImplCopyWithImpl(
    _$ArriveTripEntityImpl _value,
    $Res Function(_$ArriveTripEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArriveTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? status = null,
    Object? arrivedAt = freezed,
    Object? freeWaitTimeSeconds = null,
    Object? message = null,
  }) {
    return _then(
      _$ArriveTripEntityImpl(
        tripId: null == tripId
            ? _value.tripId
            : tripId // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        arrivedAt: freezed == arrivedAt
            ? _value.arrivedAt
            : arrivedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        freeWaitTimeSeconds: null == freeWaitTimeSeconds
            ? _value.freeWaitTimeSeconds
            : freeWaitTimeSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ArriveTripEntityImpl implements _ArriveTripEntity {
  const _$ArriveTripEntityImpl({
    required this.tripId,
    required this.status,
    required this.arrivedAt,
    required this.freeWaitTimeSeconds,
    required this.message,
  });

  @override
  final int tripId;
  @override
  final String status;
  @override
  final DateTime? arrivedAt;
  @override
  final int freeWaitTimeSeconds;
  @override
  final String message;

  @override
  String toString() {
    return 'ArriveTripEntity(tripId: $tripId, status: $status, arrivedAt: $arrivedAt, freeWaitTimeSeconds: $freeWaitTimeSeconds, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArriveTripEntityImpl &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.arrivedAt, arrivedAt) ||
                other.arrivedAt == arrivedAt) &&
            (identical(other.freeWaitTimeSeconds, freeWaitTimeSeconds) ||
                other.freeWaitTimeSeconds == freeWaitTimeSeconds) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    tripId,
    status,
    arrivedAt,
    freeWaitTimeSeconds,
    message,
  );

  /// Create a copy of ArriveTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArriveTripEntityImplCopyWith<_$ArriveTripEntityImpl> get copyWith =>
      __$$ArriveTripEntityImplCopyWithImpl<_$ArriveTripEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _ArriveTripEntity implements ArriveTripEntity {
  const factory _ArriveTripEntity({
    required final int tripId,
    required final String status,
    required final DateTime? arrivedAt,
    required final int freeWaitTimeSeconds,
    required final String message,
  }) = _$ArriveTripEntityImpl;

  @override
  int get tripId;
  @override
  String get status;
  @override
  DateTime? get arrivedAt;
  @override
  int get freeWaitTimeSeconds;
  @override
  String get message;

  /// Create a copy of ArriveTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArriveTripEntityImplCopyWith<_$ArriveTripEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
