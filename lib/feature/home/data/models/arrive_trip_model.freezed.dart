// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arrive_trip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ArriveTripModel _$ArriveTripModelFromJson(Map<String, dynamic> json) {
  return _ArriveTripModel.fromJson(json);
}

/// @nodoc
mixin _$ArriveTripModel {
  int? get tripId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get arrivedAt => throw _privateConstructorUsedError;
  int? get freeWaitTimeSeconds => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ArriveTripModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArriveTripModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArriveTripModelCopyWith<ArriveTripModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArriveTripModelCopyWith<$Res> {
  factory $ArriveTripModelCopyWith(
    ArriveTripModel value,
    $Res Function(ArriveTripModel) then,
  ) = _$ArriveTripModelCopyWithImpl<$Res, ArriveTripModel>;
  @useResult
  $Res call({
    int? tripId,
    String? status,
    String? arrivedAt,
    int? freeWaitTimeSeconds,
    String? message,
  });
}

/// @nodoc
class _$ArriveTripModelCopyWithImpl<$Res, $Val extends ArriveTripModel>
    implements $ArriveTripModelCopyWith<$Res> {
  _$ArriveTripModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArriveTripModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = freezed,
    Object? status = freezed,
    Object? arrivedAt = freezed,
    Object? freeWaitTimeSeconds = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            tripId: freezed == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                      as int?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            arrivedAt: freezed == arrivedAt
                ? _value.arrivedAt
                : arrivedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            freeWaitTimeSeconds: freezed == freeWaitTimeSeconds
                ? _value.freeWaitTimeSeconds
                : freeWaitTimeSeconds // ignore: cast_nullable_to_non_nullable
                      as int?,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArriveTripModelImplCopyWith<$Res>
    implements $ArriveTripModelCopyWith<$Res> {
  factory _$$ArriveTripModelImplCopyWith(
    _$ArriveTripModelImpl value,
    $Res Function(_$ArriveTripModelImpl) then,
  ) = __$$ArriveTripModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? tripId,
    String? status,
    String? arrivedAt,
    int? freeWaitTimeSeconds,
    String? message,
  });
}

/// @nodoc
class __$$ArriveTripModelImplCopyWithImpl<$Res>
    extends _$ArriveTripModelCopyWithImpl<$Res, _$ArriveTripModelImpl>
    implements _$$ArriveTripModelImplCopyWith<$Res> {
  __$$ArriveTripModelImplCopyWithImpl(
    _$ArriveTripModelImpl _value,
    $Res Function(_$ArriveTripModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArriveTripModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = freezed,
    Object? status = freezed,
    Object? arrivedAt = freezed,
    Object? freeWaitTimeSeconds = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _$ArriveTripModelImpl(
        tripId: freezed == tripId
            ? _value.tripId
            : tripId // ignore: cast_nullable_to_non_nullable
                  as int?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        arrivedAt: freezed == arrivedAt
            ? _value.arrivedAt
            : arrivedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        freeWaitTimeSeconds: freezed == freeWaitTimeSeconds
            ? _value.freeWaitTimeSeconds
            : freeWaitTimeSeconds // ignore: cast_nullable_to_non_nullable
                  as int?,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ArriveTripModelImpl implements _ArriveTripModel {
  const _$ArriveTripModelImpl({
    this.tripId,
    this.status,
    this.arrivedAt,
    this.freeWaitTimeSeconds,
    this.message,
  });

  factory _$ArriveTripModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArriveTripModelImplFromJson(json);

  @override
  final int? tripId;
  @override
  final String? status;
  @override
  final String? arrivedAt;
  @override
  final int? freeWaitTimeSeconds;
  @override
  final String? message;

  @override
  String toString() {
    return 'ArriveTripModel(tripId: $tripId, status: $status, arrivedAt: $arrivedAt, freeWaitTimeSeconds: $freeWaitTimeSeconds, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArriveTripModelImpl &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.arrivedAt, arrivedAt) ||
                other.arrivedAt == arrivedAt) &&
            (identical(other.freeWaitTimeSeconds, freeWaitTimeSeconds) ||
                other.freeWaitTimeSeconds == freeWaitTimeSeconds) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    tripId,
    status,
    arrivedAt,
    freeWaitTimeSeconds,
    message,
  );

  /// Create a copy of ArriveTripModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArriveTripModelImplCopyWith<_$ArriveTripModelImpl> get copyWith =>
      __$$ArriveTripModelImplCopyWithImpl<_$ArriveTripModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ArriveTripModelImplToJson(this);
  }
}

abstract class _ArriveTripModel implements ArriveTripModel {
  const factory _ArriveTripModel({
    final int? tripId,
    final String? status,
    final String? arrivedAt,
    final int? freeWaitTimeSeconds,
    final String? message,
  }) = _$ArriveTripModelImpl;

  factory _ArriveTripModel.fromJson(Map<String, dynamic> json) =
      _$ArriveTripModelImpl.fromJson;

  @override
  int? get tripId;
  @override
  String? get status;
  @override
  String? get arrivedAt;
  @override
  int? get freeWaitTimeSeconds;
  @override
  String? get message;

  /// Create a copy of ArriveTripModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArriveTripModelImplCopyWith<_$ArriveTripModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
