// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passenger_pool_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PassengerPoolMemberModel _$PassengerPoolMemberModelFromJson(
  Map<String, dynamic> json,
) {
  return _PassengerPoolMemberModel.fromJson(json);
}

/// @nodoc
mixin _$PassengerPoolMemberModel {
  @JsonKey(fromJson: parseIntFromJson)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get roomId => throw _privateConstructorUsedError;
  String? get riderName => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get sharedRidePassengerId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get riderProfileId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get seatsNeeded => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get pickupLat => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get pickupLng => throw _privateConstructorUsedError;
  String? get joinedAt => throw _privateConstructorUsedError;
  String? get leftAt => throw _privateConstructorUsedError;

  /// Serializes this PassengerPoolMemberModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PassengerPoolMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PassengerPoolMemberModelCopyWith<PassengerPoolMemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassengerPoolMemberModelCopyWith<$Res> {
  factory $PassengerPoolMemberModelCopyWith(
    PassengerPoolMemberModel value,
    $Res Function(PassengerPoolMemberModel) then,
  ) = _$PassengerPoolMemberModelCopyWithImpl<$Res, PassengerPoolMemberModel>;
  @useResult
  $Res call({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? roomId,
    String? riderName,
    @JsonKey(fromJson: parseIntFromJson) int? sharedRidePassengerId,
    @JsonKey(fromJson: parseIntFromJson) int? riderProfileId,
    @JsonKey(fromJson: parseIntFromJson) int? seatsNeeded,
    String? status,
    @JsonKey(fromJson: parseDoubleFromJson) double? pickupLat,
    @JsonKey(fromJson: parseDoubleFromJson) double? pickupLng,
    String? joinedAt,
    String? leftAt,
  });
}

/// @nodoc
class _$PassengerPoolMemberModelCopyWithImpl<
  $Res,
  $Val extends PassengerPoolMemberModel
>
    implements $PassengerPoolMemberModelCopyWith<$Res> {
  _$PassengerPoolMemberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PassengerPoolMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roomId = freezed,
    Object? riderName = freezed,
    Object? sharedRidePassengerId = freezed,
    Object? riderProfileId = freezed,
    Object? seatsNeeded = freezed,
    Object? status = freezed,
    Object? pickupLat = freezed,
    Object? pickupLng = freezed,
    Object? joinedAt = freezed,
    Object? leftAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            roomId: freezed == roomId
                ? _value.roomId
                : roomId // ignore: cast_nullable_to_non_nullable
                      as int?,
            riderName: freezed == riderName
                ? _value.riderName
                : riderName // ignore: cast_nullable_to_non_nullable
                      as String?,
            sharedRidePassengerId: freezed == sharedRidePassengerId
                ? _value.sharedRidePassengerId
                : sharedRidePassengerId // ignore: cast_nullable_to_non_nullable
                      as int?,
            riderProfileId: freezed == riderProfileId
                ? _value.riderProfileId
                : riderProfileId // ignore: cast_nullable_to_non_nullable
                      as int?,
            seatsNeeded: freezed == seatsNeeded
                ? _value.seatsNeeded
                : seatsNeeded // ignore: cast_nullable_to_non_nullable
                      as int?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            pickupLat: freezed == pickupLat
                ? _value.pickupLat
                : pickupLat // ignore: cast_nullable_to_non_nullable
                      as double?,
            pickupLng: freezed == pickupLng
                ? _value.pickupLng
                : pickupLng // ignore: cast_nullable_to_non_nullable
                      as double?,
            joinedAt: freezed == joinedAt
                ? _value.joinedAt
                : joinedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            leftAt: freezed == leftAt
                ? _value.leftAt
                : leftAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PassengerPoolMemberModelImplCopyWith<$Res>
    implements $PassengerPoolMemberModelCopyWith<$Res> {
  factory _$$PassengerPoolMemberModelImplCopyWith(
    _$PassengerPoolMemberModelImpl value,
    $Res Function(_$PassengerPoolMemberModelImpl) then,
  ) = __$$PassengerPoolMemberModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? roomId,
    String? riderName,
    @JsonKey(fromJson: parseIntFromJson) int? sharedRidePassengerId,
    @JsonKey(fromJson: parseIntFromJson) int? riderProfileId,
    @JsonKey(fromJson: parseIntFromJson) int? seatsNeeded,
    String? status,
    @JsonKey(fromJson: parseDoubleFromJson) double? pickupLat,
    @JsonKey(fromJson: parseDoubleFromJson) double? pickupLng,
    String? joinedAt,
    String? leftAt,
  });
}

/// @nodoc
class __$$PassengerPoolMemberModelImplCopyWithImpl<$Res>
    extends
        _$PassengerPoolMemberModelCopyWithImpl<
          $Res,
          _$PassengerPoolMemberModelImpl
        >
    implements _$$PassengerPoolMemberModelImplCopyWith<$Res> {
  __$$PassengerPoolMemberModelImplCopyWithImpl(
    _$PassengerPoolMemberModelImpl _value,
    $Res Function(_$PassengerPoolMemberModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PassengerPoolMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roomId = freezed,
    Object? riderName = freezed,
    Object? sharedRidePassengerId = freezed,
    Object? riderProfileId = freezed,
    Object? seatsNeeded = freezed,
    Object? status = freezed,
    Object? pickupLat = freezed,
    Object? pickupLng = freezed,
    Object? joinedAt = freezed,
    Object? leftAt = freezed,
  }) {
    return _then(
      _$PassengerPoolMemberModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        roomId: freezed == roomId
            ? _value.roomId
            : roomId // ignore: cast_nullable_to_non_nullable
                  as int?,
        riderName: freezed == riderName
            ? _value.riderName
            : riderName // ignore: cast_nullable_to_non_nullable
                  as String?,
        sharedRidePassengerId: freezed == sharedRidePassengerId
            ? _value.sharedRidePassengerId
            : sharedRidePassengerId // ignore: cast_nullable_to_non_nullable
                  as int?,
        riderProfileId: freezed == riderProfileId
            ? _value.riderProfileId
            : riderProfileId // ignore: cast_nullable_to_non_nullable
                  as int?,
        seatsNeeded: freezed == seatsNeeded
            ? _value.seatsNeeded
            : seatsNeeded // ignore: cast_nullable_to_non_nullable
                  as int?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        pickupLat: freezed == pickupLat
            ? _value.pickupLat
            : pickupLat // ignore: cast_nullable_to_non_nullable
                  as double?,
        pickupLng: freezed == pickupLng
            ? _value.pickupLng
            : pickupLng // ignore: cast_nullable_to_non_nullable
                  as double?,
        joinedAt: freezed == joinedAt
            ? _value.joinedAt
            : joinedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        leftAt: freezed == leftAt
            ? _value.leftAt
            : leftAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PassengerPoolMemberModelImpl implements _PassengerPoolMemberModel {
  const _$PassengerPoolMemberModelImpl({
    @JsonKey(fromJson: parseIntFromJson) this.id,
    @JsonKey(fromJson: parseIntFromJson) this.roomId,
    this.riderName,
    @JsonKey(fromJson: parseIntFromJson) this.sharedRidePassengerId,
    @JsonKey(fromJson: parseIntFromJson) this.riderProfileId,
    @JsonKey(fromJson: parseIntFromJson) this.seatsNeeded,
    this.status,
    @JsonKey(fromJson: parseDoubleFromJson) this.pickupLat,
    @JsonKey(fromJson: parseDoubleFromJson) this.pickupLng,
    this.joinedAt,
    this.leftAt,
  });

  factory _$PassengerPoolMemberModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PassengerPoolMemberModelImplFromJson(json);

  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? id;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? roomId;
  @override
  final String? riderName;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? sharedRidePassengerId;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? riderProfileId;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? seatsNeeded;
  @override
  final String? status;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  final double? pickupLat;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  final double? pickupLng;
  @override
  final String? joinedAt;
  @override
  final String? leftAt;

  @override
  String toString() {
    return 'PassengerPoolMemberModel(id: $id, roomId: $roomId, riderName: $riderName, sharedRidePassengerId: $sharedRidePassengerId, riderProfileId: $riderProfileId, seatsNeeded: $seatsNeeded, status: $status, pickupLat: $pickupLat, pickupLng: $pickupLng, joinedAt: $joinedAt, leftAt: $leftAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassengerPoolMemberModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.riderName, riderName) ||
                other.riderName == riderName) &&
            (identical(other.sharedRidePassengerId, sharedRidePassengerId) ||
                other.sharedRidePassengerId == sharedRidePassengerId) &&
            (identical(other.riderProfileId, riderProfileId) ||
                other.riderProfileId == riderProfileId) &&
            (identical(other.seatsNeeded, seatsNeeded) ||
                other.seatsNeeded == seatsNeeded) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pickupLat, pickupLat) ||
                other.pickupLat == pickupLat) &&
            (identical(other.pickupLng, pickupLng) ||
                other.pickupLng == pickupLng) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.leftAt, leftAt) || other.leftAt == leftAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    roomId,
    riderName,
    sharedRidePassengerId,
    riderProfileId,
    seatsNeeded,
    status,
    pickupLat,
    pickupLng,
    joinedAt,
    leftAt,
  );

  /// Create a copy of PassengerPoolMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassengerPoolMemberModelImplCopyWith<_$PassengerPoolMemberModelImpl>
  get copyWith =>
      __$$PassengerPoolMemberModelImplCopyWithImpl<
        _$PassengerPoolMemberModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PassengerPoolMemberModelImplToJson(this);
  }
}

abstract class _PassengerPoolMemberModel implements PassengerPoolMemberModel {
  const factory _PassengerPoolMemberModel({
    @JsonKey(fromJson: parseIntFromJson) final int? id,
    @JsonKey(fromJson: parseIntFromJson) final int? roomId,
    final String? riderName,
    @JsonKey(fromJson: parseIntFromJson) final int? sharedRidePassengerId,
    @JsonKey(fromJson: parseIntFromJson) final int? riderProfileId,
    @JsonKey(fromJson: parseIntFromJson) final int? seatsNeeded,
    final String? status,
    @JsonKey(fromJson: parseDoubleFromJson) final double? pickupLat,
    @JsonKey(fromJson: parseDoubleFromJson) final double? pickupLng,
    final String? joinedAt,
    final String? leftAt,
  }) = _$PassengerPoolMemberModelImpl;

  factory _PassengerPoolMemberModel.fromJson(Map<String, dynamic> json) =
      _$PassengerPoolMemberModelImpl.fromJson;

  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get id;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get roomId;
  @override
  String? get riderName;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get sharedRidePassengerId;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get riderProfileId;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get seatsNeeded;
  @override
  String? get status;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get pickupLat;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get pickupLng;
  @override
  String? get joinedAt;
  @override
  String? get leftAt;

  /// Create a copy of PassengerPoolMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassengerPoolMemberModelImplCopyWith<_$PassengerPoolMemberModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

PassengerPoolModel _$PassengerPoolModelFromJson(Map<String, dynamic> json) {
  return _PassengerPoolModel.fromJson(json);
}

/// @nodoc
mixin _$PassengerPoolModel {
  @JsonKey(fromJson: parseIntFromJson)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get creatorRiderProfileId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get driverProfileId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get sharedRideId => throw _privateConstructorUsedError;
  String? get driverAcceptedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get creatorPickupLat => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get creatorPickupLng => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get meetingLat => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get meetingLng => throw _privateConstructorUsedError;
  String? get meetingAddress => throw _privateConstructorUsedError;
  String? get meetingPlaceName => throw _privateConstructorUsedError;
  String? get meetingPlaceProvider => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get destinationLat => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get destinationLng => throw _privateConstructorUsedError;
  String? get destinationAddress => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get maxPassengers => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseIntFromJson)
  int? get currentPassengers => throw _privateConstructorUsedError;
  String? get departureTime => throw _privateConstructorUsedError;
  String? get expiresAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get distanceToMeetingKm => throw _privateConstructorUsedError;
  List<PassengerPoolMemberModel>? get members =>
      throw _privateConstructorUsedError;

  /// Serializes this PassengerPoolModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PassengerPoolModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PassengerPoolModelCopyWith<PassengerPoolModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassengerPoolModelCopyWith<$Res> {
  factory $PassengerPoolModelCopyWith(
    PassengerPoolModel value,
    $Res Function(PassengerPoolModel) then,
  ) = _$PassengerPoolModelCopyWithImpl<$Res, PassengerPoolModel>;
  @useResult
  $Res call({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? creatorRiderProfileId,
    String? status,
    @JsonKey(fromJson: parseIntFromJson) int? driverProfileId,
    @JsonKey(fromJson: parseIntFromJson) int? sharedRideId,
    String? driverAcceptedAt,
    @JsonKey(fromJson: parseDoubleFromJson) double? creatorPickupLat,
    @JsonKey(fromJson: parseDoubleFromJson) double? creatorPickupLng,
    @JsonKey(fromJson: parseDoubleFromJson) double? meetingLat,
    @JsonKey(fromJson: parseDoubleFromJson) double? meetingLng,
    String? meetingAddress,
    String? meetingPlaceName,
    String? meetingPlaceProvider,
    @JsonKey(fromJson: parseDoubleFromJson) double? destinationLat,
    @JsonKey(fromJson: parseDoubleFromJson) double? destinationLng,
    String? destinationAddress,
    @JsonKey(fromJson: parseIntFromJson) int? maxPassengers,
    @JsonKey(fromJson: parseIntFromJson) int? currentPassengers,
    String? departureTime,
    String? expiresAt,
    String? createdAt,
    @JsonKey(fromJson: parseDoubleFromJson) double? distanceToMeetingKm,
    List<PassengerPoolMemberModel>? members,
  });
}

/// @nodoc
class _$PassengerPoolModelCopyWithImpl<$Res, $Val extends PassengerPoolModel>
    implements $PassengerPoolModelCopyWith<$Res> {
  _$PassengerPoolModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PassengerPoolModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creatorRiderProfileId = freezed,
    Object? status = freezed,
    Object? driverProfileId = freezed,
    Object? sharedRideId = freezed,
    Object? driverAcceptedAt = freezed,
    Object? creatorPickupLat = freezed,
    Object? creatorPickupLng = freezed,
    Object? meetingLat = freezed,
    Object? meetingLng = freezed,
    Object? meetingAddress = freezed,
    Object? meetingPlaceName = freezed,
    Object? meetingPlaceProvider = freezed,
    Object? destinationLat = freezed,
    Object? destinationLng = freezed,
    Object? destinationAddress = freezed,
    Object? maxPassengers = freezed,
    Object? currentPassengers = freezed,
    Object? departureTime = freezed,
    Object? expiresAt = freezed,
    Object? createdAt = freezed,
    Object? distanceToMeetingKm = freezed,
    Object? members = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            creatorRiderProfileId: freezed == creatorRiderProfileId
                ? _value.creatorRiderProfileId
                : creatorRiderProfileId // ignore: cast_nullable_to_non_nullable
                      as int?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            driverProfileId: freezed == driverProfileId
                ? _value.driverProfileId
                : driverProfileId // ignore: cast_nullable_to_non_nullable
                      as int?,
            sharedRideId: freezed == sharedRideId
                ? _value.sharedRideId
                : sharedRideId // ignore: cast_nullable_to_non_nullable
                      as int?,
            driverAcceptedAt: freezed == driverAcceptedAt
                ? _value.driverAcceptedAt
                : driverAcceptedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            creatorPickupLat: freezed == creatorPickupLat
                ? _value.creatorPickupLat
                : creatorPickupLat // ignore: cast_nullable_to_non_nullable
                      as double?,
            creatorPickupLng: freezed == creatorPickupLng
                ? _value.creatorPickupLng
                : creatorPickupLng // ignore: cast_nullable_to_non_nullable
                      as double?,
            meetingLat: freezed == meetingLat
                ? _value.meetingLat
                : meetingLat // ignore: cast_nullable_to_non_nullable
                      as double?,
            meetingLng: freezed == meetingLng
                ? _value.meetingLng
                : meetingLng // ignore: cast_nullable_to_non_nullable
                      as double?,
            meetingAddress: freezed == meetingAddress
                ? _value.meetingAddress
                : meetingAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            meetingPlaceName: freezed == meetingPlaceName
                ? _value.meetingPlaceName
                : meetingPlaceName // ignore: cast_nullable_to_non_nullable
                      as String?,
            meetingPlaceProvider: freezed == meetingPlaceProvider
                ? _value.meetingPlaceProvider
                : meetingPlaceProvider // ignore: cast_nullable_to_non_nullable
                      as String?,
            destinationLat: freezed == destinationLat
                ? _value.destinationLat
                : destinationLat // ignore: cast_nullable_to_non_nullable
                      as double?,
            destinationLng: freezed == destinationLng
                ? _value.destinationLng
                : destinationLng // ignore: cast_nullable_to_non_nullable
                      as double?,
            destinationAddress: freezed == destinationAddress
                ? _value.destinationAddress
                : destinationAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            maxPassengers: freezed == maxPassengers
                ? _value.maxPassengers
                : maxPassengers // ignore: cast_nullable_to_non_nullable
                      as int?,
            currentPassengers: freezed == currentPassengers
                ? _value.currentPassengers
                : currentPassengers // ignore: cast_nullable_to_non_nullable
                      as int?,
            departureTime: freezed == departureTime
                ? _value.departureTime
                : departureTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            expiresAt: freezed == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            distanceToMeetingKm: freezed == distanceToMeetingKm
                ? _value.distanceToMeetingKm
                : distanceToMeetingKm // ignore: cast_nullable_to_non_nullable
                      as double?,
            members: freezed == members
                ? _value.members
                : members // ignore: cast_nullable_to_non_nullable
                      as List<PassengerPoolMemberModel>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PassengerPoolModelImplCopyWith<$Res>
    implements $PassengerPoolModelCopyWith<$Res> {
  factory _$$PassengerPoolModelImplCopyWith(
    _$PassengerPoolModelImpl value,
    $Res Function(_$PassengerPoolModelImpl) then,
  ) = __$$PassengerPoolModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? creatorRiderProfileId,
    String? status,
    @JsonKey(fromJson: parseIntFromJson) int? driverProfileId,
    @JsonKey(fromJson: parseIntFromJson) int? sharedRideId,
    String? driverAcceptedAt,
    @JsonKey(fromJson: parseDoubleFromJson) double? creatorPickupLat,
    @JsonKey(fromJson: parseDoubleFromJson) double? creatorPickupLng,
    @JsonKey(fromJson: parseDoubleFromJson) double? meetingLat,
    @JsonKey(fromJson: parseDoubleFromJson) double? meetingLng,
    String? meetingAddress,
    String? meetingPlaceName,
    String? meetingPlaceProvider,
    @JsonKey(fromJson: parseDoubleFromJson) double? destinationLat,
    @JsonKey(fromJson: parseDoubleFromJson) double? destinationLng,
    String? destinationAddress,
    @JsonKey(fromJson: parseIntFromJson) int? maxPassengers,
    @JsonKey(fromJson: parseIntFromJson) int? currentPassengers,
    String? departureTime,
    String? expiresAt,
    String? createdAt,
    @JsonKey(fromJson: parseDoubleFromJson) double? distanceToMeetingKm,
    List<PassengerPoolMemberModel>? members,
  });
}

/// @nodoc
class __$$PassengerPoolModelImplCopyWithImpl<$Res>
    extends _$PassengerPoolModelCopyWithImpl<$Res, _$PassengerPoolModelImpl>
    implements _$$PassengerPoolModelImplCopyWith<$Res> {
  __$$PassengerPoolModelImplCopyWithImpl(
    _$PassengerPoolModelImpl _value,
    $Res Function(_$PassengerPoolModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PassengerPoolModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creatorRiderProfileId = freezed,
    Object? status = freezed,
    Object? driverProfileId = freezed,
    Object? sharedRideId = freezed,
    Object? driverAcceptedAt = freezed,
    Object? creatorPickupLat = freezed,
    Object? creatorPickupLng = freezed,
    Object? meetingLat = freezed,
    Object? meetingLng = freezed,
    Object? meetingAddress = freezed,
    Object? meetingPlaceName = freezed,
    Object? meetingPlaceProvider = freezed,
    Object? destinationLat = freezed,
    Object? destinationLng = freezed,
    Object? destinationAddress = freezed,
    Object? maxPassengers = freezed,
    Object? currentPassengers = freezed,
    Object? departureTime = freezed,
    Object? expiresAt = freezed,
    Object? createdAt = freezed,
    Object? distanceToMeetingKm = freezed,
    Object? members = freezed,
  }) {
    return _then(
      _$PassengerPoolModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        creatorRiderProfileId: freezed == creatorRiderProfileId
            ? _value.creatorRiderProfileId
            : creatorRiderProfileId // ignore: cast_nullable_to_non_nullable
                  as int?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        driverProfileId: freezed == driverProfileId
            ? _value.driverProfileId
            : driverProfileId // ignore: cast_nullable_to_non_nullable
                  as int?,
        sharedRideId: freezed == sharedRideId
            ? _value.sharedRideId
            : sharedRideId // ignore: cast_nullable_to_non_nullable
                  as int?,
        driverAcceptedAt: freezed == driverAcceptedAt
            ? _value.driverAcceptedAt
            : driverAcceptedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        creatorPickupLat: freezed == creatorPickupLat
            ? _value.creatorPickupLat
            : creatorPickupLat // ignore: cast_nullable_to_non_nullable
                  as double?,
        creatorPickupLng: freezed == creatorPickupLng
            ? _value.creatorPickupLng
            : creatorPickupLng // ignore: cast_nullable_to_non_nullable
                  as double?,
        meetingLat: freezed == meetingLat
            ? _value.meetingLat
            : meetingLat // ignore: cast_nullable_to_non_nullable
                  as double?,
        meetingLng: freezed == meetingLng
            ? _value.meetingLng
            : meetingLng // ignore: cast_nullable_to_non_nullable
                  as double?,
        meetingAddress: freezed == meetingAddress
            ? _value.meetingAddress
            : meetingAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        meetingPlaceName: freezed == meetingPlaceName
            ? _value.meetingPlaceName
            : meetingPlaceName // ignore: cast_nullable_to_non_nullable
                  as String?,
        meetingPlaceProvider: freezed == meetingPlaceProvider
            ? _value.meetingPlaceProvider
            : meetingPlaceProvider // ignore: cast_nullable_to_non_nullable
                  as String?,
        destinationLat: freezed == destinationLat
            ? _value.destinationLat
            : destinationLat // ignore: cast_nullable_to_non_nullable
                  as double?,
        destinationLng: freezed == destinationLng
            ? _value.destinationLng
            : destinationLng // ignore: cast_nullable_to_non_nullable
                  as double?,
        destinationAddress: freezed == destinationAddress
            ? _value.destinationAddress
            : destinationAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        maxPassengers: freezed == maxPassengers
            ? _value.maxPassengers
            : maxPassengers // ignore: cast_nullable_to_non_nullable
                  as int?,
        currentPassengers: freezed == currentPassengers
            ? _value.currentPassengers
            : currentPassengers // ignore: cast_nullable_to_non_nullable
                  as int?,
        departureTime: freezed == departureTime
            ? _value.departureTime
            : departureTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        expiresAt: freezed == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        distanceToMeetingKm: freezed == distanceToMeetingKm
            ? _value.distanceToMeetingKm
            : distanceToMeetingKm // ignore: cast_nullable_to_non_nullable
                  as double?,
        members: freezed == members
            ? _value._members
            : members // ignore: cast_nullable_to_non_nullable
                  as List<PassengerPoolMemberModel>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PassengerPoolModelImpl implements _PassengerPoolModel {
  const _$PassengerPoolModelImpl({
    @JsonKey(fromJson: parseIntFromJson) this.id,
    @JsonKey(fromJson: parseIntFromJson) this.creatorRiderProfileId,
    this.status,
    @JsonKey(fromJson: parseIntFromJson) this.driverProfileId,
    @JsonKey(fromJson: parseIntFromJson) this.sharedRideId,
    this.driverAcceptedAt,
    @JsonKey(fromJson: parseDoubleFromJson) this.creatorPickupLat,
    @JsonKey(fromJson: parseDoubleFromJson) this.creatorPickupLng,
    @JsonKey(fromJson: parseDoubleFromJson) this.meetingLat,
    @JsonKey(fromJson: parseDoubleFromJson) this.meetingLng,
    this.meetingAddress,
    this.meetingPlaceName,
    this.meetingPlaceProvider,
    @JsonKey(fromJson: parseDoubleFromJson) this.destinationLat,
    @JsonKey(fromJson: parseDoubleFromJson) this.destinationLng,
    this.destinationAddress,
    @JsonKey(fromJson: parseIntFromJson) this.maxPassengers,
    @JsonKey(fromJson: parseIntFromJson) this.currentPassengers,
    this.departureTime,
    this.expiresAt,
    this.createdAt,
    @JsonKey(fromJson: parseDoubleFromJson) this.distanceToMeetingKm,
    final List<PassengerPoolMemberModel>? members,
  }) : _members = members;

  factory _$PassengerPoolModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PassengerPoolModelImplFromJson(json);

  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? id;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? creatorRiderProfileId;
  @override
  final String? status;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? driverProfileId;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? sharedRideId;
  @override
  final String? driverAcceptedAt;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  final double? creatorPickupLat;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  final double? creatorPickupLng;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  final double? meetingLat;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  final double? meetingLng;
  @override
  final String? meetingAddress;
  @override
  final String? meetingPlaceName;
  @override
  final String? meetingPlaceProvider;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  final double? destinationLat;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  final double? destinationLng;
  @override
  final String? destinationAddress;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? maxPassengers;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  final int? currentPassengers;
  @override
  final String? departureTime;
  @override
  final String? expiresAt;
  @override
  final String? createdAt;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  final double? distanceToMeetingKm;
  final List<PassengerPoolMemberModel>? _members;
  @override
  List<PassengerPoolMemberModel>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PassengerPoolModel(id: $id, creatorRiderProfileId: $creatorRiderProfileId, status: $status, driverProfileId: $driverProfileId, sharedRideId: $sharedRideId, driverAcceptedAt: $driverAcceptedAt, creatorPickupLat: $creatorPickupLat, creatorPickupLng: $creatorPickupLng, meetingLat: $meetingLat, meetingLng: $meetingLng, meetingAddress: $meetingAddress, meetingPlaceName: $meetingPlaceName, meetingPlaceProvider: $meetingPlaceProvider, destinationLat: $destinationLat, destinationLng: $destinationLng, destinationAddress: $destinationAddress, maxPassengers: $maxPassengers, currentPassengers: $currentPassengers, departureTime: $departureTime, expiresAt: $expiresAt, createdAt: $createdAt, distanceToMeetingKm: $distanceToMeetingKm, members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassengerPoolModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creatorRiderProfileId, creatorRiderProfileId) ||
                other.creatorRiderProfileId == creatorRiderProfileId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.driverProfileId, driverProfileId) ||
                other.driverProfileId == driverProfileId) &&
            (identical(other.sharedRideId, sharedRideId) ||
                other.sharedRideId == sharedRideId) &&
            (identical(other.driverAcceptedAt, driverAcceptedAt) ||
                other.driverAcceptedAt == driverAcceptedAt) &&
            (identical(other.creatorPickupLat, creatorPickupLat) ||
                other.creatorPickupLat == creatorPickupLat) &&
            (identical(other.creatorPickupLng, creatorPickupLng) ||
                other.creatorPickupLng == creatorPickupLng) &&
            (identical(other.meetingLat, meetingLat) ||
                other.meetingLat == meetingLat) &&
            (identical(other.meetingLng, meetingLng) ||
                other.meetingLng == meetingLng) &&
            (identical(other.meetingAddress, meetingAddress) ||
                other.meetingAddress == meetingAddress) &&
            (identical(other.meetingPlaceName, meetingPlaceName) ||
                other.meetingPlaceName == meetingPlaceName) &&
            (identical(other.meetingPlaceProvider, meetingPlaceProvider) ||
                other.meetingPlaceProvider == meetingPlaceProvider) &&
            (identical(other.destinationLat, destinationLat) ||
                other.destinationLat == destinationLat) &&
            (identical(other.destinationLng, destinationLng) ||
                other.destinationLng == destinationLng) &&
            (identical(other.destinationAddress, destinationAddress) ||
                other.destinationAddress == destinationAddress) &&
            (identical(other.maxPassengers, maxPassengers) ||
                other.maxPassengers == maxPassengers) &&
            (identical(other.currentPassengers, currentPassengers) ||
                other.currentPassengers == currentPassengers) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.distanceToMeetingKm, distanceToMeetingKm) ||
                other.distanceToMeetingKm == distanceToMeetingKm) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    creatorRiderProfileId,
    status,
    driverProfileId,
    sharedRideId,
    driverAcceptedAt,
    creatorPickupLat,
    creatorPickupLng,
    meetingLat,
    meetingLng,
    meetingAddress,
    meetingPlaceName,
    meetingPlaceProvider,
    destinationLat,
    destinationLng,
    destinationAddress,
    maxPassengers,
    currentPassengers,
    departureTime,
    expiresAt,
    createdAt,
    distanceToMeetingKm,
    const DeepCollectionEquality().hash(_members),
  ]);

  /// Create a copy of PassengerPoolModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassengerPoolModelImplCopyWith<_$PassengerPoolModelImpl> get copyWith =>
      __$$PassengerPoolModelImplCopyWithImpl<_$PassengerPoolModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PassengerPoolModelImplToJson(this);
  }
}

abstract class _PassengerPoolModel implements PassengerPoolModel {
  const factory _PassengerPoolModel({
    @JsonKey(fromJson: parseIntFromJson) final int? id,
    @JsonKey(fromJson: parseIntFromJson) final int? creatorRiderProfileId,
    final String? status,
    @JsonKey(fromJson: parseIntFromJson) final int? driverProfileId,
    @JsonKey(fromJson: parseIntFromJson) final int? sharedRideId,
    final String? driverAcceptedAt,
    @JsonKey(fromJson: parseDoubleFromJson) final double? creatorPickupLat,
    @JsonKey(fromJson: parseDoubleFromJson) final double? creatorPickupLng,
    @JsonKey(fromJson: parseDoubleFromJson) final double? meetingLat,
    @JsonKey(fromJson: parseDoubleFromJson) final double? meetingLng,
    final String? meetingAddress,
    final String? meetingPlaceName,
    final String? meetingPlaceProvider,
    @JsonKey(fromJson: parseDoubleFromJson) final double? destinationLat,
    @JsonKey(fromJson: parseDoubleFromJson) final double? destinationLng,
    final String? destinationAddress,
    @JsonKey(fromJson: parseIntFromJson) final int? maxPassengers,
    @JsonKey(fromJson: parseIntFromJson) final int? currentPassengers,
    final String? departureTime,
    final String? expiresAt,
    final String? createdAt,
    @JsonKey(fromJson: parseDoubleFromJson) final double? distanceToMeetingKm,
    final List<PassengerPoolMemberModel>? members,
  }) = _$PassengerPoolModelImpl;

  factory _PassengerPoolModel.fromJson(Map<String, dynamic> json) =
      _$PassengerPoolModelImpl.fromJson;

  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get id;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get creatorRiderProfileId;
  @override
  String? get status;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get driverProfileId;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get sharedRideId;
  @override
  String? get driverAcceptedAt;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get creatorPickupLat;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get creatorPickupLng;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get meetingLat;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get meetingLng;
  @override
  String? get meetingAddress;
  @override
  String? get meetingPlaceName;
  @override
  String? get meetingPlaceProvider;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get destinationLat;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get destinationLng;
  @override
  String? get destinationAddress;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get maxPassengers;
  @override
  @JsonKey(fromJson: parseIntFromJson)
  int? get currentPassengers;
  @override
  String? get departureTime;
  @override
  String? get expiresAt;
  @override
  String? get createdAt;
  @override
  @JsonKey(fromJson: parseDoubleFromJson)
  double? get distanceToMeetingKm;
  @override
  List<PassengerPoolMemberModel>? get members;

  /// Create a copy of PassengerPoolModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassengerPoolModelImplCopyWith<_$PassengerPoolModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
