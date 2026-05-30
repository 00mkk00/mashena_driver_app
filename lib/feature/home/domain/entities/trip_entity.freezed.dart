// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TripEntity {
  int get tripId => throw _privateConstructorUsedError;
  String get tripStatus => throw _privateConstructorUsedError;
  int get rideRequestId => throw _privateConstructorUsedError;
  double get pickupLat => throw _privateConstructorUsedError;
  double get pickupLng => throw _privateConstructorUsedError;
  double get destinationLat => throw _privateConstructorUsedError;
  double get destinationLng => throw _privateConstructorUsedError;
  int get driverId => throw _privateConstructorUsedError;
  String get driverFirstName => throw _privateConstructorUsedError;
  String get driverLastName => throw _privateConstructorUsedError;
  double get driverRatingAvg => throw _privateConstructorUsedError;
  List<String> get stops => throw _privateConstructorUsedError;
  dynamic get matchedAt => throw _privateConstructorUsedError;
  dynamic get driverProfileImage => throw _privateConstructorUsedError;
  dynamic get vehicleId => throw _privateConstructorUsedError;
  dynamic get plateNumber => throw _privateConstructorUsedError;
  dynamic get color => throw _privateConstructorUsedError;
  dynamic get manufacturer => throw _privateConstructorUsedError;
  dynamic get model => throw _privateConstructorUsedError;
  dynamic get vehicleTypeId => throw _privateConstructorUsedError;

  /// Create a copy of TripEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripEntityCopyWith<TripEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripEntityCopyWith<$Res> {
  factory $TripEntityCopyWith(
    TripEntity value,
    $Res Function(TripEntity) then,
  ) = _$TripEntityCopyWithImpl<$Res, TripEntity>;
  @useResult
  $Res call({
    int tripId,
    String tripStatus,
    int rideRequestId,
    double pickupLat,
    double pickupLng,
    double destinationLat,
    double destinationLng,
    int driverId,
    String driverFirstName,
    String driverLastName,
    double driverRatingAvg,
    List<String> stops,
    dynamic matchedAt,
    dynamic driverProfileImage,
    dynamic vehicleId,
    dynamic plateNumber,
    dynamic color,
    dynamic manufacturer,
    dynamic model,
    dynamic vehicleTypeId,
  });
}

/// @nodoc
class _$TripEntityCopyWithImpl<$Res, $Val extends TripEntity>
    implements $TripEntityCopyWith<$Res> {
  _$TripEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? tripStatus = null,
    Object? rideRequestId = null,
    Object? pickupLat = null,
    Object? pickupLng = null,
    Object? destinationLat = null,
    Object? destinationLng = null,
    Object? driverId = null,
    Object? driverFirstName = null,
    Object? driverLastName = null,
    Object? driverRatingAvg = null,
    Object? stops = null,
    Object? matchedAt = freezed,
    Object? driverProfileImage = freezed,
    Object? vehicleId = freezed,
    Object? plateNumber = freezed,
    Object? color = freezed,
    Object? manufacturer = freezed,
    Object? model = freezed,
    Object? vehicleTypeId = freezed,
  }) {
    return _then(
      _value.copyWith(
            tripId: null == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                      as int,
            tripStatus: null == tripStatus
                ? _value.tripStatus
                : tripStatus // ignore: cast_nullable_to_non_nullable
                      as String,
            rideRequestId: null == rideRequestId
                ? _value.rideRequestId
                : rideRequestId // ignore: cast_nullable_to_non_nullable
                      as int,
            pickupLat: null == pickupLat
                ? _value.pickupLat
                : pickupLat // ignore: cast_nullable_to_non_nullable
                      as double,
            pickupLng: null == pickupLng
                ? _value.pickupLng
                : pickupLng // ignore: cast_nullable_to_non_nullable
                      as double,
            destinationLat: null == destinationLat
                ? _value.destinationLat
                : destinationLat // ignore: cast_nullable_to_non_nullable
                      as double,
            destinationLng: null == destinationLng
                ? _value.destinationLng
                : destinationLng // ignore: cast_nullable_to_non_nullable
                      as double,
            driverId: null == driverId
                ? _value.driverId
                : driverId // ignore: cast_nullable_to_non_nullable
                      as int,
            driverFirstName: null == driverFirstName
                ? _value.driverFirstName
                : driverFirstName // ignore: cast_nullable_to_non_nullable
                      as String,
            driverLastName: null == driverLastName
                ? _value.driverLastName
                : driverLastName // ignore: cast_nullable_to_non_nullable
                      as String,
            driverRatingAvg: null == driverRatingAvg
                ? _value.driverRatingAvg
                : driverRatingAvg // ignore: cast_nullable_to_non_nullable
                      as double,
            stops: null == stops
                ? _value.stops
                : stops // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            matchedAt: freezed == matchedAt
                ? _value.matchedAt
                : matchedAt // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            driverProfileImage: freezed == driverProfileImage
                ? _value.driverProfileImage
                : driverProfileImage // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            vehicleId: freezed == vehicleId
                ? _value.vehicleId
                : vehicleId // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            plateNumber: freezed == plateNumber
                ? _value.plateNumber
                : plateNumber // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            color: freezed == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            manufacturer: freezed == manufacturer
                ? _value.manufacturer
                : manufacturer // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            model: freezed == model
                ? _value.model
                : model // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            vehicleTypeId: freezed == vehicleTypeId
                ? _value.vehicleTypeId
                : vehicleTypeId // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TripEntityImplCopyWith<$Res>
    implements $TripEntityCopyWith<$Res> {
  factory _$$TripEntityImplCopyWith(
    _$TripEntityImpl value,
    $Res Function(_$TripEntityImpl) then,
  ) = __$$TripEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int tripId,
    String tripStatus,
    int rideRequestId,
    double pickupLat,
    double pickupLng,
    double destinationLat,
    double destinationLng,
    int driverId,
    String driverFirstName,
    String driverLastName,
    double driverRatingAvg,
    List<String> stops,
    dynamic matchedAt,
    dynamic driverProfileImage,
    dynamic vehicleId,
    dynamic plateNumber,
    dynamic color,
    dynamic manufacturer,
    dynamic model,
    dynamic vehicleTypeId,
  });
}

/// @nodoc
class __$$TripEntityImplCopyWithImpl<$Res>
    extends _$TripEntityCopyWithImpl<$Res, _$TripEntityImpl>
    implements _$$TripEntityImplCopyWith<$Res> {
  __$$TripEntityImplCopyWithImpl(
    _$TripEntityImpl _value,
    $Res Function(_$TripEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? tripStatus = null,
    Object? rideRequestId = null,
    Object? pickupLat = null,
    Object? pickupLng = null,
    Object? destinationLat = null,
    Object? destinationLng = null,
    Object? driverId = null,
    Object? driverFirstName = null,
    Object? driverLastName = null,
    Object? driverRatingAvg = null,
    Object? stops = null,
    Object? matchedAt = freezed,
    Object? driverProfileImage = freezed,
    Object? vehicleId = freezed,
    Object? plateNumber = freezed,
    Object? color = freezed,
    Object? manufacturer = freezed,
    Object? model = freezed,
    Object? vehicleTypeId = freezed,
  }) {
    return _then(
      _$TripEntityImpl(
        tripId: null == tripId
            ? _value.tripId
            : tripId // ignore: cast_nullable_to_non_nullable
                  as int,
        tripStatus: null == tripStatus
            ? _value.tripStatus
            : tripStatus // ignore: cast_nullable_to_non_nullable
                  as String,
        rideRequestId: null == rideRequestId
            ? _value.rideRequestId
            : rideRequestId // ignore: cast_nullable_to_non_nullable
                  as int,
        pickupLat: null == pickupLat
            ? _value.pickupLat
            : pickupLat // ignore: cast_nullable_to_non_nullable
                  as double,
        pickupLng: null == pickupLng
            ? _value.pickupLng
            : pickupLng // ignore: cast_nullable_to_non_nullable
                  as double,
        destinationLat: null == destinationLat
            ? _value.destinationLat
            : destinationLat // ignore: cast_nullable_to_non_nullable
                  as double,
        destinationLng: null == destinationLng
            ? _value.destinationLng
            : destinationLng // ignore: cast_nullable_to_non_nullable
                  as double,
        driverId: null == driverId
            ? _value.driverId
            : driverId // ignore: cast_nullable_to_non_nullable
                  as int,
        driverFirstName: null == driverFirstName
            ? _value.driverFirstName
            : driverFirstName // ignore: cast_nullable_to_non_nullable
                  as String,
        driverLastName: null == driverLastName
            ? _value.driverLastName
            : driverLastName // ignore: cast_nullable_to_non_nullable
                  as String,
        driverRatingAvg: null == driverRatingAvg
            ? _value.driverRatingAvg
            : driverRatingAvg // ignore: cast_nullable_to_non_nullable
                  as double,
        stops: null == stops
            ? _value._stops
            : stops // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        matchedAt: freezed == matchedAt
            ? _value.matchedAt
            : matchedAt // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        driverProfileImage: freezed == driverProfileImage
            ? _value.driverProfileImage
            : driverProfileImage // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        vehicleId: freezed == vehicleId
            ? _value.vehicleId
            : vehicleId // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        plateNumber: freezed == plateNumber
            ? _value.plateNumber
            : plateNumber // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        color: freezed == color
            ? _value.color
            : color // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        manufacturer: freezed == manufacturer
            ? _value.manufacturer
            : manufacturer // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        model: freezed == model
            ? _value.model
            : model // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        vehicleTypeId: freezed == vehicleTypeId
            ? _value.vehicleTypeId
            : vehicleTypeId // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc

class _$TripEntityImpl implements _TripEntity {
  const _$TripEntityImpl({
    required this.tripId,
    required this.tripStatus,
    required this.rideRequestId,
    required this.pickupLat,
    required this.pickupLng,
    required this.destinationLat,
    required this.destinationLng,
    required this.driverId,
    required this.driverFirstName,
    required this.driverLastName,
    required this.driverRatingAvg,
    required final List<String> stops,
    this.matchedAt,
    this.driverProfileImage,
    this.vehicleId,
    this.plateNumber,
    this.color,
    this.manufacturer,
    this.model,
    this.vehicleTypeId,
  }) : _stops = stops;

  @override
  final int tripId;
  @override
  final String tripStatus;
  @override
  final int rideRequestId;
  @override
  final double pickupLat;
  @override
  final double pickupLng;
  @override
  final double destinationLat;
  @override
  final double destinationLng;
  @override
  final int driverId;
  @override
  final String driverFirstName;
  @override
  final String driverLastName;
  @override
  final double driverRatingAvg;
  final List<String> _stops;
  @override
  List<String> get stops {
    if (_stops is EqualUnmodifiableListView) return _stops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stops);
  }

  @override
  final dynamic matchedAt;
  @override
  final dynamic driverProfileImage;
  @override
  final dynamic vehicleId;
  @override
  final dynamic plateNumber;
  @override
  final dynamic color;
  @override
  final dynamic manufacturer;
  @override
  final dynamic model;
  @override
  final dynamic vehicleTypeId;

  @override
  String toString() {
    return 'TripEntity(tripId: $tripId, tripStatus: $tripStatus, rideRequestId: $rideRequestId, pickupLat: $pickupLat, pickupLng: $pickupLng, destinationLat: $destinationLat, destinationLng: $destinationLng, driverId: $driverId, driverFirstName: $driverFirstName, driverLastName: $driverLastName, driverRatingAvg: $driverRatingAvg, stops: $stops, matchedAt: $matchedAt, driverProfileImage: $driverProfileImage, vehicleId: $vehicleId, plateNumber: $plateNumber, color: $color, manufacturer: $manufacturer, model: $model, vehicleTypeId: $vehicleTypeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripEntityImpl &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.tripStatus, tripStatus) ||
                other.tripStatus == tripStatus) &&
            (identical(other.rideRequestId, rideRequestId) ||
                other.rideRequestId == rideRequestId) &&
            (identical(other.pickupLat, pickupLat) ||
                other.pickupLat == pickupLat) &&
            (identical(other.pickupLng, pickupLng) ||
                other.pickupLng == pickupLng) &&
            (identical(other.destinationLat, destinationLat) ||
                other.destinationLat == destinationLat) &&
            (identical(other.destinationLng, destinationLng) ||
                other.destinationLng == destinationLng) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.driverFirstName, driverFirstName) ||
                other.driverFirstName == driverFirstName) &&
            (identical(other.driverLastName, driverLastName) ||
                other.driverLastName == driverLastName) &&
            (identical(other.driverRatingAvg, driverRatingAvg) ||
                other.driverRatingAvg == driverRatingAvg) &&
            const DeepCollectionEquality().equals(other._stops, _stops) &&
            const DeepCollectionEquality().equals(other.matchedAt, matchedAt) &&
            const DeepCollectionEquality().equals(
              other.driverProfileImage,
              driverProfileImage,
            ) &&
            const DeepCollectionEquality().equals(other.vehicleId, vehicleId) &&
            const DeepCollectionEquality().equals(
              other.plateNumber,
              plateNumber,
            ) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(
              other.manufacturer,
              manufacturer,
            ) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(
              other.vehicleTypeId,
              vehicleTypeId,
            ));
  }

  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    tripId,
    tripStatus,
    rideRequestId,
    pickupLat,
    pickupLng,
    destinationLat,
    destinationLng,
    driverId,
    driverFirstName,
    driverLastName,
    driverRatingAvg,
    const DeepCollectionEquality().hash(_stops),
    const DeepCollectionEquality().hash(matchedAt),
    const DeepCollectionEquality().hash(driverProfileImage),
    const DeepCollectionEquality().hash(vehicleId),
    const DeepCollectionEquality().hash(plateNumber),
    const DeepCollectionEquality().hash(color),
    const DeepCollectionEquality().hash(manufacturer),
    const DeepCollectionEquality().hash(model),
    const DeepCollectionEquality().hash(vehicleTypeId),
  ]);

  /// Create a copy of TripEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripEntityImplCopyWith<_$TripEntityImpl> get copyWith =>
      __$$TripEntityImplCopyWithImpl<_$TripEntityImpl>(this, _$identity);
}

abstract class _TripEntity implements TripEntity {
  const factory _TripEntity({
    required final int tripId,
    required final String tripStatus,
    required final int rideRequestId,
    required final double pickupLat,
    required final double pickupLng,
    required final double destinationLat,
    required final double destinationLng,
    required final int driverId,
    required final String driverFirstName,
    required final String driverLastName,
    required final double driverRatingAvg,
    required final List<String> stops,
    final dynamic matchedAt,
    final dynamic driverProfileImage,
    final dynamic vehicleId,
    final dynamic plateNumber,
    final dynamic color,
    final dynamic manufacturer,
    final dynamic model,
    final dynamic vehicleTypeId,
  }) = _$TripEntityImpl;

  @override
  int get tripId;
  @override
  String get tripStatus;
  @override
  int get rideRequestId;
  @override
  double get pickupLat;
  @override
  double get pickupLng;
  @override
  double get destinationLat;
  @override
  double get destinationLng;
  @override
  int get driverId;
  @override
  String get driverFirstName;
  @override
  String get driverLastName;
  @override
  double get driverRatingAvg;
  @override
  List<String> get stops;
  @override
  dynamic get matchedAt;
  @override
  dynamic get driverProfileImage;
  @override
  dynamic get vehicleId;
  @override
  dynamic get plateNumber;
  @override
  dynamic get color;
  @override
  dynamic get manufacturer;
  @override
  dynamic get model;
  @override
  dynamic get vehicleTypeId;

  /// Create a copy of TripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripEntityImplCopyWith<_$TripEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
