// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passenger_pool_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PassengerPoolMemberEntity {
  int get id => throw _privateConstructorUsedError;
  int get roomId => throw _privateConstructorUsedError;
  int get riderProfileId => throw _privateConstructorUsedError;
  int get seatsNeeded => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  double get pickupLat => throw _privateConstructorUsedError;
  double get pickupLng => throw _privateConstructorUsedError;
  DateTime? get joinedAt => throw _privateConstructorUsedError;
  DateTime? get leftAt => throw _privateConstructorUsedError;

  /// Create a copy of PassengerPoolMemberEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PassengerPoolMemberEntityCopyWith<PassengerPoolMemberEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassengerPoolMemberEntityCopyWith<$Res> {
  factory $PassengerPoolMemberEntityCopyWith(
    PassengerPoolMemberEntity value,
    $Res Function(PassengerPoolMemberEntity) then,
  ) = _$PassengerPoolMemberEntityCopyWithImpl<$Res, PassengerPoolMemberEntity>;
  @useResult
  $Res call({
    int id,
    int roomId,
    int riderProfileId,
    int seatsNeeded,
    String status,
    double pickupLat,
    double pickupLng,
    DateTime? joinedAt,
    DateTime? leftAt,
  });
}

/// @nodoc
class _$PassengerPoolMemberEntityCopyWithImpl<
  $Res,
  $Val extends PassengerPoolMemberEntity
>
    implements $PassengerPoolMemberEntityCopyWith<$Res> {
  _$PassengerPoolMemberEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PassengerPoolMemberEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomId = null,
    Object? riderProfileId = null,
    Object? seatsNeeded = null,
    Object? status = null,
    Object? pickupLat = null,
    Object? pickupLng = null,
    Object? joinedAt = freezed,
    Object? leftAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            roomId: null == roomId
                ? _value.roomId
                : roomId // ignore: cast_nullable_to_non_nullable
                      as int,
            riderProfileId: null == riderProfileId
                ? _value.riderProfileId
                : riderProfileId // ignore: cast_nullable_to_non_nullable
                      as int,
            seatsNeeded: null == seatsNeeded
                ? _value.seatsNeeded
                : seatsNeeded // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            pickupLat: null == pickupLat
                ? _value.pickupLat
                : pickupLat // ignore: cast_nullable_to_non_nullable
                      as double,
            pickupLng: null == pickupLng
                ? _value.pickupLng
                : pickupLng // ignore: cast_nullable_to_non_nullable
                      as double,
            joinedAt: freezed == joinedAt
                ? _value.joinedAt
                : joinedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            leftAt: freezed == leftAt
                ? _value.leftAt
                : leftAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PassengerPoolMemberEntityImplCopyWith<$Res>
    implements $PassengerPoolMemberEntityCopyWith<$Res> {
  factory _$$PassengerPoolMemberEntityImplCopyWith(
    _$PassengerPoolMemberEntityImpl value,
    $Res Function(_$PassengerPoolMemberEntityImpl) then,
  ) = __$$PassengerPoolMemberEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int roomId,
    int riderProfileId,
    int seatsNeeded,
    String status,
    double pickupLat,
    double pickupLng,
    DateTime? joinedAt,
    DateTime? leftAt,
  });
}

/// @nodoc
class __$$PassengerPoolMemberEntityImplCopyWithImpl<$Res>
    extends
        _$PassengerPoolMemberEntityCopyWithImpl<
          $Res,
          _$PassengerPoolMemberEntityImpl
        >
    implements _$$PassengerPoolMemberEntityImplCopyWith<$Res> {
  __$$PassengerPoolMemberEntityImplCopyWithImpl(
    _$PassengerPoolMemberEntityImpl _value,
    $Res Function(_$PassengerPoolMemberEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PassengerPoolMemberEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomId = null,
    Object? riderProfileId = null,
    Object? seatsNeeded = null,
    Object? status = null,
    Object? pickupLat = null,
    Object? pickupLng = null,
    Object? joinedAt = freezed,
    Object? leftAt = freezed,
  }) {
    return _then(
      _$PassengerPoolMemberEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        roomId: null == roomId
            ? _value.roomId
            : roomId // ignore: cast_nullable_to_non_nullable
                  as int,
        riderProfileId: null == riderProfileId
            ? _value.riderProfileId
            : riderProfileId // ignore: cast_nullable_to_non_nullable
                  as int,
        seatsNeeded: null == seatsNeeded
            ? _value.seatsNeeded
            : seatsNeeded // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        pickupLat: null == pickupLat
            ? _value.pickupLat
            : pickupLat // ignore: cast_nullable_to_non_nullable
                  as double,
        pickupLng: null == pickupLng
            ? _value.pickupLng
            : pickupLng // ignore: cast_nullable_to_non_nullable
                  as double,
        joinedAt: freezed == joinedAt
            ? _value.joinedAt
            : joinedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        leftAt: freezed == leftAt
            ? _value.leftAt
            : leftAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$PassengerPoolMemberEntityImpl implements _PassengerPoolMemberEntity {
  const _$PassengerPoolMemberEntityImpl({
    required this.id,
    required this.roomId,
    required this.riderProfileId,
    required this.seatsNeeded,
    required this.status,
    required this.pickupLat,
    required this.pickupLng,
    required this.joinedAt,
    required this.leftAt,
  });

  @override
  final int id;
  @override
  final int roomId;
  @override
  final int riderProfileId;
  @override
  final int seatsNeeded;
  @override
  final String status;
  @override
  final double pickupLat;
  @override
  final double pickupLng;
  @override
  final DateTime? joinedAt;
  @override
  final DateTime? leftAt;

  @override
  String toString() {
    return 'PassengerPoolMemberEntity(id: $id, roomId: $roomId, riderProfileId: $riderProfileId, seatsNeeded: $seatsNeeded, status: $status, pickupLat: $pickupLat, pickupLng: $pickupLng, joinedAt: $joinedAt, leftAt: $leftAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassengerPoolMemberEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
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

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    roomId,
    riderProfileId,
    seatsNeeded,
    status,
    pickupLat,
    pickupLng,
    joinedAt,
    leftAt,
  );

  /// Create a copy of PassengerPoolMemberEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassengerPoolMemberEntityImplCopyWith<_$PassengerPoolMemberEntityImpl>
  get copyWith =>
      __$$PassengerPoolMemberEntityImplCopyWithImpl<
        _$PassengerPoolMemberEntityImpl
      >(this, _$identity);
}

abstract class _PassengerPoolMemberEntity implements PassengerPoolMemberEntity {
  const factory _PassengerPoolMemberEntity({
    required final int id,
    required final int roomId,
    required final int riderProfileId,
    required final int seatsNeeded,
    required final String status,
    required final double pickupLat,
    required final double pickupLng,
    required final DateTime? joinedAt,
    required final DateTime? leftAt,
  }) = _$PassengerPoolMemberEntityImpl;

  @override
  int get id;
  @override
  int get roomId;
  @override
  int get riderProfileId;
  @override
  int get seatsNeeded;
  @override
  String get status;
  @override
  double get pickupLat;
  @override
  double get pickupLng;
  @override
  DateTime? get joinedAt;
  @override
  DateTime? get leftAt;

  /// Create a copy of PassengerPoolMemberEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassengerPoolMemberEntityImplCopyWith<_$PassengerPoolMemberEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PassengerPoolEntity {
  int get id => throw _privateConstructorUsedError;
  int get creatorRiderProfileId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int? get driverProfileId => throw _privateConstructorUsedError;
  int? get sharedRideId => throw _privateConstructorUsedError;
  DateTime? get driverAcceptedAt => throw _privateConstructorUsedError;
  double get meetingLat => throw _privateConstructorUsedError;
  double get meetingLng => throw _privateConstructorUsedError;
  String get meetingAddress => throw _privateConstructorUsedError;
  String? get meetingPlaceName => throw _privateConstructorUsedError;
  String? get meetingPlaceProvider => throw _privateConstructorUsedError;
  double get destinationLat => throw _privateConstructorUsedError;
  double get destinationLng => throw _privateConstructorUsedError;
  String get destinationAddress => throw _privateConstructorUsedError;
  int get maxPassengers => throw _privateConstructorUsedError;
  int get currentPassengers => throw _privateConstructorUsedError;
  DateTime? get departureTime => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  List<PassengerPoolMemberEntity> get members =>
      throw _privateConstructorUsedError;

  /// Create a copy of PassengerPoolEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PassengerPoolEntityCopyWith<PassengerPoolEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassengerPoolEntityCopyWith<$Res> {
  factory $PassengerPoolEntityCopyWith(
    PassengerPoolEntity value,
    $Res Function(PassengerPoolEntity) then,
  ) = _$PassengerPoolEntityCopyWithImpl<$Res, PassengerPoolEntity>;
  @useResult
  $Res call({
    int id,
    int creatorRiderProfileId,
    String status,
    int? driverProfileId,
    int? sharedRideId,
    DateTime? driverAcceptedAt,
    double meetingLat,
    double meetingLng,
    String meetingAddress,
    String? meetingPlaceName,
    String? meetingPlaceProvider,
    double destinationLat,
    double destinationLng,
    String destinationAddress,
    int maxPassengers,
    int currentPassengers,
    DateTime? departureTime,
    DateTime? expiresAt,
    DateTime? createdAt,
    List<PassengerPoolMemberEntity> members,
  });
}

/// @nodoc
class _$PassengerPoolEntityCopyWithImpl<$Res, $Val extends PassengerPoolEntity>
    implements $PassengerPoolEntityCopyWith<$Res> {
  _$PassengerPoolEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PassengerPoolEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creatorRiderProfileId = null,
    Object? status = null,
    Object? driverProfileId = freezed,
    Object? sharedRideId = freezed,
    Object? driverAcceptedAt = freezed,
    Object? meetingLat = null,
    Object? meetingLng = null,
    Object? meetingAddress = null,
    Object? meetingPlaceName = freezed,
    Object? meetingPlaceProvider = freezed,
    Object? destinationLat = null,
    Object? destinationLng = null,
    Object? destinationAddress = null,
    Object? maxPassengers = null,
    Object? currentPassengers = null,
    Object? departureTime = freezed,
    Object? expiresAt = freezed,
    Object? createdAt = freezed,
    Object? members = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            creatorRiderProfileId: null == creatorRiderProfileId
                ? _value.creatorRiderProfileId
                : creatorRiderProfileId // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
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
                      as DateTime?,
            meetingLat: null == meetingLat
                ? _value.meetingLat
                : meetingLat // ignore: cast_nullable_to_non_nullable
                      as double,
            meetingLng: null == meetingLng
                ? _value.meetingLng
                : meetingLng // ignore: cast_nullable_to_non_nullable
                      as double,
            meetingAddress: null == meetingAddress
                ? _value.meetingAddress
                : meetingAddress // ignore: cast_nullable_to_non_nullable
                      as String,
            meetingPlaceName: freezed == meetingPlaceName
                ? _value.meetingPlaceName
                : meetingPlaceName // ignore: cast_nullable_to_non_nullable
                      as String?,
            meetingPlaceProvider: freezed == meetingPlaceProvider
                ? _value.meetingPlaceProvider
                : meetingPlaceProvider // ignore: cast_nullable_to_non_nullable
                      as String?,
            destinationLat: null == destinationLat
                ? _value.destinationLat
                : destinationLat // ignore: cast_nullable_to_non_nullable
                      as double,
            destinationLng: null == destinationLng
                ? _value.destinationLng
                : destinationLng // ignore: cast_nullable_to_non_nullable
                      as double,
            destinationAddress: null == destinationAddress
                ? _value.destinationAddress
                : destinationAddress // ignore: cast_nullable_to_non_nullable
                      as String,
            maxPassengers: null == maxPassengers
                ? _value.maxPassengers
                : maxPassengers // ignore: cast_nullable_to_non_nullable
                      as int,
            currentPassengers: null == currentPassengers
                ? _value.currentPassengers
                : currentPassengers // ignore: cast_nullable_to_non_nullable
                      as int,
            departureTime: freezed == departureTime
                ? _value.departureTime
                : departureTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            expiresAt: freezed == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            members: null == members
                ? _value.members
                : members // ignore: cast_nullable_to_non_nullable
                      as List<PassengerPoolMemberEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PassengerPoolEntityImplCopyWith<$Res>
    implements $PassengerPoolEntityCopyWith<$Res> {
  factory _$$PassengerPoolEntityImplCopyWith(
    _$PassengerPoolEntityImpl value,
    $Res Function(_$PassengerPoolEntityImpl) then,
  ) = __$$PassengerPoolEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int creatorRiderProfileId,
    String status,
    int? driverProfileId,
    int? sharedRideId,
    DateTime? driverAcceptedAt,
    double meetingLat,
    double meetingLng,
    String meetingAddress,
    String? meetingPlaceName,
    String? meetingPlaceProvider,
    double destinationLat,
    double destinationLng,
    String destinationAddress,
    int maxPassengers,
    int currentPassengers,
    DateTime? departureTime,
    DateTime? expiresAt,
    DateTime? createdAt,
    List<PassengerPoolMemberEntity> members,
  });
}

/// @nodoc
class __$$PassengerPoolEntityImplCopyWithImpl<$Res>
    extends _$PassengerPoolEntityCopyWithImpl<$Res, _$PassengerPoolEntityImpl>
    implements _$$PassengerPoolEntityImplCopyWith<$Res> {
  __$$PassengerPoolEntityImplCopyWithImpl(
    _$PassengerPoolEntityImpl _value,
    $Res Function(_$PassengerPoolEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PassengerPoolEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creatorRiderProfileId = null,
    Object? status = null,
    Object? driverProfileId = freezed,
    Object? sharedRideId = freezed,
    Object? driverAcceptedAt = freezed,
    Object? meetingLat = null,
    Object? meetingLng = null,
    Object? meetingAddress = null,
    Object? meetingPlaceName = freezed,
    Object? meetingPlaceProvider = freezed,
    Object? destinationLat = null,
    Object? destinationLng = null,
    Object? destinationAddress = null,
    Object? maxPassengers = null,
    Object? currentPassengers = null,
    Object? departureTime = freezed,
    Object? expiresAt = freezed,
    Object? createdAt = freezed,
    Object? members = null,
  }) {
    return _then(
      _$PassengerPoolEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        creatorRiderProfileId: null == creatorRiderProfileId
            ? _value.creatorRiderProfileId
            : creatorRiderProfileId // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
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
                  as DateTime?,
        meetingLat: null == meetingLat
            ? _value.meetingLat
            : meetingLat // ignore: cast_nullable_to_non_nullable
                  as double,
        meetingLng: null == meetingLng
            ? _value.meetingLng
            : meetingLng // ignore: cast_nullable_to_non_nullable
                  as double,
        meetingAddress: null == meetingAddress
            ? _value.meetingAddress
            : meetingAddress // ignore: cast_nullable_to_non_nullable
                  as String,
        meetingPlaceName: freezed == meetingPlaceName
            ? _value.meetingPlaceName
            : meetingPlaceName // ignore: cast_nullable_to_non_nullable
                  as String?,
        meetingPlaceProvider: freezed == meetingPlaceProvider
            ? _value.meetingPlaceProvider
            : meetingPlaceProvider // ignore: cast_nullable_to_non_nullable
                  as String?,
        destinationLat: null == destinationLat
            ? _value.destinationLat
            : destinationLat // ignore: cast_nullable_to_non_nullable
                  as double,
        destinationLng: null == destinationLng
            ? _value.destinationLng
            : destinationLng // ignore: cast_nullable_to_non_nullable
                  as double,
        destinationAddress: null == destinationAddress
            ? _value.destinationAddress
            : destinationAddress // ignore: cast_nullable_to_non_nullable
                  as String,
        maxPassengers: null == maxPassengers
            ? _value.maxPassengers
            : maxPassengers // ignore: cast_nullable_to_non_nullable
                  as int,
        currentPassengers: null == currentPassengers
            ? _value.currentPassengers
            : currentPassengers // ignore: cast_nullable_to_non_nullable
                  as int,
        departureTime: freezed == departureTime
            ? _value.departureTime
            : departureTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        expiresAt: freezed == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        members: null == members
            ? _value._members
            : members // ignore: cast_nullable_to_non_nullable
                  as List<PassengerPoolMemberEntity>,
      ),
    );
  }
}

/// @nodoc

class _$PassengerPoolEntityImpl implements _PassengerPoolEntity {
  const _$PassengerPoolEntityImpl({
    required this.id,
    required this.creatorRiderProfileId,
    required this.status,
    required this.driverProfileId,
    required this.sharedRideId,
    required this.driverAcceptedAt,
    required this.meetingLat,
    required this.meetingLng,
    required this.meetingAddress,
    required this.meetingPlaceName,
    required this.meetingPlaceProvider,
    required this.destinationLat,
    required this.destinationLng,
    required this.destinationAddress,
    required this.maxPassengers,
    required this.currentPassengers,
    required this.departureTime,
    required this.expiresAt,
    required this.createdAt,
    required final List<PassengerPoolMemberEntity> members,
  }) : _members = members;

  @override
  final int id;
  @override
  final int creatorRiderProfileId;
  @override
  final String status;
  @override
  final int? driverProfileId;
  @override
  final int? sharedRideId;
  @override
  final DateTime? driverAcceptedAt;
  @override
  final double meetingLat;
  @override
  final double meetingLng;
  @override
  final String meetingAddress;
  @override
  final String? meetingPlaceName;
  @override
  final String? meetingPlaceProvider;
  @override
  final double destinationLat;
  @override
  final double destinationLng;
  @override
  final String destinationAddress;
  @override
  final int maxPassengers;
  @override
  final int currentPassengers;
  @override
  final DateTime? departureTime;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? createdAt;
  final List<PassengerPoolMemberEntity> _members;
  @override
  List<PassengerPoolMemberEntity> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'PassengerPoolEntity(id: $id, creatorRiderProfileId: $creatorRiderProfileId, status: $status, driverProfileId: $driverProfileId, sharedRideId: $sharedRideId, driverAcceptedAt: $driverAcceptedAt, meetingLat: $meetingLat, meetingLng: $meetingLng, meetingAddress: $meetingAddress, meetingPlaceName: $meetingPlaceName, meetingPlaceProvider: $meetingPlaceProvider, destinationLat: $destinationLat, destinationLng: $destinationLng, destinationAddress: $destinationAddress, maxPassengers: $maxPassengers, currentPassengers: $currentPassengers, departureTime: $departureTime, expiresAt: $expiresAt, createdAt: $createdAt, members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassengerPoolEntityImpl &&
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
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    creatorRiderProfileId,
    status,
    driverProfileId,
    sharedRideId,
    driverAcceptedAt,
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
    const DeepCollectionEquality().hash(_members),
  ]);

  /// Create a copy of PassengerPoolEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassengerPoolEntityImplCopyWith<_$PassengerPoolEntityImpl> get copyWith =>
      __$$PassengerPoolEntityImplCopyWithImpl<_$PassengerPoolEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _PassengerPoolEntity implements PassengerPoolEntity {
  const factory _PassengerPoolEntity({
    required final int id,
    required final int creatorRiderProfileId,
    required final String status,
    required final int? driverProfileId,
    required final int? sharedRideId,
    required final DateTime? driverAcceptedAt,
    required final double meetingLat,
    required final double meetingLng,
    required final String meetingAddress,
    required final String? meetingPlaceName,
    required final String? meetingPlaceProvider,
    required final double destinationLat,
    required final double destinationLng,
    required final String destinationAddress,
    required final int maxPassengers,
    required final int currentPassengers,
    required final DateTime? departureTime,
    required final DateTime? expiresAt,
    required final DateTime? createdAt,
    required final List<PassengerPoolMemberEntity> members,
  }) = _$PassengerPoolEntityImpl;

  @override
  int get id;
  @override
  int get creatorRiderProfileId;
  @override
  String get status;
  @override
  int? get driverProfileId;
  @override
  int? get sharedRideId;
  @override
  DateTime? get driverAcceptedAt;
  @override
  double get meetingLat;
  @override
  double get meetingLng;
  @override
  String get meetingAddress;
  @override
  String? get meetingPlaceName;
  @override
  String? get meetingPlaceProvider;
  @override
  double get destinationLat;
  @override
  double get destinationLng;
  @override
  String get destinationAddress;
  @override
  int get maxPassengers;
  @override
  int get currentPassengers;
  @override
  DateTime? get departureTime;
  @override
  DateTime? get expiresAt;
  @override
  DateTime? get createdAt;
  @override
  List<PassengerPoolMemberEntity> get members;

  /// Create a copy of PassengerPoolEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassengerPoolEntityImplCopyWith<_$PassengerPoolEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
