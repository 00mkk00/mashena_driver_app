// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accept_passenger_pool_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AcceptPassengerPoolResponseModel _$AcceptPassengerPoolResponseModelFromJson(
  Map<String, dynamic> json,
) {
  return _AcceptPassengerPoolResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AcceptPassengerPoolResponseModel {
  PassengerPoolModel? get room => throw _privateConstructorUsedError;
  int? get sharedRideId => throw _privateConstructorUsedError;

  /// Serializes this AcceptPassengerPoolResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcceptPassengerPoolResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcceptPassengerPoolResponseModelCopyWith<AcceptPassengerPoolResponseModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptPassengerPoolResponseModelCopyWith<$Res> {
  factory $AcceptPassengerPoolResponseModelCopyWith(
    AcceptPassengerPoolResponseModel value,
    $Res Function(AcceptPassengerPoolResponseModel) then,
  ) =
      _$AcceptPassengerPoolResponseModelCopyWithImpl<
        $Res,
        AcceptPassengerPoolResponseModel
      >;
  @useResult
  $Res call({PassengerPoolModel? room, int? sharedRideId});

  $PassengerPoolModelCopyWith<$Res>? get room;
}

/// @nodoc
class _$AcceptPassengerPoolResponseModelCopyWithImpl<
  $Res,
  $Val extends AcceptPassengerPoolResponseModel
>
    implements $AcceptPassengerPoolResponseModelCopyWith<$Res> {
  _$AcceptPassengerPoolResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcceptPassengerPoolResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? room = freezed, Object? sharedRideId = freezed}) {
    return _then(
      _value.copyWith(
            room: freezed == room
                ? _value.room
                : room // ignore: cast_nullable_to_non_nullable
                      as PassengerPoolModel?,
            sharedRideId: freezed == sharedRideId
                ? _value.sharedRideId
                : sharedRideId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }

  /// Create a copy of AcceptPassengerPoolResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PassengerPoolModelCopyWith<$Res>? get room {
    if (_value.room == null) {
      return null;
    }

    return $PassengerPoolModelCopyWith<$Res>(_value.room!, (value) {
      return _then(_value.copyWith(room: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AcceptPassengerPoolResponseModelImplCopyWith<$Res>
    implements $AcceptPassengerPoolResponseModelCopyWith<$Res> {
  factory _$$AcceptPassengerPoolResponseModelImplCopyWith(
    _$AcceptPassengerPoolResponseModelImpl value,
    $Res Function(_$AcceptPassengerPoolResponseModelImpl) then,
  ) = __$$AcceptPassengerPoolResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PassengerPoolModel? room, int? sharedRideId});

  @override
  $PassengerPoolModelCopyWith<$Res>? get room;
}

/// @nodoc
class __$$AcceptPassengerPoolResponseModelImplCopyWithImpl<$Res>
    extends
        _$AcceptPassengerPoolResponseModelCopyWithImpl<
          $Res,
          _$AcceptPassengerPoolResponseModelImpl
        >
    implements _$$AcceptPassengerPoolResponseModelImplCopyWith<$Res> {
  __$$AcceptPassengerPoolResponseModelImplCopyWithImpl(
    _$AcceptPassengerPoolResponseModelImpl _value,
    $Res Function(_$AcceptPassengerPoolResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AcceptPassengerPoolResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? room = freezed, Object? sharedRideId = freezed}) {
    return _then(
      _$AcceptPassengerPoolResponseModelImpl(
        room: freezed == room
            ? _value.room
            : room // ignore: cast_nullable_to_non_nullable
                  as PassengerPoolModel?,
        sharedRideId: freezed == sharedRideId
            ? _value.sharedRideId
            : sharedRideId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AcceptPassengerPoolResponseModelImpl
    implements _AcceptPassengerPoolResponseModel {
  const _$AcceptPassengerPoolResponseModelImpl({this.room, this.sharedRideId});

  factory _$AcceptPassengerPoolResponseModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$AcceptPassengerPoolResponseModelImplFromJson(json);

  @override
  final PassengerPoolModel? room;
  @override
  final int? sharedRideId;

  @override
  String toString() {
    return 'AcceptPassengerPoolResponseModel(room: $room, sharedRideId: $sharedRideId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptPassengerPoolResponseModelImpl &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.sharedRideId, sharedRideId) ||
                other.sharedRideId == sharedRideId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, room, sharedRideId);

  /// Create a copy of AcceptPassengerPoolResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptPassengerPoolResponseModelImplCopyWith<
    _$AcceptPassengerPoolResponseModelImpl
  >
  get copyWith =>
      __$$AcceptPassengerPoolResponseModelImplCopyWithImpl<
        _$AcceptPassengerPoolResponseModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcceptPassengerPoolResponseModelImplToJson(this);
  }
}

abstract class _AcceptPassengerPoolResponseModel
    implements AcceptPassengerPoolResponseModel {
  const factory _AcceptPassengerPoolResponseModel({
    final PassengerPoolModel? room,
    final int? sharedRideId,
  }) = _$AcceptPassengerPoolResponseModelImpl;

  factory _AcceptPassengerPoolResponseModel.fromJson(
    Map<String, dynamic> json,
  ) = _$AcceptPassengerPoolResponseModelImpl.fromJson;

  @override
  PassengerPoolModel? get room;
  @override
  int? get sharedRideId;

  /// Create a copy of AcceptPassengerPoolResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptPassengerPoolResponseModelImplCopyWith<
    _$AcceptPassengerPoolResponseModelImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
