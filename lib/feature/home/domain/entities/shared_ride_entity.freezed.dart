// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_ride_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SharedRidePassengerEntity {
  int get id => throw _privateConstructorUsedError;
  int get sharedRideId => throw _privateConstructorUsedError;
  int get riderProfileId => throw _privateConstructorUsedError;
  String get riderName => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get paymentStatus => throw _privateConstructorUsedError;
  int get seatsNeeded => throw _privateConstructorUsedError;
  int get activeSeats => throw _privateConstructorUsedError;
  num get totalPaidFare => throw _privateConstructorUsedError;
  num get finalDistanceKm => throw _privateConstructorUsedError;
  num get finalDurationSec => throw _privateConstructorUsedError;
  num get finalFare => throw _privateConstructorUsedError;
  DateTime? get joinedAt => throw _privateConstructorUsedError;
  DateTime? get checkedInAt => throw _privateConstructorUsedError;
  DateTime? get onBoardAt => throw _privateConstructorUsedError;
  DateTime? get droppedOffAt => throw _privateConstructorUsedError;
  DateTime? get canceledAt => throw _privateConstructorUsedError;
  DateTime? get removedAt => throw _privateConstructorUsedError;
  String get removeReason => throw _privateConstructorUsedError;

  /// Create a copy of SharedRidePassengerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SharedRidePassengerEntityCopyWith<SharedRidePassengerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedRidePassengerEntityCopyWith<$Res> {
  factory $SharedRidePassengerEntityCopyWith(
    SharedRidePassengerEntity value,
    $Res Function(SharedRidePassengerEntity) then,
  ) = _$SharedRidePassengerEntityCopyWithImpl<$Res, SharedRidePassengerEntity>;
  @useResult
  $Res call({
    int id,
    int sharedRideId,
    int riderProfileId,
    String riderName,
    String status,
    String paymentStatus,
    int seatsNeeded,
    int activeSeats,
    num totalPaidFare,
    num finalDistanceKm,
    num finalDurationSec,
    num finalFare,
    DateTime? joinedAt,
    DateTime? checkedInAt,
    DateTime? onBoardAt,
    DateTime? droppedOffAt,
    DateTime? canceledAt,
    DateTime? removedAt,
    String removeReason,
  });
}

/// @nodoc
class _$SharedRidePassengerEntityCopyWithImpl<
  $Res,
  $Val extends SharedRidePassengerEntity
>
    implements $SharedRidePassengerEntityCopyWith<$Res> {
  _$SharedRidePassengerEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SharedRidePassengerEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sharedRideId = null,
    Object? riderProfileId = null,
    Object? riderName = null,
    Object? status = null,
    Object? paymentStatus = null,
    Object? seatsNeeded = null,
    Object? activeSeats = null,
    Object? totalPaidFare = null,
    Object? finalDistanceKm = null,
    Object? finalDurationSec = null,
    Object? finalFare = null,
    Object? joinedAt = freezed,
    Object? checkedInAt = freezed,
    Object? onBoardAt = freezed,
    Object? droppedOffAt = freezed,
    Object? canceledAt = freezed,
    Object? removedAt = freezed,
    Object? removeReason = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            sharedRideId: null == sharedRideId
                ? _value.sharedRideId
                : sharedRideId // ignore: cast_nullable_to_non_nullable
                      as int,
            riderProfileId: null == riderProfileId
                ? _value.riderProfileId
                : riderProfileId // ignore: cast_nullable_to_non_nullable
                      as int,
            riderName: null == riderName
                ? _value.riderName
                : riderName // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            paymentStatus: null == paymentStatus
                ? _value.paymentStatus
                : paymentStatus // ignore: cast_nullable_to_non_nullable
                      as String,
            seatsNeeded: null == seatsNeeded
                ? _value.seatsNeeded
                : seatsNeeded // ignore: cast_nullable_to_non_nullable
                      as int,
            activeSeats: null == activeSeats
                ? _value.activeSeats
                : activeSeats // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPaidFare: null == totalPaidFare
                ? _value.totalPaidFare
                : totalPaidFare // ignore: cast_nullable_to_non_nullable
                      as num,
            finalDistanceKm: null == finalDistanceKm
                ? _value.finalDistanceKm
                : finalDistanceKm // ignore: cast_nullable_to_non_nullable
                      as num,
            finalDurationSec: null == finalDurationSec
                ? _value.finalDurationSec
                : finalDurationSec // ignore: cast_nullable_to_non_nullable
                      as num,
            finalFare: null == finalFare
                ? _value.finalFare
                : finalFare // ignore: cast_nullable_to_non_nullable
                      as num,
            joinedAt: freezed == joinedAt
                ? _value.joinedAt
                : joinedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            checkedInAt: freezed == checkedInAt
                ? _value.checkedInAt
                : checkedInAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            onBoardAt: freezed == onBoardAt
                ? _value.onBoardAt
                : onBoardAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            droppedOffAt: freezed == droppedOffAt
                ? _value.droppedOffAt
                : droppedOffAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            canceledAt: freezed == canceledAt
                ? _value.canceledAt
                : canceledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            removedAt: freezed == removedAt
                ? _value.removedAt
                : removedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            removeReason: null == removeReason
                ? _value.removeReason
                : removeReason // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SharedRidePassengerEntityImplCopyWith<$Res>
    implements $SharedRidePassengerEntityCopyWith<$Res> {
  factory _$$SharedRidePassengerEntityImplCopyWith(
    _$SharedRidePassengerEntityImpl value,
    $Res Function(_$SharedRidePassengerEntityImpl) then,
  ) = __$$SharedRidePassengerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int sharedRideId,
    int riderProfileId,
    String riderName,
    String status,
    String paymentStatus,
    int seatsNeeded,
    int activeSeats,
    num totalPaidFare,
    num finalDistanceKm,
    num finalDurationSec,
    num finalFare,
    DateTime? joinedAt,
    DateTime? checkedInAt,
    DateTime? onBoardAt,
    DateTime? droppedOffAt,
    DateTime? canceledAt,
    DateTime? removedAt,
    String removeReason,
  });
}

/// @nodoc
class __$$SharedRidePassengerEntityImplCopyWithImpl<$Res>
    extends
        _$SharedRidePassengerEntityCopyWithImpl<
          $Res,
          _$SharedRidePassengerEntityImpl
        >
    implements _$$SharedRidePassengerEntityImplCopyWith<$Res> {
  __$$SharedRidePassengerEntityImplCopyWithImpl(
    _$SharedRidePassengerEntityImpl _value,
    $Res Function(_$SharedRidePassengerEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SharedRidePassengerEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sharedRideId = null,
    Object? riderProfileId = null,
    Object? riderName = null,
    Object? status = null,
    Object? paymentStatus = null,
    Object? seatsNeeded = null,
    Object? activeSeats = null,
    Object? totalPaidFare = null,
    Object? finalDistanceKm = null,
    Object? finalDurationSec = null,
    Object? finalFare = null,
    Object? joinedAt = freezed,
    Object? checkedInAt = freezed,
    Object? onBoardAt = freezed,
    Object? droppedOffAt = freezed,
    Object? canceledAt = freezed,
    Object? removedAt = freezed,
    Object? removeReason = null,
  }) {
    return _then(
      _$SharedRidePassengerEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        sharedRideId: null == sharedRideId
            ? _value.sharedRideId
            : sharedRideId // ignore: cast_nullable_to_non_nullable
                  as int,
        riderProfileId: null == riderProfileId
            ? _value.riderProfileId
            : riderProfileId // ignore: cast_nullable_to_non_nullable
                  as int,
        riderName: null == riderName
            ? _value.riderName
            : riderName // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        paymentStatus: null == paymentStatus
            ? _value.paymentStatus
            : paymentStatus // ignore: cast_nullable_to_non_nullable
                  as String,
        seatsNeeded: null == seatsNeeded
            ? _value.seatsNeeded
            : seatsNeeded // ignore: cast_nullable_to_non_nullable
                  as int,
        activeSeats: null == activeSeats
            ? _value.activeSeats
            : activeSeats // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPaidFare: null == totalPaidFare
            ? _value.totalPaidFare
            : totalPaidFare // ignore: cast_nullable_to_non_nullable
                  as num,
        finalDistanceKm: null == finalDistanceKm
            ? _value.finalDistanceKm
            : finalDistanceKm // ignore: cast_nullable_to_non_nullable
                  as num,
        finalDurationSec: null == finalDurationSec
            ? _value.finalDurationSec
            : finalDurationSec // ignore: cast_nullable_to_non_nullable
                  as num,
        finalFare: null == finalFare
            ? _value.finalFare
            : finalFare // ignore: cast_nullable_to_non_nullable
                  as num,
        joinedAt: freezed == joinedAt
            ? _value.joinedAt
            : joinedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        checkedInAt: freezed == checkedInAt
            ? _value.checkedInAt
            : checkedInAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        onBoardAt: freezed == onBoardAt
            ? _value.onBoardAt
            : onBoardAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        droppedOffAt: freezed == droppedOffAt
            ? _value.droppedOffAt
            : droppedOffAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        canceledAt: freezed == canceledAt
            ? _value.canceledAt
            : canceledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        removedAt: freezed == removedAt
            ? _value.removedAt
            : removedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        removeReason: null == removeReason
            ? _value.removeReason
            : removeReason // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SharedRidePassengerEntityImpl implements _SharedRidePassengerEntity {
  const _$SharedRidePassengerEntityImpl({
    required this.id,
    required this.sharedRideId,
    required this.riderProfileId,
    required this.riderName,
    required this.status,
    required this.paymentStatus,
    required this.seatsNeeded,
    required this.activeSeats,
    required this.totalPaidFare,
    required this.finalDistanceKm,
    required this.finalDurationSec,
    required this.finalFare,
    required this.joinedAt,
    required this.checkedInAt,
    required this.onBoardAt,
    required this.droppedOffAt,
    required this.canceledAt,
    required this.removedAt,
    required this.removeReason,
  });

  @override
  final int id;
  @override
  final int sharedRideId;
  @override
  final int riderProfileId;
  @override
  final String riderName;
  @override
  final String status;
  @override
  final String paymentStatus;
  @override
  final int seatsNeeded;
  @override
  final int activeSeats;
  @override
  final num totalPaidFare;
  @override
  final num finalDistanceKm;
  @override
  final num finalDurationSec;
  @override
  final num finalFare;
  @override
  final DateTime? joinedAt;
  @override
  final DateTime? checkedInAt;
  @override
  final DateTime? onBoardAt;
  @override
  final DateTime? droppedOffAt;
  @override
  final DateTime? canceledAt;
  @override
  final DateTime? removedAt;
  @override
  final String removeReason;

  @override
  String toString() {
    return 'SharedRidePassengerEntity(id: $id, sharedRideId: $sharedRideId, riderProfileId: $riderProfileId, riderName: $riderName, status: $status, paymentStatus: $paymentStatus, seatsNeeded: $seatsNeeded, activeSeats: $activeSeats, totalPaidFare: $totalPaidFare, finalDistanceKm: $finalDistanceKm, finalDurationSec: $finalDurationSec, finalFare: $finalFare, joinedAt: $joinedAt, checkedInAt: $checkedInAt, onBoardAt: $onBoardAt, droppedOffAt: $droppedOffAt, canceledAt: $canceledAt, removedAt: $removedAt, removeReason: $removeReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedRidePassengerEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sharedRideId, sharedRideId) ||
                other.sharedRideId == sharedRideId) &&
            (identical(other.riderProfileId, riderProfileId) ||
                other.riderProfileId == riderProfileId) &&
            (identical(other.riderName, riderName) ||
                other.riderName == riderName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.seatsNeeded, seatsNeeded) ||
                other.seatsNeeded == seatsNeeded) &&
            (identical(other.activeSeats, activeSeats) ||
                other.activeSeats == activeSeats) &&
            (identical(other.totalPaidFare, totalPaidFare) ||
                other.totalPaidFare == totalPaidFare) &&
            (identical(other.finalDistanceKm, finalDistanceKm) ||
                other.finalDistanceKm == finalDistanceKm) &&
            (identical(other.finalDurationSec, finalDurationSec) ||
                other.finalDurationSec == finalDurationSec) &&
            (identical(other.finalFare, finalFare) ||
                other.finalFare == finalFare) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.checkedInAt, checkedInAt) ||
                other.checkedInAt == checkedInAt) &&
            (identical(other.onBoardAt, onBoardAt) ||
                other.onBoardAt == onBoardAt) &&
            (identical(other.droppedOffAt, droppedOffAt) ||
                other.droppedOffAt == droppedOffAt) &&
            (identical(other.canceledAt, canceledAt) ||
                other.canceledAt == canceledAt) &&
            (identical(other.removedAt, removedAt) ||
                other.removedAt == removedAt) &&
            (identical(other.removeReason, removeReason) ||
                other.removeReason == removeReason));
  }

  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    sharedRideId,
    riderProfileId,
    riderName,
    status,
    paymentStatus,
    seatsNeeded,
    activeSeats,
    totalPaidFare,
    finalDistanceKm,
    finalDurationSec,
    finalFare,
    joinedAt,
    checkedInAt,
    onBoardAt,
    droppedOffAt,
    canceledAt,
    removedAt,
    removeReason,
  ]);

  /// Create a copy of SharedRidePassengerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedRidePassengerEntityImplCopyWith<_$SharedRidePassengerEntityImpl>
  get copyWith =>
      __$$SharedRidePassengerEntityImplCopyWithImpl<
        _$SharedRidePassengerEntityImpl
      >(this, _$identity);
}

abstract class _SharedRidePassengerEntity implements SharedRidePassengerEntity {
  const factory _SharedRidePassengerEntity({
    required final int id,
    required final int sharedRideId,
    required final int riderProfileId,
    required final String riderName,
    required final String status,
    required final String paymentStatus,
    required final int seatsNeeded,
    required final int activeSeats,
    required final num totalPaidFare,
    required final num finalDistanceKm,
    required final num finalDurationSec,
    required final num finalFare,
    required final DateTime? joinedAt,
    required final DateTime? checkedInAt,
    required final DateTime? onBoardAt,
    required final DateTime? droppedOffAt,
    required final DateTime? canceledAt,
    required final DateTime? removedAt,
    required final String removeReason,
  }) = _$SharedRidePassengerEntityImpl;

  @override
  int get id;
  @override
  int get sharedRideId;
  @override
  int get riderProfileId;
  @override
  String get riderName;
  @override
  String get status;
  @override
  String get paymentStatus;
  @override
  int get seatsNeeded;
  @override
  int get activeSeats;
  @override
  num get totalPaidFare;
  @override
  num get finalDistanceKm;
  @override
  num get finalDurationSec;
  @override
  num get finalFare;
  @override
  DateTime? get joinedAt;
  @override
  DateTime? get checkedInAt;
  @override
  DateTime? get onBoardAt;
  @override
  DateTime? get droppedOffAt;
  @override
  DateTime? get canceledAt;
  @override
  DateTime? get removedAt;
  @override
  String get removeReason;

  /// Create a copy of SharedRidePassengerEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharedRidePassengerEntityImplCopyWith<_$SharedRidePassengerEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SharedRideEntity {
  int get id => throw _privateConstructorUsedError;
  int get driverProfileId => throw _privateConstructorUsedError;
  int get vehicleId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get endedBy => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  double get originLat => throw _privateConstructorUsedError;
  double get originLng => throw _privateConstructorUsedError;
  String get originAddress => throw _privateConstructorUsedError;
  double get destLat => throw _privateConstructorUsedError;
  double get destLng => throw _privateConstructorUsedError;
  String get destAddress => throw _privateConstructorUsedError;
  DateTime? get departureTime => throw _privateConstructorUsedError;
  int get maxPassengers => throw _privateConstructorUsedError;
  int get occupiedSeats => throw _privateConstructorUsedError;
  num get totalDistanceKm => throw _privateConstructorUsedError;
  num get totalDurationSec => throw _privateConstructorUsedError;
  RouteGeometryEntity? get routeGeometry => throw _privateConstructorUsedError;
  num get actualDistanceKm => throw _privateConstructorUsedError;
  num get actualDurationSec => throw _privateConstructorUsedError;
  RouteGeometryEntity? get actualRouteGeometry =>
      throw _privateConstructorUsedError;
  num get baseTripFare => throw _privateConstructorUsedError;
  num get remainingTripCost => throw _privateConstructorUsedError;
  int get occupiedSeatsAtStart => throw _privateConstructorUsedError;
  num get fullRouteSeatFare => throw _privateConstructorUsedError;
  num get minimumSeatFare => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  DateTime? get canceledAt => throw _privateConstructorUsedError;
  String get cancellationReason => throw _privateConstructorUsedError;
  String get endType => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  List<SharedRidePassengerEntity> get passengers =>
      throw _privateConstructorUsedError;

  /// Create a copy of SharedRideEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SharedRideEntityCopyWith<SharedRideEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedRideEntityCopyWith<$Res> {
  factory $SharedRideEntityCopyWith(
    SharedRideEntity value,
    $Res Function(SharedRideEntity) then,
  ) = _$SharedRideEntityCopyWithImpl<$Res, SharedRideEntity>;
  @useResult
  $Res call({
    int id,
    int driverProfileId,
    int vehicleId,
    String status,
    String endedBy,
    String notes,
    double originLat,
    double originLng,
    String originAddress,
    double destLat,
    double destLng,
    String destAddress,
    DateTime? departureTime,
    int maxPassengers,
    int occupiedSeats,
    num totalDistanceKm,
    num totalDurationSec,
    RouteGeometryEntity? routeGeometry,
    num actualDistanceKm,
    num actualDurationSec,
    RouteGeometryEntity? actualRouteGeometry,
    num baseTripFare,
    num remainingTripCost,
    int occupiedSeatsAtStart,
    num fullRouteSeatFare,
    num minimumSeatFare,
    DateTime? startedAt,
    DateTime? completedAt,
    DateTime? canceledAt,
    String cancellationReason,
    String endType,
    DateTime? createdAt,
    List<SharedRidePassengerEntity> passengers,
  });

  $RouteGeometryEntityCopyWith<$Res>? get routeGeometry;
  $RouteGeometryEntityCopyWith<$Res>? get actualRouteGeometry;
}

/// @nodoc
class _$SharedRideEntityCopyWithImpl<$Res, $Val extends SharedRideEntity>
    implements $SharedRideEntityCopyWith<$Res> {
  _$SharedRideEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SharedRideEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? driverProfileId = null,
    Object? vehicleId = null,
    Object? status = null,
    Object? endedBy = null,
    Object? notes = null,
    Object? originLat = null,
    Object? originLng = null,
    Object? originAddress = null,
    Object? destLat = null,
    Object? destLng = null,
    Object? destAddress = null,
    Object? departureTime = freezed,
    Object? maxPassengers = null,
    Object? occupiedSeats = null,
    Object? totalDistanceKm = null,
    Object? totalDurationSec = null,
    Object? routeGeometry = freezed,
    Object? actualDistanceKm = null,
    Object? actualDurationSec = null,
    Object? actualRouteGeometry = freezed,
    Object? baseTripFare = null,
    Object? remainingTripCost = null,
    Object? occupiedSeatsAtStart = null,
    Object? fullRouteSeatFare = null,
    Object? minimumSeatFare = null,
    Object? startedAt = freezed,
    Object? completedAt = freezed,
    Object? canceledAt = freezed,
    Object? cancellationReason = null,
    Object? endType = null,
    Object? createdAt = freezed,
    Object? passengers = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            driverProfileId: null == driverProfileId
                ? _value.driverProfileId
                : driverProfileId // ignore: cast_nullable_to_non_nullable
                      as int,
            vehicleId: null == vehicleId
                ? _value.vehicleId
                : vehicleId // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            endedBy: null == endedBy
                ? _value.endedBy
                : endedBy // ignore: cast_nullable_to_non_nullable
                      as String,
            notes: null == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String,
            originLat: null == originLat
                ? _value.originLat
                : originLat // ignore: cast_nullable_to_non_nullable
                      as double,
            originLng: null == originLng
                ? _value.originLng
                : originLng // ignore: cast_nullable_to_non_nullable
                      as double,
            originAddress: null == originAddress
                ? _value.originAddress
                : originAddress // ignore: cast_nullable_to_non_nullable
                      as String,
            destLat: null == destLat
                ? _value.destLat
                : destLat // ignore: cast_nullable_to_non_nullable
                      as double,
            destLng: null == destLng
                ? _value.destLng
                : destLng // ignore: cast_nullable_to_non_nullable
                      as double,
            destAddress: null == destAddress
                ? _value.destAddress
                : destAddress // ignore: cast_nullable_to_non_nullable
                      as String,
            departureTime: freezed == departureTime
                ? _value.departureTime
                : departureTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            maxPassengers: null == maxPassengers
                ? _value.maxPassengers
                : maxPassengers // ignore: cast_nullable_to_non_nullable
                      as int,
            occupiedSeats: null == occupiedSeats
                ? _value.occupiedSeats
                : occupiedSeats // ignore: cast_nullable_to_non_nullable
                      as int,
            totalDistanceKm: null == totalDistanceKm
                ? _value.totalDistanceKm
                : totalDistanceKm // ignore: cast_nullable_to_non_nullable
                      as num,
            totalDurationSec: null == totalDurationSec
                ? _value.totalDurationSec
                : totalDurationSec // ignore: cast_nullable_to_non_nullable
                      as num,
            routeGeometry: freezed == routeGeometry
                ? _value.routeGeometry
                : routeGeometry // ignore: cast_nullable_to_non_nullable
                      as RouteGeometryEntity?,
            actualDistanceKm: null == actualDistanceKm
                ? _value.actualDistanceKm
                : actualDistanceKm // ignore: cast_nullable_to_non_nullable
                      as num,
            actualDurationSec: null == actualDurationSec
                ? _value.actualDurationSec
                : actualDurationSec // ignore: cast_nullable_to_non_nullable
                      as num,
            actualRouteGeometry: freezed == actualRouteGeometry
                ? _value.actualRouteGeometry
                : actualRouteGeometry // ignore: cast_nullable_to_non_nullable
                      as RouteGeometryEntity?,
            baseTripFare: null == baseTripFare
                ? _value.baseTripFare
                : baseTripFare // ignore: cast_nullable_to_non_nullable
                      as num,
            remainingTripCost: null == remainingTripCost
                ? _value.remainingTripCost
                : remainingTripCost // ignore: cast_nullable_to_non_nullable
                      as num,
            occupiedSeatsAtStart: null == occupiedSeatsAtStart
                ? _value.occupiedSeatsAtStart
                : occupiedSeatsAtStart // ignore: cast_nullable_to_non_nullable
                      as int,
            fullRouteSeatFare: null == fullRouteSeatFare
                ? _value.fullRouteSeatFare
                : fullRouteSeatFare // ignore: cast_nullable_to_non_nullable
                      as num,
            minimumSeatFare: null == minimumSeatFare
                ? _value.minimumSeatFare
                : minimumSeatFare // ignore: cast_nullable_to_non_nullable
                      as num,
            startedAt: freezed == startedAt
                ? _value.startedAt
                : startedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            canceledAt: freezed == canceledAt
                ? _value.canceledAt
                : canceledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            cancellationReason: null == cancellationReason
                ? _value.cancellationReason
                : cancellationReason // ignore: cast_nullable_to_non_nullable
                      as String,
            endType: null == endType
                ? _value.endType
                : endType // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            passengers: null == passengers
                ? _value.passengers
                : passengers // ignore: cast_nullable_to_non_nullable
                      as List<SharedRidePassengerEntity>,
          )
          as $Val,
    );
  }

  /// Create a copy of SharedRideEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RouteGeometryEntityCopyWith<$Res>? get routeGeometry {
    if (_value.routeGeometry == null) {
      return null;
    }

    return $RouteGeometryEntityCopyWith<$Res>(_value.routeGeometry!, (value) {
      return _then(_value.copyWith(routeGeometry: value) as $Val);
    });
  }

  /// Create a copy of SharedRideEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RouteGeometryEntityCopyWith<$Res>? get actualRouteGeometry {
    if (_value.actualRouteGeometry == null) {
      return null;
    }

    return $RouteGeometryEntityCopyWith<$Res>(_value.actualRouteGeometry!, (
      value,
    ) {
      return _then(_value.copyWith(actualRouteGeometry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SharedRideEntityImplCopyWith<$Res>
    implements $SharedRideEntityCopyWith<$Res> {
  factory _$$SharedRideEntityImplCopyWith(
    _$SharedRideEntityImpl value,
    $Res Function(_$SharedRideEntityImpl) then,
  ) = __$$SharedRideEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int driverProfileId,
    int vehicleId,
    String status,
    String endedBy,
    String notes,
    double originLat,
    double originLng,
    String originAddress,
    double destLat,
    double destLng,
    String destAddress,
    DateTime? departureTime,
    int maxPassengers,
    int occupiedSeats,
    num totalDistanceKm,
    num totalDurationSec,
    RouteGeometryEntity? routeGeometry,
    num actualDistanceKm,
    num actualDurationSec,
    RouteGeometryEntity? actualRouteGeometry,
    num baseTripFare,
    num remainingTripCost,
    int occupiedSeatsAtStart,
    num fullRouteSeatFare,
    num minimumSeatFare,
    DateTime? startedAt,
    DateTime? completedAt,
    DateTime? canceledAt,
    String cancellationReason,
    String endType,
    DateTime? createdAt,
    List<SharedRidePassengerEntity> passengers,
  });

  @override
  $RouteGeometryEntityCopyWith<$Res>? get routeGeometry;
  @override
  $RouteGeometryEntityCopyWith<$Res>? get actualRouteGeometry;
}

/// @nodoc
class __$$SharedRideEntityImplCopyWithImpl<$Res>
    extends _$SharedRideEntityCopyWithImpl<$Res, _$SharedRideEntityImpl>
    implements _$$SharedRideEntityImplCopyWith<$Res> {
  __$$SharedRideEntityImplCopyWithImpl(
    _$SharedRideEntityImpl _value,
    $Res Function(_$SharedRideEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SharedRideEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? driverProfileId = null,
    Object? vehicleId = null,
    Object? status = null,
    Object? endedBy = null,
    Object? notes = null,
    Object? originLat = null,
    Object? originLng = null,
    Object? originAddress = null,
    Object? destLat = null,
    Object? destLng = null,
    Object? destAddress = null,
    Object? departureTime = freezed,
    Object? maxPassengers = null,
    Object? occupiedSeats = null,
    Object? totalDistanceKm = null,
    Object? totalDurationSec = null,
    Object? routeGeometry = freezed,
    Object? actualDistanceKm = null,
    Object? actualDurationSec = null,
    Object? actualRouteGeometry = freezed,
    Object? baseTripFare = null,
    Object? remainingTripCost = null,
    Object? occupiedSeatsAtStart = null,
    Object? fullRouteSeatFare = null,
    Object? minimumSeatFare = null,
    Object? startedAt = freezed,
    Object? completedAt = freezed,
    Object? canceledAt = freezed,
    Object? cancellationReason = null,
    Object? endType = null,
    Object? createdAt = freezed,
    Object? passengers = null,
  }) {
    return _then(
      _$SharedRideEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        driverProfileId: null == driverProfileId
            ? _value.driverProfileId
            : driverProfileId // ignore: cast_nullable_to_non_nullable
                  as int,
        vehicleId: null == vehicleId
            ? _value.vehicleId
            : vehicleId // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        endedBy: null == endedBy
            ? _value.endedBy
            : endedBy // ignore: cast_nullable_to_non_nullable
                  as String,
        notes: null == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String,
        originLat: null == originLat
            ? _value.originLat
            : originLat // ignore: cast_nullable_to_non_nullable
                  as double,
        originLng: null == originLng
            ? _value.originLng
            : originLng // ignore: cast_nullable_to_non_nullable
                  as double,
        originAddress: null == originAddress
            ? _value.originAddress
            : originAddress // ignore: cast_nullable_to_non_nullable
                  as String,
        destLat: null == destLat
            ? _value.destLat
            : destLat // ignore: cast_nullable_to_non_nullable
                  as double,
        destLng: null == destLng
            ? _value.destLng
            : destLng // ignore: cast_nullable_to_non_nullable
                  as double,
        destAddress: null == destAddress
            ? _value.destAddress
            : destAddress // ignore: cast_nullable_to_non_nullable
                  as String,
        departureTime: freezed == departureTime
            ? _value.departureTime
            : departureTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        maxPassengers: null == maxPassengers
            ? _value.maxPassengers
            : maxPassengers // ignore: cast_nullable_to_non_nullable
                  as int,
        occupiedSeats: null == occupiedSeats
            ? _value.occupiedSeats
            : occupiedSeats // ignore: cast_nullable_to_non_nullable
                  as int,
        totalDistanceKm: null == totalDistanceKm
            ? _value.totalDistanceKm
            : totalDistanceKm // ignore: cast_nullable_to_non_nullable
                  as num,
        totalDurationSec: null == totalDurationSec
            ? _value.totalDurationSec
            : totalDurationSec // ignore: cast_nullable_to_non_nullable
                  as num,
        routeGeometry: freezed == routeGeometry
            ? _value.routeGeometry
            : routeGeometry // ignore: cast_nullable_to_non_nullable
                  as RouteGeometryEntity?,
        actualDistanceKm: null == actualDistanceKm
            ? _value.actualDistanceKm
            : actualDistanceKm // ignore: cast_nullable_to_non_nullable
                  as num,
        actualDurationSec: null == actualDurationSec
            ? _value.actualDurationSec
            : actualDurationSec // ignore: cast_nullable_to_non_nullable
                  as num,
        actualRouteGeometry: freezed == actualRouteGeometry
            ? _value.actualRouteGeometry
            : actualRouteGeometry // ignore: cast_nullable_to_non_nullable
                  as RouteGeometryEntity?,
        baseTripFare: null == baseTripFare
            ? _value.baseTripFare
            : baseTripFare // ignore: cast_nullable_to_non_nullable
                  as num,
        remainingTripCost: null == remainingTripCost
            ? _value.remainingTripCost
            : remainingTripCost // ignore: cast_nullable_to_non_nullable
                  as num,
        occupiedSeatsAtStart: null == occupiedSeatsAtStart
            ? _value.occupiedSeatsAtStart
            : occupiedSeatsAtStart // ignore: cast_nullable_to_non_nullable
                  as int,
        fullRouteSeatFare: null == fullRouteSeatFare
            ? _value.fullRouteSeatFare
            : fullRouteSeatFare // ignore: cast_nullable_to_non_nullable
                  as num,
        minimumSeatFare: null == minimumSeatFare
            ? _value.minimumSeatFare
            : minimumSeatFare // ignore: cast_nullable_to_non_nullable
                  as num,
        startedAt: freezed == startedAt
            ? _value.startedAt
            : startedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        canceledAt: freezed == canceledAt
            ? _value.canceledAt
            : canceledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        cancellationReason: null == cancellationReason
            ? _value.cancellationReason
            : cancellationReason // ignore: cast_nullable_to_non_nullable
                  as String,
        endType: null == endType
            ? _value.endType
            : endType // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        passengers: null == passengers
            ? _value._passengers
            : passengers // ignore: cast_nullable_to_non_nullable
                  as List<SharedRidePassengerEntity>,
      ),
    );
  }
}

/// @nodoc

class _$SharedRideEntityImpl implements _SharedRideEntity {
  const _$SharedRideEntityImpl({
    required this.id,
    required this.driverProfileId,
    required this.vehicleId,
    required this.status,
    required this.endedBy,
    required this.notes,
    required this.originLat,
    required this.originLng,
    required this.originAddress,
    required this.destLat,
    required this.destLng,
    required this.destAddress,
    required this.departureTime,
    required this.maxPassengers,
    required this.occupiedSeats,
    required this.totalDistanceKm,
    required this.totalDurationSec,
    required this.routeGeometry,
    required this.actualDistanceKm,
    required this.actualDurationSec,
    required this.actualRouteGeometry,
    required this.baseTripFare,
    required this.remainingTripCost,
    required this.occupiedSeatsAtStart,
    required this.fullRouteSeatFare,
    required this.minimumSeatFare,
    required this.startedAt,
    required this.completedAt,
    required this.canceledAt,
    required this.cancellationReason,
    required this.endType,
    required this.createdAt,
    required final List<SharedRidePassengerEntity> passengers,
  }) : _passengers = passengers;

  @override
  final int id;
  @override
  final int driverProfileId;
  @override
  final int vehicleId;
  @override
  final String status;
  @override
  final String endedBy;
  @override
  final String notes;
  @override
  final double originLat;
  @override
  final double originLng;
  @override
  final String originAddress;
  @override
  final double destLat;
  @override
  final double destLng;
  @override
  final String destAddress;
  @override
  final DateTime? departureTime;
  @override
  final int maxPassengers;
  @override
  final int occupiedSeats;
  @override
  final num totalDistanceKm;
  @override
  final num totalDurationSec;
  @override
  final RouteGeometryEntity? routeGeometry;
  @override
  final num actualDistanceKm;
  @override
  final num actualDurationSec;
  @override
  final RouteGeometryEntity? actualRouteGeometry;
  @override
  final num baseTripFare;
  @override
  final num remainingTripCost;
  @override
  final int occupiedSeatsAtStart;
  @override
  final num fullRouteSeatFare;
  @override
  final num minimumSeatFare;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? completedAt;
  @override
  final DateTime? canceledAt;
  @override
  final String cancellationReason;
  @override
  final String endType;
  @override
  final DateTime? createdAt;
  final List<SharedRidePassengerEntity> _passengers;
  @override
  List<SharedRidePassengerEntity> get passengers {
    if (_passengers is EqualUnmodifiableListView) return _passengers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_passengers);
  }

  @override
  String toString() {
    return 'SharedRideEntity(id: $id, driverProfileId: $driverProfileId, vehicleId: $vehicleId, status: $status, endedBy: $endedBy, notes: $notes, originLat: $originLat, originLng: $originLng, originAddress: $originAddress, destLat: $destLat, destLng: $destLng, destAddress: $destAddress, departureTime: $departureTime, maxPassengers: $maxPassengers, occupiedSeats: $occupiedSeats, totalDistanceKm: $totalDistanceKm, totalDurationSec: $totalDurationSec, routeGeometry: $routeGeometry, actualDistanceKm: $actualDistanceKm, actualDurationSec: $actualDurationSec, actualRouteGeometry: $actualRouteGeometry, baseTripFare: $baseTripFare, remainingTripCost: $remainingTripCost, occupiedSeatsAtStart: $occupiedSeatsAtStart, fullRouteSeatFare: $fullRouteSeatFare, minimumSeatFare: $minimumSeatFare, startedAt: $startedAt, completedAt: $completedAt, canceledAt: $canceledAt, cancellationReason: $cancellationReason, endType: $endType, createdAt: $createdAt, passengers: $passengers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedRideEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.driverProfileId, driverProfileId) ||
                other.driverProfileId == driverProfileId) &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.endedBy, endedBy) || other.endedBy == endedBy) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.originLat, originLat) ||
                other.originLat == originLat) &&
            (identical(other.originLng, originLng) ||
                other.originLng == originLng) &&
            (identical(other.originAddress, originAddress) ||
                other.originAddress == originAddress) &&
            (identical(other.destLat, destLat) || other.destLat == destLat) &&
            (identical(other.destLng, destLng) || other.destLng == destLng) &&
            (identical(other.destAddress, destAddress) ||
                other.destAddress == destAddress) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.maxPassengers, maxPassengers) ||
                other.maxPassengers == maxPassengers) &&
            (identical(other.occupiedSeats, occupiedSeats) ||
                other.occupiedSeats == occupiedSeats) &&
            (identical(other.totalDistanceKm, totalDistanceKm) ||
                other.totalDistanceKm == totalDistanceKm) &&
            (identical(other.totalDurationSec, totalDurationSec) ||
                other.totalDurationSec == totalDurationSec) &&
            (identical(other.routeGeometry, routeGeometry) ||
                other.routeGeometry == routeGeometry) &&
            (identical(other.actualDistanceKm, actualDistanceKm) ||
                other.actualDistanceKm == actualDistanceKm) &&
            (identical(other.actualDurationSec, actualDurationSec) ||
                other.actualDurationSec == actualDurationSec) &&
            (identical(other.actualRouteGeometry, actualRouteGeometry) ||
                other.actualRouteGeometry == actualRouteGeometry) &&
            (identical(other.baseTripFare, baseTripFare) ||
                other.baseTripFare == baseTripFare) &&
            (identical(other.remainingTripCost, remainingTripCost) ||
                other.remainingTripCost == remainingTripCost) &&
            (identical(other.occupiedSeatsAtStart, occupiedSeatsAtStart) ||
                other.occupiedSeatsAtStart == occupiedSeatsAtStart) &&
            (identical(other.fullRouteSeatFare, fullRouteSeatFare) ||
                other.fullRouteSeatFare == fullRouteSeatFare) &&
            (identical(other.minimumSeatFare, minimumSeatFare) ||
                other.minimumSeatFare == minimumSeatFare) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.canceledAt, canceledAt) ||
                other.canceledAt == canceledAt) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.endType, endType) || other.endType == endType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(
              other._passengers,
              _passengers,
            ));
  }

  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    driverProfileId,
    vehicleId,
    status,
    endedBy,
    notes,
    originLat,
    originLng,
    originAddress,
    destLat,
    destLng,
    destAddress,
    departureTime,
    maxPassengers,
    occupiedSeats,
    totalDistanceKm,
    totalDurationSec,
    routeGeometry,
    actualDistanceKm,
    actualDurationSec,
    actualRouteGeometry,
    baseTripFare,
    remainingTripCost,
    occupiedSeatsAtStart,
    fullRouteSeatFare,
    minimumSeatFare,
    startedAt,
    completedAt,
    canceledAt,
    cancellationReason,
    endType,
    createdAt,
    const DeepCollectionEquality().hash(_passengers),
  ]);

  /// Create a copy of SharedRideEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedRideEntityImplCopyWith<_$SharedRideEntityImpl> get copyWith =>
      __$$SharedRideEntityImplCopyWithImpl<_$SharedRideEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _SharedRideEntity implements SharedRideEntity {
  const factory _SharedRideEntity({
    required final int id,
    required final int driverProfileId,
    required final int vehicleId,
    required final String status,
    required final String endedBy,
    required final String notes,
    required final double originLat,
    required final double originLng,
    required final String originAddress,
    required final double destLat,
    required final double destLng,
    required final String destAddress,
    required final DateTime? departureTime,
    required final int maxPassengers,
    required final int occupiedSeats,
    required final num totalDistanceKm,
    required final num totalDurationSec,
    required final RouteGeometryEntity? routeGeometry,
    required final num actualDistanceKm,
    required final num actualDurationSec,
    required final RouteGeometryEntity? actualRouteGeometry,
    required final num baseTripFare,
    required final num remainingTripCost,
    required final int occupiedSeatsAtStart,
    required final num fullRouteSeatFare,
    required final num minimumSeatFare,
    required final DateTime? startedAt,
    required final DateTime? completedAt,
    required final DateTime? canceledAt,
    required final String cancellationReason,
    required final String endType,
    required final DateTime? createdAt,
    required final List<SharedRidePassengerEntity> passengers,
  }) = _$SharedRideEntityImpl;

  @override
  int get id;
  @override
  int get driverProfileId;
  @override
  int get vehicleId;
  @override
  String get status;
  @override
  String get endedBy;
  @override
  String get notes;
  @override
  double get originLat;
  @override
  double get originLng;
  @override
  String get originAddress;
  @override
  double get destLat;
  @override
  double get destLng;
  @override
  String get destAddress;
  @override
  DateTime? get departureTime;
  @override
  int get maxPassengers;
  @override
  int get occupiedSeats;
  @override
  num get totalDistanceKm;
  @override
  num get totalDurationSec;
  @override
  RouteGeometryEntity? get routeGeometry;
  @override
  num get actualDistanceKm;
  @override
  num get actualDurationSec;
  @override
  RouteGeometryEntity? get actualRouteGeometry;
  @override
  num get baseTripFare;
  @override
  num get remainingTripCost;
  @override
  int get occupiedSeatsAtStart;
  @override
  num get fullRouteSeatFare;
  @override
  num get minimumSeatFare;
  @override
  DateTime? get startedAt;
  @override
  DateTime? get completedAt;
  @override
  DateTime? get canceledAt;
  @override
  String get cancellationReason;
  @override
  String get endType;
  @override
  DateTime? get createdAt;
  @override
  List<SharedRidePassengerEntity> get passengers;

  /// Create a copy of SharedRideEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharedRideEntityImplCopyWith<_$SharedRideEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
