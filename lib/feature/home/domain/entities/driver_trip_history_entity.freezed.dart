// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_trip_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DriverTripHistoryEntity {
  int? get id => throw _privateConstructorUsedError;
  int? get rideRequestId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get pickupAddress => throw _privateConstructorUsedError;
  double? get pickupLat => throw _privateConstructorUsedError;
  double? get pickupLng => throw _privateConstructorUsedError;
  String? get destAddress => throw _privateConstructorUsedError;
  double? get destLat => throw _privateConstructorUsedError;
  double? get destLng => throw _privateConstructorUsedError;
  num? get fareTotal => throw _privateConstructorUsedError;
  num? get finalFare => throw _privateConstructorUsedError;
  num? get discountAmount => throw _privateConstructorUsedError;
  double? get distanceKm => throw _privateConstructorUsedError;
  int? get durationSec => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get acceptedAt => throw _privateConstructorUsedError;
  String? get startedAt => throw _privateConstructorUsedError;
  String? get completedAt => throw _privateConstructorUsedError;
  String? get canceledAt => throw _privateConstructorUsedError;
  String? get cancelledBy => throw _privateConstructorUsedError;
  TripUserEntity? get rider => throw _privateConstructorUsedError;
  TripUserEntity? get driver => throw _privateConstructorUsedError;
  TripVehicleEntity? get vehicle => throw _privateConstructorUsedError;
  TripRatingEntity? get myRating => throw _privateConstructorUsedError;
  TripRatingEntity? get receivedRating => throw _privateConstructorUsedError;
  List<TripRatingEntity>? get ratings => throw _privateConstructorUsedError;

  /// Create a copy of DriverTripHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverTripHistoryEntityCopyWith<DriverTripHistoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverTripHistoryEntityCopyWith<$Res> {
  factory $DriverTripHistoryEntityCopyWith(
    DriverTripHistoryEntity value,
    $Res Function(DriverTripHistoryEntity) then,
  ) = _$DriverTripHistoryEntityCopyWithImpl<$Res, DriverTripHistoryEntity>;
  @useResult
  $Res call({
    int? id,
    int? rideRequestId,
    String? status,
    String? pickupAddress,
    double? pickupLat,
    double? pickupLng,
    String? destAddress,
    double? destLat,
    double? destLng,
    num? fareTotal,
    num? finalFare,
    num? discountAmount,
    double? distanceKm,
    int? durationSec,
    String? createdAt,
    String? acceptedAt,
    String? startedAt,
    String? completedAt,
    String? canceledAt,
    String? cancelledBy,
    TripUserEntity? rider,
    TripUserEntity? driver,
    TripVehicleEntity? vehicle,
    TripRatingEntity? myRating,
    TripRatingEntity? receivedRating,
    List<TripRatingEntity>? ratings,
  });

  $TripUserEntityCopyWith<$Res>? get rider;
  $TripUserEntityCopyWith<$Res>? get driver;
  $TripVehicleEntityCopyWith<$Res>? get vehicle;
  $TripRatingEntityCopyWith<$Res>? get myRating;
  $TripRatingEntityCopyWith<$Res>? get receivedRating;
}

/// @nodoc
class _$DriverTripHistoryEntityCopyWithImpl<
  $Res,
  $Val extends DriverTripHistoryEntity
>
    implements $DriverTripHistoryEntityCopyWith<$Res> {
  _$DriverTripHistoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverTripHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rideRequestId = freezed,
    Object? status = freezed,
    Object? pickupAddress = freezed,
    Object? pickupLat = freezed,
    Object? pickupLng = freezed,
    Object? destAddress = freezed,
    Object? destLat = freezed,
    Object? destLng = freezed,
    Object? fareTotal = freezed,
    Object? finalFare = freezed,
    Object? discountAmount = freezed,
    Object? distanceKm = freezed,
    Object? durationSec = freezed,
    Object? createdAt = freezed,
    Object? acceptedAt = freezed,
    Object? startedAt = freezed,
    Object? completedAt = freezed,
    Object? canceledAt = freezed,
    Object? cancelledBy = freezed,
    Object? rider = freezed,
    Object? driver = freezed,
    Object? vehicle = freezed,
    Object? myRating = freezed,
    Object? receivedRating = freezed,
    Object? ratings = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            rideRequestId: freezed == rideRequestId
                ? _value.rideRequestId
                : rideRequestId // ignore: cast_nullable_to_non_nullable
                      as int?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            pickupAddress: freezed == pickupAddress
                ? _value.pickupAddress
                : pickupAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            pickupLat: freezed == pickupLat
                ? _value.pickupLat
                : pickupLat // ignore: cast_nullable_to_non_nullable
                      as double?,
            pickupLng: freezed == pickupLng
                ? _value.pickupLng
                : pickupLng // ignore: cast_nullable_to_non_nullable
                      as double?,
            destAddress: freezed == destAddress
                ? _value.destAddress
                : destAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            destLat: freezed == destLat
                ? _value.destLat
                : destLat // ignore: cast_nullable_to_non_nullable
                      as double?,
            destLng: freezed == destLng
                ? _value.destLng
                : destLng // ignore: cast_nullable_to_non_nullable
                      as double?,
            fareTotal: freezed == fareTotal
                ? _value.fareTotal
                : fareTotal // ignore: cast_nullable_to_non_nullable
                      as num?,
            finalFare: freezed == finalFare
                ? _value.finalFare
                : finalFare // ignore: cast_nullable_to_non_nullable
                      as num?,
            discountAmount: freezed == discountAmount
                ? _value.discountAmount
                : discountAmount // ignore: cast_nullable_to_non_nullable
                      as num?,
            distanceKm: freezed == distanceKm
                ? _value.distanceKm
                : distanceKm // ignore: cast_nullable_to_non_nullable
                      as double?,
            durationSec: freezed == durationSec
                ? _value.durationSec
                : durationSec // ignore: cast_nullable_to_non_nullable
                      as int?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            acceptedAt: freezed == acceptedAt
                ? _value.acceptedAt
                : acceptedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            startedAt: freezed == startedAt
                ? _value.startedAt
                : startedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            canceledAt: freezed == canceledAt
                ? _value.canceledAt
                : canceledAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            cancelledBy: freezed == cancelledBy
                ? _value.cancelledBy
                : cancelledBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            rider: freezed == rider
                ? _value.rider
                : rider // ignore: cast_nullable_to_non_nullable
                      as TripUserEntity?,
            driver: freezed == driver
                ? _value.driver
                : driver // ignore: cast_nullable_to_non_nullable
                      as TripUserEntity?,
            vehicle: freezed == vehicle
                ? _value.vehicle
                : vehicle // ignore: cast_nullable_to_non_nullable
                      as TripVehicleEntity?,
            myRating: freezed == myRating
                ? _value.myRating
                : myRating // ignore: cast_nullable_to_non_nullable
                      as TripRatingEntity?,
            receivedRating: freezed == receivedRating
                ? _value.receivedRating
                : receivedRating // ignore: cast_nullable_to_non_nullable
                      as TripRatingEntity?,
            ratings: freezed == ratings
                ? _value.ratings
                : ratings // ignore: cast_nullable_to_non_nullable
                      as List<TripRatingEntity>?,
          )
          as $Val,
    );
  }

  /// Create a copy of DriverTripHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripUserEntityCopyWith<$Res>? get rider {
    if (_value.rider == null) {
      return null;
    }

    return $TripUserEntityCopyWith<$Res>(_value.rider!, (value) {
      return _then(_value.copyWith(rider: value) as $Val);
    });
  }

  /// Create a copy of DriverTripHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripUserEntityCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $TripUserEntityCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }

  /// Create a copy of DriverTripHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripVehicleEntityCopyWith<$Res>? get vehicle {
    if (_value.vehicle == null) {
      return null;
    }

    return $TripVehicleEntityCopyWith<$Res>(_value.vehicle!, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }

  /// Create a copy of DriverTripHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripRatingEntityCopyWith<$Res>? get myRating {
    if (_value.myRating == null) {
      return null;
    }

    return $TripRatingEntityCopyWith<$Res>(_value.myRating!, (value) {
      return _then(_value.copyWith(myRating: value) as $Val);
    });
  }

  /// Create a copy of DriverTripHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripRatingEntityCopyWith<$Res>? get receivedRating {
    if (_value.receivedRating == null) {
      return null;
    }

    return $TripRatingEntityCopyWith<$Res>(_value.receivedRating!, (value) {
      return _then(_value.copyWith(receivedRating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverTripHistoryEntityImplCopyWith<$Res>
    implements $DriverTripHistoryEntityCopyWith<$Res> {
  factory _$$DriverTripHistoryEntityImplCopyWith(
    _$DriverTripHistoryEntityImpl value,
    $Res Function(_$DriverTripHistoryEntityImpl) then,
  ) = __$$DriverTripHistoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    int? rideRequestId,
    String? status,
    String? pickupAddress,
    double? pickupLat,
    double? pickupLng,
    String? destAddress,
    double? destLat,
    double? destLng,
    num? fareTotal,
    num? finalFare,
    num? discountAmount,
    double? distanceKm,
    int? durationSec,
    String? createdAt,
    String? acceptedAt,
    String? startedAt,
    String? completedAt,
    String? canceledAt,
    String? cancelledBy,
    TripUserEntity? rider,
    TripUserEntity? driver,
    TripVehicleEntity? vehicle,
    TripRatingEntity? myRating,
    TripRatingEntity? receivedRating,
    List<TripRatingEntity>? ratings,
  });

  @override
  $TripUserEntityCopyWith<$Res>? get rider;
  @override
  $TripUserEntityCopyWith<$Res>? get driver;
  @override
  $TripVehicleEntityCopyWith<$Res>? get vehicle;
  @override
  $TripRatingEntityCopyWith<$Res>? get myRating;
  @override
  $TripRatingEntityCopyWith<$Res>? get receivedRating;
}

/// @nodoc
class __$$DriverTripHistoryEntityImplCopyWithImpl<$Res>
    extends
        _$DriverTripHistoryEntityCopyWithImpl<
          $Res,
          _$DriverTripHistoryEntityImpl
        >
    implements _$$DriverTripHistoryEntityImplCopyWith<$Res> {
  __$$DriverTripHistoryEntityImplCopyWithImpl(
    _$DriverTripHistoryEntityImpl _value,
    $Res Function(_$DriverTripHistoryEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rideRequestId = freezed,
    Object? status = freezed,
    Object? pickupAddress = freezed,
    Object? pickupLat = freezed,
    Object? pickupLng = freezed,
    Object? destAddress = freezed,
    Object? destLat = freezed,
    Object? destLng = freezed,
    Object? fareTotal = freezed,
    Object? finalFare = freezed,
    Object? discountAmount = freezed,
    Object? distanceKm = freezed,
    Object? durationSec = freezed,
    Object? createdAt = freezed,
    Object? acceptedAt = freezed,
    Object? startedAt = freezed,
    Object? completedAt = freezed,
    Object? canceledAt = freezed,
    Object? cancelledBy = freezed,
    Object? rider = freezed,
    Object? driver = freezed,
    Object? vehicle = freezed,
    Object? myRating = freezed,
    Object? receivedRating = freezed,
    Object? ratings = freezed,
  }) {
    return _then(
      _$DriverTripHistoryEntityImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        rideRequestId: freezed == rideRequestId
            ? _value.rideRequestId
            : rideRequestId // ignore: cast_nullable_to_non_nullable
                  as int?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        pickupAddress: freezed == pickupAddress
            ? _value.pickupAddress
            : pickupAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        pickupLat: freezed == pickupLat
            ? _value.pickupLat
            : pickupLat // ignore: cast_nullable_to_non_nullable
                  as double?,
        pickupLng: freezed == pickupLng
            ? _value.pickupLng
            : pickupLng // ignore: cast_nullable_to_non_nullable
                  as double?,
        destAddress: freezed == destAddress
            ? _value.destAddress
            : destAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        destLat: freezed == destLat
            ? _value.destLat
            : destLat // ignore: cast_nullable_to_non_nullable
                  as double?,
        destLng: freezed == destLng
            ? _value.destLng
            : destLng // ignore: cast_nullable_to_non_nullable
                  as double?,
        fareTotal: freezed == fareTotal
            ? _value.fareTotal
            : fareTotal // ignore: cast_nullable_to_non_nullable
                  as num?,
        finalFare: freezed == finalFare
            ? _value.finalFare
            : finalFare // ignore: cast_nullable_to_non_nullable
                  as num?,
        discountAmount: freezed == discountAmount
            ? _value.discountAmount
            : discountAmount // ignore: cast_nullable_to_non_nullable
                  as num?,
        distanceKm: freezed == distanceKm
            ? _value.distanceKm
            : distanceKm // ignore: cast_nullable_to_non_nullable
                  as double?,
        durationSec: freezed == durationSec
            ? _value.durationSec
            : durationSec // ignore: cast_nullable_to_non_nullable
                  as int?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        acceptedAt: freezed == acceptedAt
            ? _value.acceptedAt
            : acceptedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        startedAt: freezed == startedAt
            ? _value.startedAt
            : startedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        canceledAt: freezed == canceledAt
            ? _value.canceledAt
            : canceledAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        cancelledBy: freezed == cancelledBy
            ? _value.cancelledBy
            : cancelledBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        rider: freezed == rider
            ? _value.rider
            : rider // ignore: cast_nullable_to_non_nullable
                  as TripUserEntity?,
        driver: freezed == driver
            ? _value.driver
            : driver // ignore: cast_nullable_to_non_nullable
                  as TripUserEntity?,
        vehicle: freezed == vehicle
            ? _value.vehicle
            : vehicle // ignore: cast_nullable_to_non_nullable
                  as TripVehicleEntity?,
        myRating: freezed == myRating
            ? _value.myRating
            : myRating // ignore: cast_nullable_to_non_nullable
                  as TripRatingEntity?,
        receivedRating: freezed == receivedRating
            ? _value.receivedRating
            : receivedRating // ignore: cast_nullable_to_non_nullable
                  as TripRatingEntity?,
        ratings: freezed == ratings
            ? _value._ratings
            : ratings // ignore: cast_nullable_to_non_nullable
                  as List<TripRatingEntity>?,
      ),
    );
  }
}

/// @nodoc

class _$DriverTripHistoryEntityImpl implements _DriverTripHistoryEntity {
  const _$DriverTripHistoryEntityImpl({
    this.id,
    this.rideRequestId,
    this.status,
    this.pickupAddress,
    this.pickupLat,
    this.pickupLng,
    this.destAddress,
    this.destLat,
    this.destLng,
    this.fareTotal,
    this.finalFare,
    this.discountAmount,
    this.distanceKm,
    this.durationSec,
    this.createdAt,
    this.acceptedAt,
    this.startedAt,
    this.completedAt,
    this.canceledAt,
    this.cancelledBy,
    this.rider,
    this.driver,
    this.vehicle,
    this.myRating,
    this.receivedRating,
    final List<TripRatingEntity>? ratings,
  }) : _ratings = ratings;

  @override
  final int? id;
  @override
  final int? rideRequestId;
  @override
  final String? status;
  @override
  final String? pickupAddress;
  @override
  final double? pickupLat;
  @override
  final double? pickupLng;
  @override
  final String? destAddress;
  @override
  final double? destLat;
  @override
  final double? destLng;
  @override
  final num? fareTotal;
  @override
  final num? finalFare;
  @override
  final num? discountAmount;
  @override
  final double? distanceKm;
  @override
  final int? durationSec;
  @override
  final String? createdAt;
  @override
  final String? acceptedAt;
  @override
  final String? startedAt;
  @override
  final String? completedAt;
  @override
  final String? canceledAt;
  @override
  final String? cancelledBy;
  @override
  final TripUserEntity? rider;
  @override
  final TripUserEntity? driver;
  @override
  final TripVehicleEntity? vehicle;
  @override
  final TripRatingEntity? myRating;
  @override
  final TripRatingEntity? receivedRating;
  final List<TripRatingEntity>? _ratings;
  @override
  List<TripRatingEntity>? get ratings {
    final value = _ratings;
    if (value == null) return null;
    if (_ratings is EqualUnmodifiableListView) return _ratings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DriverTripHistoryEntity(id: $id, rideRequestId: $rideRequestId, status: $status, pickupAddress: $pickupAddress, pickupLat: $pickupLat, pickupLng: $pickupLng, destAddress: $destAddress, destLat: $destLat, destLng: $destLng, fareTotal: $fareTotal, finalFare: $finalFare, discountAmount: $discountAmount, distanceKm: $distanceKm, durationSec: $durationSec, createdAt: $createdAt, acceptedAt: $acceptedAt, startedAt: $startedAt, completedAt: $completedAt, canceledAt: $canceledAt, cancelledBy: $cancelledBy, rider: $rider, driver: $driver, vehicle: $vehicle, myRating: $myRating, receivedRating: $receivedRating, ratings: $ratings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripHistoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rideRequestId, rideRequestId) ||
                other.rideRequestId == rideRequestId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.pickupLat, pickupLat) ||
                other.pickupLat == pickupLat) &&
            (identical(other.pickupLng, pickupLng) ||
                other.pickupLng == pickupLng) &&
            (identical(other.destAddress, destAddress) ||
                other.destAddress == destAddress) &&
            (identical(other.destLat, destLat) || other.destLat == destLat) &&
            (identical(other.destLng, destLng) || other.destLng == destLng) &&
            (identical(other.fareTotal, fareTotal) ||
                other.fareTotal == fareTotal) &&
            (identical(other.finalFare, finalFare) ||
                other.finalFare == finalFare) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            (identical(other.durationSec, durationSec) ||
                other.durationSec == durationSec) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.acceptedAt, acceptedAt) ||
                other.acceptedAt == acceptedAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.canceledAt, canceledAt) ||
                other.canceledAt == canceledAt) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy) &&
            (identical(other.rider, rider) || other.rider == rider) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            (identical(other.myRating, myRating) ||
                other.myRating == myRating) &&
            (identical(other.receivedRating, receivedRating) ||
                other.receivedRating == receivedRating) &&
            const DeepCollectionEquality().equals(other._ratings, _ratings));
  }

  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    rideRequestId,
    status,
    pickupAddress,
    pickupLat,
    pickupLng,
    destAddress,
    destLat,
    destLng,
    fareTotal,
    finalFare,
    discountAmount,
    distanceKm,
    durationSec,
    createdAt,
    acceptedAt,
    startedAt,
    completedAt,
    canceledAt,
    cancelledBy,
    rider,
    driver,
    vehicle,
    myRating,
    receivedRating,
    const DeepCollectionEquality().hash(_ratings),
  ]);

  /// Create a copy of DriverTripHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripHistoryEntityImplCopyWith<_$DriverTripHistoryEntityImpl>
  get copyWith =>
      __$$DriverTripHistoryEntityImplCopyWithImpl<
        _$DriverTripHistoryEntityImpl
      >(this, _$identity);
}

abstract class _DriverTripHistoryEntity implements DriverTripHistoryEntity {
  const factory _DriverTripHistoryEntity({
    final int? id,
    final int? rideRequestId,
    final String? status,
    final String? pickupAddress,
    final double? pickupLat,
    final double? pickupLng,
    final String? destAddress,
    final double? destLat,
    final double? destLng,
    final num? fareTotal,
    final num? finalFare,
    final num? discountAmount,
    final double? distanceKm,
    final int? durationSec,
    final String? createdAt,
    final String? acceptedAt,
    final String? startedAt,
    final String? completedAt,
    final String? canceledAt,
    final String? cancelledBy,
    final TripUserEntity? rider,
    final TripUserEntity? driver,
    final TripVehicleEntity? vehicle,
    final TripRatingEntity? myRating,
    final TripRatingEntity? receivedRating,
    final List<TripRatingEntity>? ratings,
  }) = _$DriverTripHistoryEntityImpl;

  @override
  int? get id;
  @override
  int? get rideRequestId;
  @override
  String? get status;
  @override
  String? get pickupAddress;
  @override
  double? get pickupLat;
  @override
  double? get pickupLng;
  @override
  String? get destAddress;
  @override
  double? get destLat;
  @override
  double? get destLng;
  @override
  num? get fareTotal;
  @override
  num? get finalFare;
  @override
  num? get discountAmount;
  @override
  double? get distanceKm;
  @override
  int? get durationSec;
  @override
  String? get createdAt;
  @override
  String? get acceptedAt;
  @override
  String? get startedAt;
  @override
  String? get completedAt;
  @override
  String? get canceledAt;
  @override
  String? get cancelledBy;
  @override
  TripUserEntity? get rider;
  @override
  TripUserEntity? get driver;
  @override
  TripVehicleEntity? get vehicle;
  @override
  TripRatingEntity? get myRating;
  @override
  TripRatingEntity? get receivedRating;
  @override
  List<TripRatingEntity>? get ratings;

  /// Create a copy of DriverTripHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripHistoryEntityImplCopyWith<_$DriverTripHistoryEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TripUserEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  double? get ratingAvg => throw _privateConstructorUsedError;

  /// Create a copy of TripUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripUserEntityCopyWith<TripUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripUserEntityCopyWith<$Res> {
  factory $TripUserEntityCopyWith(
    TripUserEntity value,
    $Res Function(TripUserEntity) then,
  ) = _$TripUserEntityCopyWithImpl<$Res, TripUserEntity>;
  @useResult
  $Res call({
    int? id,
    String? fullName,
    String? phoneNumber,
    double? ratingAvg,
  });
}

/// @nodoc
class _$TripUserEntityCopyWithImpl<$Res, $Val extends TripUserEntity>
    implements $TripUserEntityCopyWith<$Res> {
  _$TripUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? ratingAvg = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
            phoneNumber: freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            ratingAvg: freezed == ratingAvg
                ? _value.ratingAvg
                : ratingAvg // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TripUserEntityImplCopyWith<$Res>
    implements $TripUserEntityCopyWith<$Res> {
  factory _$$TripUserEntityImplCopyWith(
    _$TripUserEntityImpl value,
    $Res Function(_$TripUserEntityImpl) then,
  ) = __$$TripUserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String? fullName,
    String? phoneNumber,
    double? ratingAvg,
  });
}

/// @nodoc
class __$$TripUserEntityImplCopyWithImpl<$Res>
    extends _$TripUserEntityCopyWithImpl<$Res, _$TripUserEntityImpl>
    implements _$$TripUserEntityImplCopyWith<$Res> {
  __$$TripUserEntityImplCopyWithImpl(
    _$TripUserEntityImpl _value,
    $Res Function(_$TripUserEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? ratingAvg = freezed,
  }) {
    return _then(
      _$TripUserEntityImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        phoneNumber: freezed == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        ratingAvg: freezed == ratingAvg
            ? _value.ratingAvg
            : ratingAvg // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc

class _$TripUserEntityImpl implements _TripUserEntity {
  const _$TripUserEntityImpl({
    this.id,
    this.fullName,
    this.phoneNumber,
    this.ratingAvg,
  });

  @override
  final int? id;
  @override
  final String? fullName;
  @override
  final String? phoneNumber;
  @override
  final double? ratingAvg;

  @override
  String toString() {
    return 'TripUserEntity(id: $id, fullName: $fullName, phoneNumber: $phoneNumber, ratingAvg: $ratingAvg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripUserEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.ratingAvg, ratingAvg) ||
                other.ratingAvg == ratingAvg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fullName, phoneNumber, ratingAvg);

  /// Create a copy of TripUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripUserEntityImplCopyWith<_$TripUserEntityImpl> get copyWith =>
      __$$TripUserEntityImplCopyWithImpl<_$TripUserEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _TripUserEntity implements TripUserEntity {
  const factory _TripUserEntity({
    final int? id,
    final String? fullName,
    final String? phoneNumber,
    final double? ratingAvg,
  }) = _$TripUserEntityImpl;

  @override
  int? get id;
  @override
  String? get fullName;
  @override
  String? get phoneNumber;
  @override
  double? get ratingAvg;

  /// Create a copy of TripUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripUserEntityImplCopyWith<_$TripUserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TripVehicleEntity {
  String? get plateNumber => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  /// Create a copy of TripVehicleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripVehicleEntityCopyWith<TripVehicleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripVehicleEntityCopyWith<$Res> {
  factory $TripVehicleEntityCopyWith(
    TripVehicleEntity value,
    $Res Function(TripVehicleEntity) then,
  ) = _$TripVehicleEntityCopyWithImpl<$Res, TripVehicleEntity>;
  @useResult
  $Res call({String? plateNumber, String? model, String? color});
}

/// @nodoc
class _$TripVehicleEntityCopyWithImpl<$Res, $Val extends TripVehicleEntity>
    implements $TripVehicleEntityCopyWith<$Res> {
  _$TripVehicleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripVehicleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plateNumber = freezed,
    Object? model = freezed,
    Object? color = freezed,
  }) {
    return _then(
      _value.copyWith(
            plateNumber: freezed == plateNumber
                ? _value.plateNumber
                : plateNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            model: freezed == model
                ? _value.model
                : model // ignore: cast_nullable_to_non_nullable
                      as String?,
            color: freezed == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TripVehicleEntityImplCopyWith<$Res>
    implements $TripVehicleEntityCopyWith<$Res> {
  factory _$$TripVehicleEntityImplCopyWith(
    _$TripVehicleEntityImpl value,
    $Res Function(_$TripVehicleEntityImpl) then,
  ) = __$$TripVehicleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? plateNumber, String? model, String? color});
}

/// @nodoc
class __$$TripVehicleEntityImplCopyWithImpl<$Res>
    extends _$TripVehicleEntityCopyWithImpl<$Res, _$TripVehicleEntityImpl>
    implements _$$TripVehicleEntityImplCopyWith<$Res> {
  __$$TripVehicleEntityImplCopyWithImpl(
    _$TripVehicleEntityImpl _value,
    $Res Function(_$TripVehicleEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripVehicleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plateNumber = freezed,
    Object? model = freezed,
    Object? color = freezed,
  }) {
    return _then(
      _$TripVehicleEntityImpl(
        plateNumber: freezed == plateNumber
            ? _value.plateNumber
            : plateNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        model: freezed == model
            ? _value.model
            : model // ignore: cast_nullable_to_non_nullable
                  as String?,
        color: freezed == color
            ? _value.color
            : color // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$TripVehicleEntityImpl implements _TripVehicleEntity {
  const _$TripVehicleEntityImpl({this.plateNumber, this.model, this.color});

  @override
  final String? plateNumber;
  @override
  final String? model;
  @override
  final String? color;

  @override
  String toString() {
    return 'TripVehicleEntity(plateNumber: $plateNumber, model: $model, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripVehicleEntityImpl &&
            (identical(other.plateNumber, plateNumber) ||
                other.plateNumber == plateNumber) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plateNumber, model, color);

  /// Create a copy of TripVehicleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripVehicleEntityImplCopyWith<_$TripVehicleEntityImpl> get copyWith =>
      __$$TripVehicleEntityImplCopyWithImpl<_$TripVehicleEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _TripVehicleEntity implements TripVehicleEntity {
  const factory _TripVehicleEntity({
    final String? plateNumber,
    final String? model,
    final String? color,
  }) = _$TripVehicleEntityImpl;

  @override
  String? get plateNumber;
  @override
  String? get model;
  @override
  String? get color;

  /// Create a copy of TripVehicleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripVehicleEntityImplCopyWith<_$TripVehicleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TripRatingEntity {
  int? get id => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  int? get fromUserId => throw _privateConstructorUsedError;
  int? get toUserId => throw _privateConstructorUsedError;
  List<TripRatingTagEntity>? get tags => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of TripRatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripRatingEntityCopyWith<TripRatingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripRatingEntityCopyWith<$Res> {
  factory $TripRatingEntityCopyWith(
    TripRatingEntity value,
    $Res Function(TripRatingEntity) then,
  ) = _$TripRatingEntityCopyWithImpl<$Res, TripRatingEntity>;
  @useResult
  $Res call({
    int? id,
    int? score,
    String? comment,
    int? fromUserId,
    int? toUserId,
    List<TripRatingTagEntity>? tags,
    String? createdAt,
  });
}

/// @nodoc
class _$TripRatingEntityCopyWithImpl<$Res, $Val extends TripRatingEntity>
    implements $TripRatingEntityCopyWith<$Res> {
  _$TripRatingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripRatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? score = freezed,
    Object? comment = freezed,
    Object? fromUserId = freezed,
    Object? toUserId = freezed,
    Object? tags = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            score: freezed == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int?,
            comment: freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as String?,
            fromUserId: freezed == fromUserId
                ? _value.fromUserId
                : fromUserId // ignore: cast_nullable_to_non_nullable
                      as int?,
            toUserId: freezed == toUserId
                ? _value.toUserId
                : toUserId // ignore: cast_nullable_to_non_nullable
                      as int?,
            tags: freezed == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<TripRatingTagEntity>?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TripRatingEntityImplCopyWith<$Res>
    implements $TripRatingEntityCopyWith<$Res> {
  factory _$$TripRatingEntityImplCopyWith(
    _$TripRatingEntityImpl value,
    $Res Function(_$TripRatingEntityImpl) then,
  ) = __$$TripRatingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    int? score,
    String? comment,
    int? fromUserId,
    int? toUserId,
    List<TripRatingTagEntity>? tags,
    String? createdAt,
  });
}

/// @nodoc
class __$$TripRatingEntityImplCopyWithImpl<$Res>
    extends _$TripRatingEntityCopyWithImpl<$Res, _$TripRatingEntityImpl>
    implements _$$TripRatingEntityImplCopyWith<$Res> {
  __$$TripRatingEntityImplCopyWithImpl(
    _$TripRatingEntityImpl _value,
    $Res Function(_$TripRatingEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripRatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? score = freezed,
    Object? comment = freezed,
    Object? fromUserId = freezed,
    Object? toUserId = freezed,
    Object? tags = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$TripRatingEntityImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        score: freezed == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int?,
        comment: freezed == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String?,
        fromUserId: freezed == fromUserId
            ? _value.fromUserId
            : fromUserId // ignore: cast_nullable_to_non_nullable
                  as int?,
        toUserId: freezed == toUserId
            ? _value.toUserId
            : toUserId // ignore: cast_nullable_to_non_nullable
                  as int?,
        tags: freezed == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<TripRatingTagEntity>?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$TripRatingEntityImpl implements _TripRatingEntity {
  const _$TripRatingEntityImpl({
    this.id,
    this.score,
    this.comment,
    this.fromUserId,
    this.toUserId,
    final List<TripRatingTagEntity>? tags,
    this.createdAt,
  }) : _tags = tags;

  @override
  final int? id;
  @override
  final int? score;
  @override
  final String? comment;
  @override
  final int? fromUserId;
  @override
  final int? toUserId;
  final List<TripRatingTagEntity>? _tags;
  @override
  List<TripRatingTagEntity>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;

  @override
  String toString() {
    return 'TripRatingEntity(id: $id, score: $score, comment: $comment, fromUserId: $fromUserId, toUserId: $toUserId, tags: $tags, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripRatingEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.fromUserId, fromUserId) ||
                other.fromUserId == fromUserId) &&
            (identical(other.toUserId, toUserId) ||
                other.toUserId == toUserId) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    score,
    comment,
    fromUserId,
    toUserId,
    const DeepCollectionEquality().hash(_tags),
    createdAt,
  );

  /// Create a copy of TripRatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripRatingEntityImplCopyWith<_$TripRatingEntityImpl> get copyWith =>
      __$$TripRatingEntityImplCopyWithImpl<_$TripRatingEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _TripRatingEntity implements TripRatingEntity {
  const factory _TripRatingEntity({
    final int? id,
    final int? score,
    final String? comment,
    final int? fromUserId,
    final int? toUserId,
    final List<TripRatingTagEntity>? tags,
    final String? createdAt,
  }) = _$TripRatingEntityImpl;

  @override
  int? get id;
  @override
  int? get score;
  @override
  String? get comment;
  @override
  int? get fromUserId;
  @override
  int? get toUserId;
  @override
  List<TripRatingTagEntity>? get tags;
  @override
  String? get createdAt;

  /// Create a copy of TripRatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripRatingEntityImplCopyWith<_$TripRatingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TripRatingTagEntity {
  String? get code => throw _privateConstructorUsedError;

  /// Create a copy of TripRatingTagEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripRatingTagEntityCopyWith<TripRatingTagEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripRatingTagEntityCopyWith<$Res> {
  factory $TripRatingTagEntityCopyWith(
    TripRatingTagEntity value,
    $Res Function(TripRatingTagEntity) then,
  ) = _$TripRatingTagEntityCopyWithImpl<$Res, TripRatingTagEntity>;
  @useResult
  $Res call({String? code});
}

/// @nodoc
class _$TripRatingTagEntityCopyWithImpl<$Res, $Val extends TripRatingTagEntity>
    implements $TripRatingTagEntityCopyWith<$Res> {
  _$TripRatingTagEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripRatingTagEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = freezed}) {
    return _then(
      _value.copyWith(
            code: freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TripRatingTagEntityImplCopyWith<$Res>
    implements $TripRatingTagEntityCopyWith<$Res> {
  factory _$$TripRatingTagEntityImplCopyWith(
    _$TripRatingTagEntityImpl value,
    $Res Function(_$TripRatingTagEntityImpl) then,
  ) = __$$TripRatingTagEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code});
}

/// @nodoc
class __$$TripRatingTagEntityImplCopyWithImpl<$Res>
    extends _$TripRatingTagEntityCopyWithImpl<$Res, _$TripRatingTagEntityImpl>
    implements _$$TripRatingTagEntityImplCopyWith<$Res> {
  __$$TripRatingTagEntityImplCopyWithImpl(
    _$TripRatingTagEntityImpl _value,
    $Res Function(_$TripRatingTagEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripRatingTagEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = freezed}) {
    return _then(
      _$TripRatingTagEntityImpl(
        code: freezed == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$TripRatingTagEntityImpl implements _TripRatingTagEntity {
  const _$TripRatingTagEntityImpl({this.code});

  @override
  final String? code;

  @override
  String toString() {
    return 'TripRatingTagEntity(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripRatingTagEntityImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of TripRatingTagEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripRatingTagEntityImplCopyWith<_$TripRatingTagEntityImpl> get copyWith =>
      __$$TripRatingTagEntityImplCopyWithImpl<_$TripRatingTagEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _TripRatingTagEntity implements TripRatingTagEntity {
  const factory _TripRatingTagEntity({final String? code}) =
      _$TripRatingTagEntityImpl;

  @override
  String? get code;

  /// Create a copy of TripRatingTagEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripRatingTagEntityImplCopyWith<_$TripRatingTagEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
