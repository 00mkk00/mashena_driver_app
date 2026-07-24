// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_trip_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DriverTripHistoryModel _$DriverTripHistoryModelFromJson(
  Map<String, dynamic> json,
) {
  return _DriverTripHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$DriverTripHistoryModel {
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
  TripUserModel? get rider => throw _privateConstructorUsedError;
  TripUserModel? get driver => throw _privateConstructorUsedError;
  TripVehicleModel? get vehicle => throw _privateConstructorUsedError;
  TripRatingModel? get myRating => throw _privateConstructorUsedError;
  TripRatingModel? get receivedRating => throw _privateConstructorUsedError;
  List<TripRatingModel>? get ratings => throw _privateConstructorUsedError;

  /// Serializes this DriverTripHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverTripHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverTripHistoryModelCopyWith<DriverTripHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverTripHistoryModelCopyWith<$Res> {
  factory $DriverTripHistoryModelCopyWith(
    DriverTripHistoryModel value,
    $Res Function(DriverTripHistoryModel) then,
  ) = _$DriverTripHistoryModelCopyWithImpl<$Res, DriverTripHistoryModel>;
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
    TripUserModel? rider,
    TripUserModel? driver,
    TripVehicleModel? vehicle,
    TripRatingModel? myRating,
    TripRatingModel? receivedRating,
    List<TripRatingModel>? ratings,
  });

  $TripUserModelCopyWith<$Res>? get rider;
  $TripUserModelCopyWith<$Res>? get driver;
  $TripVehicleModelCopyWith<$Res>? get vehicle;
  $TripRatingModelCopyWith<$Res>? get myRating;
  $TripRatingModelCopyWith<$Res>? get receivedRating;
}

/// @nodoc
class _$DriverTripHistoryModelCopyWithImpl<
  $Res,
  $Val extends DriverTripHistoryModel
>
    implements $DriverTripHistoryModelCopyWith<$Res> {
  _$DriverTripHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverTripHistoryModel
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
                      as TripUserModel?,
            driver: freezed == driver
                ? _value.driver
                : driver // ignore: cast_nullable_to_non_nullable
                      as TripUserModel?,
            vehicle: freezed == vehicle
                ? _value.vehicle
                : vehicle // ignore: cast_nullable_to_non_nullable
                      as TripVehicleModel?,
            myRating: freezed == myRating
                ? _value.myRating
                : myRating // ignore: cast_nullable_to_non_nullable
                      as TripRatingModel?,
            receivedRating: freezed == receivedRating
                ? _value.receivedRating
                : receivedRating // ignore: cast_nullable_to_non_nullable
                      as TripRatingModel?,
            ratings: freezed == ratings
                ? _value.ratings
                : ratings // ignore: cast_nullable_to_non_nullable
                      as List<TripRatingModel>?,
          )
          as $Val,
    );
  }

  /// Create a copy of DriverTripHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripUserModelCopyWith<$Res>? get rider {
    if (_value.rider == null) {
      return null;
    }

    return $TripUserModelCopyWith<$Res>(_value.rider!, (value) {
      return _then(_value.copyWith(rider: value) as $Val);
    });
  }

  /// Create a copy of DriverTripHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripUserModelCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $TripUserModelCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }

  /// Create a copy of DriverTripHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripVehicleModelCopyWith<$Res>? get vehicle {
    if (_value.vehicle == null) {
      return null;
    }

    return $TripVehicleModelCopyWith<$Res>(_value.vehicle!, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }

  /// Create a copy of DriverTripHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripRatingModelCopyWith<$Res>? get myRating {
    if (_value.myRating == null) {
      return null;
    }

    return $TripRatingModelCopyWith<$Res>(_value.myRating!, (value) {
      return _then(_value.copyWith(myRating: value) as $Val);
    });
  }

  /// Create a copy of DriverTripHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripRatingModelCopyWith<$Res>? get receivedRating {
    if (_value.receivedRating == null) {
      return null;
    }

    return $TripRatingModelCopyWith<$Res>(_value.receivedRating!, (value) {
      return _then(_value.copyWith(receivedRating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverTripHistoryModelImplCopyWith<$Res>
    implements $DriverTripHistoryModelCopyWith<$Res> {
  factory _$$DriverTripHistoryModelImplCopyWith(
    _$DriverTripHistoryModelImpl value,
    $Res Function(_$DriverTripHistoryModelImpl) then,
  ) = __$$DriverTripHistoryModelImplCopyWithImpl<$Res>;
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
    TripUserModel? rider,
    TripUserModel? driver,
    TripVehicleModel? vehicle,
    TripRatingModel? myRating,
    TripRatingModel? receivedRating,
    List<TripRatingModel>? ratings,
  });

  @override
  $TripUserModelCopyWith<$Res>? get rider;
  @override
  $TripUserModelCopyWith<$Res>? get driver;
  @override
  $TripVehicleModelCopyWith<$Res>? get vehicle;
  @override
  $TripRatingModelCopyWith<$Res>? get myRating;
  @override
  $TripRatingModelCopyWith<$Res>? get receivedRating;
}

/// @nodoc
class __$$DriverTripHistoryModelImplCopyWithImpl<$Res>
    extends
        _$DriverTripHistoryModelCopyWithImpl<$Res, _$DriverTripHistoryModelImpl>
    implements _$$DriverTripHistoryModelImplCopyWith<$Res> {
  __$$DriverTripHistoryModelImplCopyWithImpl(
    _$DriverTripHistoryModelImpl _value,
    $Res Function(_$DriverTripHistoryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverTripHistoryModel
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
      _$DriverTripHistoryModelImpl(
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
                  as TripUserModel?,
        driver: freezed == driver
            ? _value.driver
            : driver // ignore: cast_nullable_to_non_nullable
                  as TripUserModel?,
        vehicle: freezed == vehicle
            ? _value.vehicle
            : vehicle // ignore: cast_nullable_to_non_nullable
                  as TripVehicleModel?,
        myRating: freezed == myRating
            ? _value.myRating
            : myRating // ignore: cast_nullable_to_non_nullable
                  as TripRatingModel?,
        receivedRating: freezed == receivedRating
            ? _value.receivedRating
            : receivedRating // ignore: cast_nullable_to_non_nullable
                  as TripRatingModel?,
        ratings: freezed == ratings
            ? _value._ratings
            : ratings // ignore: cast_nullable_to_non_nullable
                  as List<TripRatingModel>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverTripHistoryModelImpl implements _DriverTripHistoryModel {
  const _$DriverTripHistoryModelImpl({
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
    final List<TripRatingModel>? ratings,
  }) : _ratings = ratings;

  factory _$DriverTripHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverTripHistoryModelImplFromJson(json);

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
  final TripUserModel? rider;
  @override
  final TripUserModel? driver;
  @override
  final TripVehicleModel? vehicle;
  @override
  final TripRatingModel? myRating;
  @override
  final TripRatingModel? receivedRating;
  final List<TripRatingModel>? _ratings;
  @override
  List<TripRatingModel>? get ratings {
    final value = _ratings;
    if (value == null) return null;
    if (_ratings is EqualUnmodifiableListView) return _ratings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DriverTripHistoryModel(id: $id, rideRequestId: $rideRequestId, status: $status, pickupAddress: $pickupAddress, pickupLat: $pickupLat, pickupLng: $pickupLng, destAddress: $destAddress, destLat: $destLat, destLng: $destLng, fareTotal: $fareTotal, finalFare: $finalFare, discountAmount: $discountAmount, distanceKm: $distanceKm, durationSec: $durationSec, createdAt: $createdAt, acceptedAt: $acceptedAt, startedAt: $startedAt, completedAt: $completedAt, canceledAt: $canceledAt, cancelledBy: $cancelledBy, rider: $rider, driver: $driver, vehicle: $vehicle, myRating: $myRating, receivedRating: $receivedRating, ratings: $ratings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTripHistoryModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of DriverTripHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTripHistoryModelImplCopyWith<_$DriverTripHistoryModelImpl>
  get copyWith =>
      __$$DriverTripHistoryModelImplCopyWithImpl<_$DriverTripHistoryModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverTripHistoryModelImplToJson(this);
  }
}

abstract class _DriverTripHistoryModel implements DriverTripHistoryModel {
  const factory _DriverTripHistoryModel({
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
    final TripUserModel? rider,
    final TripUserModel? driver,
    final TripVehicleModel? vehicle,
    final TripRatingModel? myRating,
    final TripRatingModel? receivedRating,
    final List<TripRatingModel>? ratings,
  }) = _$DriverTripHistoryModelImpl;

  factory _DriverTripHistoryModel.fromJson(Map<String, dynamic> json) =
      _$DriverTripHistoryModelImpl.fromJson;

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
  TripUserModel? get rider;
  @override
  TripUserModel? get driver;
  @override
  TripVehicleModel? get vehicle;
  @override
  TripRatingModel? get myRating;
  @override
  TripRatingModel? get receivedRating;
  @override
  List<TripRatingModel>? get ratings;

  /// Create a copy of DriverTripHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTripHistoryModelImplCopyWith<_$DriverTripHistoryModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

TripUserModel _$TripUserModelFromJson(Map<String, dynamic> json) {
  return _TripUserModel.fromJson(json);
}

/// @nodoc
mixin _$TripUserModel {
  int? get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  double? get ratingAvg => throw _privateConstructorUsedError;

  /// Serializes this TripUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripUserModelCopyWith<TripUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripUserModelCopyWith<$Res> {
  factory $TripUserModelCopyWith(
    TripUserModel value,
    $Res Function(TripUserModel) then,
  ) = _$TripUserModelCopyWithImpl<$Res, TripUserModel>;
  @useResult
  $Res call({
    int? id,
    String? fullName,
    String? phoneNumber,
    double? ratingAvg,
  });
}

/// @nodoc
class _$TripUserModelCopyWithImpl<$Res, $Val extends TripUserModel>
    implements $TripUserModelCopyWith<$Res> {
  _$TripUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripUserModel
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
abstract class _$$TripUserModelImplCopyWith<$Res>
    implements $TripUserModelCopyWith<$Res> {
  factory _$$TripUserModelImplCopyWith(
    _$TripUserModelImpl value,
    $Res Function(_$TripUserModelImpl) then,
  ) = __$$TripUserModelImplCopyWithImpl<$Res>;
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
class __$$TripUserModelImplCopyWithImpl<$Res>
    extends _$TripUserModelCopyWithImpl<$Res, _$TripUserModelImpl>
    implements _$$TripUserModelImplCopyWith<$Res> {
  __$$TripUserModelImplCopyWithImpl(
    _$TripUserModelImpl _value,
    $Res Function(_$TripUserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripUserModel
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
      _$TripUserModelImpl(
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
@JsonSerializable()
class _$TripUserModelImpl implements _TripUserModel {
  const _$TripUserModelImpl({
    this.id,
    this.fullName,
    this.phoneNumber,
    this.ratingAvg,
  });

  factory _$TripUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripUserModelImplFromJson(json);

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
    return 'TripUserModel(id: $id, fullName: $fullName, phoneNumber: $phoneNumber, ratingAvg: $ratingAvg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.ratingAvg, ratingAvg) ||
                other.ratingAvg == ratingAvg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fullName, phoneNumber, ratingAvg);

  /// Create a copy of TripUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripUserModelImplCopyWith<_$TripUserModelImpl> get copyWith =>
      __$$TripUserModelImplCopyWithImpl<_$TripUserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripUserModelImplToJson(this);
  }
}

abstract class _TripUserModel implements TripUserModel {
  const factory _TripUserModel({
    final int? id,
    final String? fullName,
    final String? phoneNumber,
    final double? ratingAvg,
  }) = _$TripUserModelImpl;

  factory _TripUserModel.fromJson(Map<String, dynamic> json) =
      _$TripUserModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get fullName;
  @override
  String? get phoneNumber;
  @override
  double? get ratingAvg;

  /// Create a copy of TripUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripUserModelImplCopyWith<_$TripUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TripVehicleModel _$TripVehicleModelFromJson(Map<String, dynamic> json) {
  return _TripVehicleModel.fromJson(json);
}

/// @nodoc
mixin _$TripVehicleModel {
  String? get plateNumber => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  /// Serializes this TripVehicleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripVehicleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripVehicleModelCopyWith<TripVehicleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripVehicleModelCopyWith<$Res> {
  factory $TripVehicleModelCopyWith(
    TripVehicleModel value,
    $Res Function(TripVehicleModel) then,
  ) = _$TripVehicleModelCopyWithImpl<$Res, TripVehicleModel>;
  @useResult
  $Res call({String? plateNumber, String? model, String? color});
}

/// @nodoc
class _$TripVehicleModelCopyWithImpl<$Res, $Val extends TripVehicleModel>
    implements $TripVehicleModelCopyWith<$Res> {
  _$TripVehicleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripVehicleModel
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
abstract class _$$TripVehicleModelImplCopyWith<$Res>
    implements $TripVehicleModelCopyWith<$Res> {
  factory _$$TripVehicleModelImplCopyWith(
    _$TripVehicleModelImpl value,
    $Res Function(_$TripVehicleModelImpl) then,
  ) = __$$TripVehicleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? plateNumber, String? model, String? color});
}

/// @nodoc
class __$$TripVehicleModelImplCopyWithImpl<$Res>
    extends _$TripVehicleModelCopyWithImpl<$Res, _$TripVehicleModelImpl>
    implements _$$TripVehicleModelImplCopyWith<$Res> {
  __$$TripVehicleModelImplCopyWithImpl(
    _$TripVehicleModelImpl _value,
    $Res Function(_$TripVehicleModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripVehicleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plateNumber = freezed,
    Object? model = freezed,
    Object? color = freezed,
  }) {
    return _then(
      _$TripVehicleModelImpl(
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
@JsonSerializable()
class _$TripVehicleModelImpl implements _TripVehicleModel {
  const _$TripVehicleModelImpl({this.plateNumber, this.model, this.color});

  factory _$TripVehicleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripVehicleModelImplFromJson(json);

  @override
  final String? plateNumber;
  @override
  final String? model;
  @override
  final String? color;

  @override
  String toString() {
    return 'TripVehicleModel(plateNumber: $plateNumber, model: $model, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripVehicleModelImpl &&
            (identical(other.plateNumber, plateNumber) ||
                other.plateNumber == plateNumber) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, plateNumber, model, color);

  /// Create a copy of TripVehicleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripVehicleModelImplCopyWith<_$TripVehicleModelImpl> get copyWith =>
      __$$TripVehicleModelImplCopyWithImpl<_$TripVehicleModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TripVehicleModelImplToJson(this);
  }
}

abstract class _TripVehicleModel implements TripVehicleModel {
  const factory _TripVehicleModel({
    final String? plateNumber,
    final String? model,
    final String? color,
  }) = _$TripVehicleModelImpl;

  factory _TripVehicleModel.fromJson(Map<String, dynamic> json) =
      _$TripVehicleModelImpl.fromJson;

  @override
  String? get plateNumber;
  @override
  String? get model;
  @override
  String? get color;

  /// Create a copy of TripVehicleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripVehicleModelImplCopyWith<_$TripVehicleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TripRatingModel _$TripRatingModelFromJson(Map<String, dynamic> json) {
  return _TripRatingModel.fromJson(json);
}

/// @nodoc
mixin _$TripRatingModel {
  int? get id => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  int? get fromUserId => throw _privateConstructorUsedError;
  int? get toUserId => throw _privateConstructorUsedError;
  List<TripRatingTagModel>? get tags => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this TripRatingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripRatingModelCopyWith<TripRatingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripRatingModelCopyWith<$Res> {
  factory $TripRatingModelCopyWith(
    TripRatingModel value,
    $Res Function(TripRatingModel) then,
  ) = _$TripRatingModelCopyWithImpl<$Res, TripRatingModel>;
  @useResult
  $Res call({
    int? id,
    int? score,
    String? comment,
    int? fromUserId,
    int? toUserId,
    List<TripRatingTagModel>? tags,
    String? createdAt,
  });
}

/// @nodoc
class _$TripRatingModelCopyWithImpl<$Res, $Val extends TripRatingModel>
    implements $TripRatingModelCopyWith<$Res> {
  _$TripRatingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripRatingModel
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
                      as List<TripRatingTagModel>?,
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
abstract class _$$TripRatingModelImplCopyWith<$Res>
    implements $TripRatingModelCopyWith<$Res> {
  factory _$$TripRatingModelImplCopyWith(
    _$TripRatingModelImpl value,
    $Res Function(_$TripRatingModelImpl) then,
  ) = __$$TripRatingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    int? score,
    String? comment,
    int? fromUserId,
    int? toUserId,
    List<TripRatingTagModel>? tags,
    String? createdAt,
  });
}

/// @nodoc
class __$$TripRatingModelImplCopyWithImpl<$Res>
    extends _$TripRatingModelCopyWithImpl<$Res, _$TripRatingModelImpl>
    implements _$$TripRatingModelImplCopyWith<$Res> {
  __$$TripRatingModelImplCopyWithImpl(
    _$TripRatingModelImpl _value,
    $Res Function(_$TripRatingModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripRatingModel
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
      _$TripRatingModelImpl(
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
                  as List<TripRatingTagModel>?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TripRatingModelImpl implements _TripRatingModel {
  const _$TripRatingModelImpl({
    this.id,
    this.score,
    this.comment,
    this.fromUserId,
    this.toUserId,
    final List<TripRatingTagModel>? tags,
    this.createdAt,
  }) : _tags = tags;

  factory _$TripRatingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripRatingModelImplFromJson(json);

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
  final List<TripRatingTagModel>? _tags;
  @override
  List<TripRatingTagModel>? get tags {
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
    return 'TripRatingModel(id: $id, score: $score, comment: $comment, fromUserId: $fromUserId, toUserId: $toUserId, tags: $tags, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripRatingModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of TripRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripRatingModelImplCopyWith<_$TripRatingModelImpl> get copyWith =>
      __$$TripRatingModelImplCopyWithImpl<_$TripRatingModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TripRatingModelImplToJson(this);
  }
}

abstract class _TripRatingModel implements TripRatingModel {
  const factory _TripRatingModel({
    final int? id,
    final int? score,
    final String? comment,
    final int? fromUserId,
    final int? toUserId,
    final List<TripRatingTagModel>? tags,
    final String? createdAt,
  }) = _$TripRatingModelImpl;

  factory _TripRatingModel.fromJson(Map<String, dynamic> json) =
      _$TripRatingModelImpl.fromJson;

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
  List<TripRatingTagModel>? get tags;
  @override
  String? get createdAt;

  /// Create a copy of TripRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripRatingModelImplCopyWith<_$TripRatingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TripRatingTagModel _$TripRatingTagModelFromJson(Map<String, dynamic> json) {
  return _TripRatingTagModel.fromJson(json);
}

/// @nodoc
mixin _$TripRatingTagModel {
  String? get code => throw _privateConstructorUsedError;

  /// Serializes this TripRatingTagModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripRatingTagModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripRatingTagModelCopyWith<TripRatingTagModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripRatingTagModelCopyWith<$Res> {
  factory $TripRatingTagModelCopyWith(
    TripRatingTagModel value,
    $Res Function(TripRatingTagModel) then,
  ) = _$TripRatingTagModelCopyWithImpl<$Res, TripRatingTagModel>;
  @useResult
  $Res call({String? code});
}

/// @nodoc
class _$TripRatingTagModelCopyWithImpl<$Res, $Val extends TripRatingTagModel>
    implements $TripRatingTagModelCopyWith<$Res> {
  _$TripRatingTagModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripRatingTagModel
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
abstract class _$$TripRatingTagModelImplCopyWith<$Res>
    implements $TripRatingTagModelCopyWith<$Res> {
  factory _$$TripRatingTagModelImplCopyWith(
    _$TripRatingTagModelImpl value,
    $Res Function(_$TripRatingTagModelImpl) then,
  ) = __$$TripRatingTagModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code});
}

/// @nodoc
class __$$TripRatingTagModelImplCopyWithImpl<$Res>
    extends _$TripRatingTagModelCopyWithImpl<$Res, _$TripRatingTagModelImpl>
    implements _$$TripRatingTagModelImplCopyWith<$Res> {
  __$$TripRatingTagModelImplCopyWithImpl(
    _$TripRatingTagModelImpl _value,
    $Res Function(_$TripRatingTagModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripRatingTagModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = freezed}) {
    return _then(
      _$TripRatingTagModelImpl(
        code: freezed == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TripRatingTagModelImpl implements _TripRatingTagModel {
  const _$TripRatingTagModelImpl({this.code});

  factory _$TripRatingTagModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripRatingTagModelImplFromJson(json);

  @override
  final String? code;

  @override
  String toString() {
    return 'TripRatingTagModel(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripRatingTagModelImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of TripRatingTagModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripRatingTagModelImplCopyWith<_$TripRatingTagModelImpl> get copyWith =>
      __$$TripRatingTagModelImplCopyWithImpl<_$TripRatingTagModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TripRatingTagModelImplToJson(this);
  }
}

abstract class _TripRatingTagModel implements TripRatingTagModel {
  const factory _TripRatingTagModel({final String? code}) =
      _$TripRatingTagModelImpl;

  factory _TripRatingTagModel.fromJson(Map<String, dynamic> json) =
      _$TripRatingTagModelImpl.fromJson;

  @override
  String? get code;

  /// Create a copy of TripRatingTagModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripRatingTagModelImplCopyWith<_$TripRatingTagModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
