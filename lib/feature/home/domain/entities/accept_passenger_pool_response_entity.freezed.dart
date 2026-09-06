// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accept_passenger_pool_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AcceptPassengerPoolResponseEntity {
  PassengerPoolEntity? get room => throw _privateConstructorUsedError;
  int? get sharedRideId => throw _privateConstructorUsedError;

  /// Create a copy of AcceptPassengerPoolResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcceptPassengerPoolResponseEntityCopyWith<AcceptPassengerPoolResponseEntity>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptPassengerPoolResponseEntityCopyWith<$Res> {
  factory $AcceptPassengerPoolResponseEntityCopyWith(
    AcceptPassengerPoolResponseEntity value,
    $Res Function(AcceptPassengerPoolResponseEntity) then,
  ) =
      _$AcceptPassengerPoolResponseEntityCopyWithImpl<
        $Res,
        AcceptPassengerPoolResponseEntity
      >;
  @useResult
  $Res call({PassengerPoolEntity? room, int? sharedRideId});

  $PassengerPoolEntityCopyWith<$Res>? get room;
}

/// @nodoc
class _$AcceptPassengerPoolResponseEntityCopyWithImpl<
  $Res,
  $Val extends AcceptPassengerPoolResponseEntity
>
    implements $AcceptPassengerPoolResponseEntityCopyWith<$Res> {
  _$AcceptPassengerPoolResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcceptPassengerPoolResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? room = freezed, Object? sharedRideId = freezed}) {
    return _then(
      _value.copyWith(
            room: freezed == room
                ? _value.room
                : room // ignore: cast_nullable_to_non_nullable
                      as PassengerPoolEntity?,
            sharedRideId: freezed == sharedRideId
                ? _value.sharedRideId
                : sharedRideId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }

  /// Create a copy of AcceptPassengerPoolResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PassengerPoolEntityCopyWith<$Res>? get room {
    if (_value.room == null) {
      return null;
    }

    return $PassengerPoolEntityCopyWith<$Res>(_value.room!, (value) {
      return _then(_value.copyWith(room: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AcceptPassengerPoolResponseEntityImplCopyWith<$Res>
    implements $AcceptPassengerPoolResponseEntityCopyWith<$Res> {
  factory _$$AcceptPassengerPoolResponseEntityImplCopyWith(
    _$AcceptPassengerPoolResponseEntityImpl value,
    $Res Function(_$AcceptPassengerPoolResponseEntityImpl) then,
  ) = __$$AcceptPassengerPoolResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PassengerPoolEntity? room, int? sharedRideId});

  @override
  $PassengerPoolEntityCopyWith<$Res>? get room;
}

/// @nodoc
class __$$AcceptPassengerPoolResponseEntityImplCopyWithImpl<$Res>
    extends
        _$AcceptPassengerPoolResponseEntityCopyWithImpl<
          $Res,
          _$AcceptPassengerPoolResponseEntityImpl
        >
    implements _$$AcceptPassengerPoolResponseEntityImplCopyWith<$Res> {
  __$$AcceptPassengerPoolResponseEntityImplCopyWithImpl(
    _$AcceptPassengerPoolResponseEntityImpl _value,
    $Res Function(_$AcceptPassengerPoolResponseEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AcceptPassengerPoolResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? room = freezed, Object? sharedRideId = freezed}) {
    return _then(
      _$AcceptPassengerPoolResponseEntityImpl(
        room: freezed == room
            ? _value.room
            : room // ignore: cast_nullable_to_non_nullable
                  as PassengerPoolEntity?,
        sharedRideId: freezed == sharedRideId
            ? _value.sharedRideId
            : sharedRideId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$AcceptPassengerPoolResponseEntityImpl
    implements _AcceptPassengerPoolResponseEntity {
  const _$AcceptPassengerPoolResponseEntityImpl({
    required this.room,
    required this.sharedRideId,
  });

  @override
  final PassengerPoolEntity? room;
  @override
  final int? sharedRideId;

  @override
  String toString() {
    return 'AcceptPassengerPoolResponseEntity(room: $room, sharedRideId: $sharedRideId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptPassengerPoolResponseEntityImpl &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.sharedRideId, sharedRideId) ||
                other.sharedRideId == sharedRideId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room, sharedRideId);

  /// Create a copy of AcceptPassengerPoolResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptPassengerPoolResponseEntityImplCopyWith<
    _$AcceptPassengerPoolResponseEntityImpl
  >
  get copyWith =>
      __$$AcceptPassengerPoolResponseEntityImplCopyWithImpl<
        _$AcceptPassengerPoolResponseEntityImpl
      >(this, _$identity);
}

abstract class _AcceptPassengerPoolResponseEntity
    implements AcceptPassengerPoolResponseEntity {
  const factory _AcceptPassengerPoolResponseEntity({
    required final PassengerPoolEntity? room,
    required final int? sharedRideId,
  }) = _$AcceptPassengerPoolResponseEntityImpl;

  @override
  PassengerPoolEntity? get room;
  @override
  int? get sharedRideId;

  /// Create a copy of AcceptPassengerPoolResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptPassengerPoolResponseEntityImplCopyWith<
    _$AcceptPassengerPoolResponseEntityImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
