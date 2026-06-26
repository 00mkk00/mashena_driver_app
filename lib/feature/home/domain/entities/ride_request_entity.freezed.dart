// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RideRequestEntity {
  int get id => throw _privateConstructorUsedError;
  int get riderProfileId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  double get pickupLat => throw _privateConstructorUsedError;
  double get pickupLng => throw _privateConstructorUsedError;
  String get pickupAddress => throw _privateConstructorUsedError;
  double get destLat => throw _privateConstructorUsedError;
  double get destLng => throw _privateConstructorUsedError;
  String get destAddress => throw _privateConstructorUsedError;
  int get vehicleTypeId => throw _privateConstructorUsedError;
  DateTime get submittedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<RideRequestStopEntity> get stops => throw _privateConstructorUsedError;
  int? get rideRequestId => throw _privateConstructorUsedError;
  double? get distanceKm => throw _privateConstructorUsedError;
  int? get durationMin => throw _privateConstructorUsedError;
  bool? get isNight => throw _privateConstructorUsedError;
  String? get estimatedFare => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  RouteGeometryEntity? get routeGeometry => throw _privateConstructorUsedError;

  /// Create a copy of RideRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RideRequestEntityCopyWith<RideRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideRequestEntityCopyWith<$Res> {
  factory $RideRequestEntityCopyWith(
    RideRequestEntity value,
    $Res Function(RideRequestEntity) then,
  ) = _$RideRequestEntityCopyWithImpl<$Res, RideRequestEntity>;
  @useResult
  $Res call({
    int id,
    int riderProfileId,
    String status,
    double pickupLat,
    double pickupLng,
    String pickupAddress,
    double destLat,
    double destLng,
    String destAddress,
    int vehicleTypeId,
    DateTime submittedAt,
    DateTime createdAt,
    DateTime updatedAt,
    List<RideRequestStopEntity> stops,
    int? rideRequestId,
    double? distanceKm,
    int? durationMin,
    bool? isNight,
    String? estimatedFare,
    String? currency,
    RouteGeometryEntity? routeGeometry,
  });

  $RouteGeometryEntityCopyWith<$Res>? get routeGeometry;
}

/// @nodoc
class _$RideRequestEntityCopyWithImpl<$Res, $Val extends RideRequestEntity>
    implements $RideRequestEntityCopyWith<$Res> {
  _$RideRequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RideRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? riderProfileId = null,
    Object? status = null,
    Object? pickupLat = null,
    Object? pickupLng = null,
    Object? pickupAddress = null,
    Object? destLat = null,
    Object? destLng = null,
    Object? destAddress = null,
    Object? vehicleTypeId = null,
    Object? submittedAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? stops = null,
    Object? rideRequestId = freezed,
    Object? distanceKm = freezed,
    Object? durationMin = freezed,
    Object? isNight = freezed,
    Object? estimatedFare = freezed,
    Object? currency = freezed,
    Object? routeGeometry = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            riderProfileId: null == riderProfileId
                ? _value.riderProfileId
                : riderProfileId // ignore: cast_nullable_to_non_nullable
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
            pickupAddress: null == pickupAddress
                ? _value.pickupAddress
                : pickupAddress // ignore: cast_nullable_to_non_nullable
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
            vehicleTypeId: null == vehicleTypeId
                ? _value.vehicleTypeId
                : vehicleTypeId // ignore: cast_nullable_to_non_nullable
                      as int,
            submittedAt: null == submittedAt
                ? _value.submittedAt
                : submittedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            stops: null == stops
                ? _value.stops
                : stops // ignore: cast_nullable_to_non_nullable
                      as List<RideRequestStopEntity>,
            rideRequestId: freezed == rideRequestId
                ? _value.rideRequestId
                : rideRequestId // ignore: cast_nullable_to_non_nullable
                      as int?,
            distanceKm: freezed == distanceKm
                ? _value.distanceKm
                : distanceKm // ignore: cast_nullable_to_non_nullable
                      as double?,
            durationMin: freezed == durationMin
                ? _value.durationMin
                : durationMin // ignore: cast_nullable_to_non_nullable
                      as int?,
            isNight: freezed == isNight
                ? _value.isNight
                : isNight // ignore: cast_nullable_to_non_nullable
                      as bool?,
            estimatedFare: freezed == estimatedFare
                ? _value.estimatedFare
                : estimatedFare // ignore: cast_nullable_to_non_nullable
                      as String?,
            currency: freezed == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String?,
            routeGeometry: freezed == routeGeometry
                ? _value.routeGeometry
                : routeGeometry // ignore: cast_nullable_to_non_nullable
                      as RouteGeometryEntity?,
          )
          as $Val,
    );
  }

  /// Create a copy of RideRequestEntity
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
}

/// @nodoc
abstract class _$$RideRequestEntityImplCopyWith<$Res>
    implements $RideRequestEntityCopyWith<$Res> {
  factory _$$RideRequestEntityImplCopyWith(
    _$RideRequestEntityImpl value,
    $Res Function(_$RideRequestEntityImpl) then,
  ) = __$$RideRequestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int riderProfileId,
    String status,
    double pickupLat,
    double pickupLng,
    String pickupAddress,
    double destLat,
    double destLng,
    String destAddress,
    int vehicleTypeId,
    DateTime submittedAt,
    DateTime createdAt,
    DateTime updatedAt,
    List<RideRequestStopEntity> stops,
    int? rideRequestId,
    double? distanceKm,
    int? durationMin,
    bool? isNight,
    String? estimatedFare,
    String? currency,
    RouteGeometryEntity? routeGeometry,
  });

  @override
  $RouteGeometryEntityCopyWith<$Res>? get routeGeometry;
}

/// @nodoc
class __$$RideRequestEntityImplCopyWithImpl<$Res>
    extends _$RideRequestEntityCopyWithImpl<$Res, _$RideRequestEntityImpl>
    implements _$$RideRequestEntityImplCopyWith<$Res> {
  __$$RideRequestEntityImplCopyWithImpl(
    _$RideRequestEntityImpl _value,
    $Res Function(_$RideRequestEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RideRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? riderProfileId = null,
    Object? status = null,
    Object? pickupLat = null,
    Object? pickupLng = null,
    Object? pickupAddress = null,
    Object? destLat = null,
    Object? destLng = null,
    Object? destAddress = null,
    Object? vehicleTypeId = null,
    Object? submittedAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? stops = null,
    Object? rideRequestId = freezed,
    Object? distanceKm = freezed,
    Object? durationMin = freezed,
    Object? isNight = freezed,
    Object? estimatedFare = freezed,
    Object? currency = freezed,
    Object? routeGeometry = freezed,
  }) {
    return _then(
      _$RideRequestEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        riderProfileId: null == riderProfileId
            ? _value.riderProfileId
            : riderProfileId // ignore: cast_nullable_to_non_nullable
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
        pickupAddress: null == pickupAddress
            ? _value.pickupAddress
            : pickupAddress // ignore: cast_nullable_to_non_nullable
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
        vehicleTypeId: null == vehicleTypeId
            ? _value.vehicleTypeId
            : vehicleTypeId // ignore: cast_nullable_to_non_nullable
                  as int,
        submittedAt: null == submittedAt
            ? _value.submittedAt
            : submittedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        stops: null == stops
            ? _value._stops
            : stops // ignore: cast_nullable_to_non_nullable
                  as List<RideRequestStopEntity>,
        rideRequestId: freezed == rideRequestId
            ? _value.rideRequestId
            : rideRequestId // ignore: cast_nullable_to_non_nullable
                  as int?,
        distanceKm: freezed == distanceKm
            ? _value.distanceKm
            : distanceKm // ignore: cast_nullable_to_non_nullable
                  as double?,
        durationMin: freezed == durationMin
            ? _value.durationMin
            : durationMin // ignore: cast_nullable_to_non_nullable
                  as int?,
        isNight: freezed == isNight
            ? _value.isNight
            : isNight // ignore: cast_nullable_to_non_nullable
                  as bool?,
        estimatedFare: freezed == estimatedFare
            ? _value.estimatedFare
            : estimatedFare // ignore: cast_nullable_to_non_nullable
                  as String?,
        currency: freezed == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String?,
        routeGeometry: freezed == routeGeometry
            ? _value.routeGeometry
            : routeGeometry // ignore: cast_nullable_to_non_nullable
                  as RouteGeometryEntity?,
      ),
    );
  }
}

/// @nodoc

class _$RideRequestEntityImpl implements _RideRequestEntity {
  const _$RideRequestEntityImpl({
    required this.id,
    required this.riderProfileId,
    required this.status,
    required this.pickupLat,
    required this.pickupLng,
    required this.pickupAddress,
    required this.destLat,
    required this.destLng,
    required this.destAddress,
    required this.vehicleTypeId,
    required this.submittedAt,
    required this.createdAt,
    required this.updatedAt,
    required final List<RideRequestStopEntity> stops,
    this.rideRequestId,
    this.distanceKm,
    this.durationMin,
    this.isNight,
    this.estimatedFare,
    this.currency,
    this.routeGeometry,
  }) : _stops = stops;

  @override
  final int id;
  @override
  final int riderProfileId;
  @override
  final String status;
  @override
  final double pickupLat;
  @override
  final double pickupLng;
  @override
  final String pickupAddress;
  @override
  final double destLat;
  @override
  final double destLng;
  @override
  final String destAddress;
  @override
  final int vehicleTypeId;
  @override
  final DateTime submittedAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  final List<RideRequestStopEntity> _stops;
  @override
  List<RideRequestStopEntity> get stops {
    if (_stops is EqualUnmodifiableListView) return _stops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stops);
  }

  @override
  final int? rideRequestId;
  @override
  final double? distanceKm;
  @override
  final int? durationMin;
  @override
  final bool? isNight;
  @override
  final String? estimatedFare;
  @override
  final String? currency;
  @override
  final RouteGeometryEntity? routeGeometry;

  @override
  String toString() {
    return 'RideRequestEntity(id: $id, riderProfileId: $riderProfileId, status: $status, pickupLat: $pickupLat, pickupLng: $pickupLng, pickupAddress: $pickupAddress, destLat: $destLat, destLng: $destLng, destAddress: $destAddress, vehicleTypeId: $vehicleTypeId, submittedAt: $submittedAt, createdAt: $createdAt, updatedAt: $updatedAt, stops: $stops, rideRequestId: $rideRequestId, distanceKm: $distanceKm, durationMin: $durationMin, isNight: $isNight, estimatedFare: $estimatedFare, currency: $currency, routeGeometry: $routeGeometry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RideRequestEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.riderProfileId, riderProfileId) ||
                other.riderProfileId == riderProfileId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pickupLat, pickupLat) ||
                other.pickupLat == pickupLat) &&
            (identical(other.pickupLng, pickupLng) ||
                other.pickupLng == pickupLng) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.destLat, destLat) || other.destLat == destLat) &&
            (identical(other.destLng, destLng) || other.destLng == destLng) &&
            (identical(other.destAddress, destAddress) ||
                other.destAddress == destAddress) &&
            (identical(other.vehicleTypeId, vehicleTypeId) ||
                other.vehicleTypeId == vehicleTypeId) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._stops, _stops) &&
            (identical(other.rideRequestId, rideRequestId) ||
                other.rideRequestId == rideRequestId) &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            (identical(other.durationMin, durationMin) ||
                other.durationMin == durationMin) &&
            (identical(other.isNight, isNight) || other.isNight == isNight) &&
            (identical(other.estimatedFare, estimatedFare) ||
                other.estimatedFare == estimatedFare) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.routeGeometry, routeGeometry) ||
                other.routeGeometry == routeGeometry));
  }

  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    riderProfileId,
    status,
    pickupLat,
    pickupLng,
    pickupAddress,
    destLat,
    destLng,
    destAddress,
    vehicleTypeId,
    submittedAt,
    createdAt,
    updatedAt,
    const DeepCollectionEquality().hash(_stops),
    rideRequestId,
    distanceKm,
    durationMin,
    isNight,
    estimatedFare,
    currency,
    routeGeometry,
  ]);

  /// Create a copy of RideRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RideRequestEntityImplCopyWith<_$RideRequestEntityImpl> get copyWith =>
      __$$RideRequestEntityImplCopyWithImpl<_$RideRequestEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _RideRequestEntity implements RideRequestEntity {
  const factory _RideRequestEntity({
    required final int id,
    required final int riderProfileId,
    required final String status,
    required final double pickupLat,
    required final double pickupLng,
    required final String pickupAddress,
    required final double destLat,
    required final double destLng,
    required final String destAddress,
    required final int vehicleTypeId,
    required final DateTime submittedAt,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    required final List<RideRequestStopEntity> stops,
    final int? rideRequestId,
    final double? distanceKm,
    final int? durationMin,
    final bool? isNight,
    final String? estimatedFare,
    final String? currency,
    final RouteGeometryEntity? routeGeometry,
  }) = _$RideRequestEntityImpl;

  @override
  int get id;
  @override
  int get riderProfileId;
  @override
  String get status;
  @override
  double get pickupLat;
  @override
  double get pickupLng;
  @override
  String get pickupAddress;
  @override
  double get destLat;
  @override
  double get destLng;
  @override
  String get destAddress;
  @override
  int get vehicleTypeId;
  @override
  DateTime get submittedAt;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  List<RideRequestStopEntity> get stops;
  @override
  int? get rideRequestId;
  @override
  double? get distanceKm;
  @override
  int? get durationMin;
  @override
  bool? get isNight;
  @override
  String? get estimatedFare;
  @override
  String? get currency;
  @override
  RouteGeometryEntity? get routeGeometry;

  /// Create a copy of RideRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RideRequestEntityImplCopyWith<_$RideRequestEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RouteGeometryEntity {
  double get distanceMeters => throw _privateConstructorUsedError;
  double get durationSeconds => throw _privateConstructorUsedError;
  List<RoutePointEntity> get points => throw _privateConstructorUsedError;

  /// Create a copy of RouteGeometryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteGeometryEntityCopyWith<RouteGeometryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteGeometryEntityCopyWith<$Res> {
  factory $RouteGeometryEntityCopyWith(
    RouteGeometryEntity value,
    $Res Function(RouteGeometryEntity) then,
  ) = _$RouteGeometryEntityCopyWithImpl<$Res, RouteGeometryEntity>;
  @useResult
  $Res call({
    double distanceMeters,
    double durationSeconds,
    List<RoutePointEntity> points,
  });
}

/// @nodoc
class _$RouteGeometryEntityCopyWithImpl<$Res, $Val extends RouteGeometryEntity>
    implements $RouteGeometryEntityCopyWith<$Res> {
  _$RouteGeometryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteGeometryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceMeters = null,
    Object? durationSeconds = null,
    Object? points = null,
  }) {
    return _then(
      _value.copyWith(
            distanceMeters: null == distanceMeters
                ? _value.distanceMeters
                : distanceMeters // ignore: cast_nullable_to_non_nullable
                      as double,
            durationSeconds: null == durationSeconds
                ? _value.durationSeconds
                : durationSeconds // ignore: cast_nullable_to_non_nullable
                      as double,
            points: null == points
                ? _value.points
                : points // ignore: cast_nullable_to_non_nullable
                      as List<RoutePointEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RouteGeometryEntityImplCopyWith<$Res>
    implements $RouteGeometryEntityCopyWith<$Res> {
  factory _$$RouteGeometryEntityImplCopyWith(
    _$RouteGeometryEntityImpl value,
    $Res Function(_$RouteGeometryEntityImpl) then,
  ) = __$$RouteGeometryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double distanceMeters,
    double durationSeconds,
    List<RoutePointEntity> points,
  });
}

/// @nodoc
class __$$RouteGeometryEntityImplCopyWithImpl<$Res>
    extends _$RouteGeometryEntityCopyWithImpl<$Res, _$RouteGeometryEntityImpl>
    implements _$$RouteGeometryEntityImplCopyWith<$Res> {
  __$$RouteGeometryEntityImplCopyWithImpl(
    _$RouteGeometryEntityImpl _value,
    $Res Function(_$RouteGeometryEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteGeometryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceMeters = null,
    Object? durationSeconds = null,
    Object? points = null,
  }) {
    return _then(
      _$RouteGeometryEntityImpl(
        distanceMeters: null == distanceMeters
            ? _value.distanceMeters
            : distanceMeters // ignore: cast_nullable_to_non_nullable
                  as double,
        durationSeconds: null == durationSeconds
            ? _value.durationSeconds
            : durationSeconds // ignore: cast_nullable_to_non_nullable
                  as double,
        points: null == points
            ? _value._points
            : points // ignore: cast_nullable_to_non_nullable
                  as List<RoutePointEntity>,
      ),
    );
  }
}

/// @nodoc

class _$RouteGeometryEntityImpl implements _RouteGeometryEntity {
  const _$RouteGeometryEntityImpl({
    required this.distanceMeters,
    required this.durationSeconds,
    required final List<RoutePointEntity> points,
  }) : _points = points;

  @override
  final double distanceMeters;
  @override
  final double durationSeconds;
  final List<RoutePointEntity> _points;
  @override
  List<RoutePointEntity> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString() {
    return 'RouteGeometryEntity(distanceMeters: $distanceMeters, durationSeconds: $durationSeconds, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteGeometryEntityImpl &&
            (identical(other.distanceMeters, distanceMeters) ||
                other.distanceMeters == distanceMeters) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    distanceMeters,
    durationSeconds,
    const DeepCollectionEquality().hash(_points),
  );

  /// Create a copy of RouteGeometryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteGeometryEntityImplCopyWith<_$RouteGeometryEntityImpl> get copyWith =>
      __$$RouteGeometryEntityImplCopyWithImpl<_$RouteGeometryEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _RouteGeometryEntity implements RouteGeometryEntity {
  const factory _RouteGeometryEntity({
    required final double distanceMeters,
    required final double durationSeconds,
    required final List<RoutePointEntity> points,
  }) = _$RouteGeometryEntityImpl;

  @override
  double get distanceMeters;
  @override
  double get durationSeconds;
  @override
  List<RoutePointEntity> get points;

  /// Create a copy of RouteGeometryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteGeometryEntityImplCopyWith<_$RouteGeometryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoutePointEntity {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  /// Create a copy of RoutePointEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoutePointEntityCopyWith<RoutePointEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutePointEntityCopyWith<$Res> {
  factory $RoutePointEntityCopyWith(
    RoutePointEntity value,
    $Res Function(RoutePointEntity) then,
  ) = _$RoutePointEntityCopyWithImpl<$Res, RoutePointEntity>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$RoutePointEntityCopyWithImpl<$Res, $Val extends RoutePointEntity>
    implements $RoutePointEntityCopyWith<$Res> {
  _$RoutePointEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoutePointEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lat = null, Object? lng = null}) {
    return _then(
      _value.copyWith(
            lat: null == lat
                ? _value.lat
                : lat // ignore: cast_nullable_to_non_nullable
                      as double,
            lng: null == lng
                ? _value.lng
                : lng // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RoutePointEntityImplCopyWith<$Res>
    implements $RoutePointEntityCopyWith<$Res> {
  factory _$$RoutePointEntityImplCopyWith(
    _$RoutePointEntityImpl value,
    $Res Function(_$RoutePointEntityImpl) then,
  ) = __$$RoutePointEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$RoutePointEntityImplCopyWithImpl<$Res>
    extends _$RoutePointEntityCopyWithImpl<$Res, _$RoutePointEntityImpl>
    implements _$$RoutePointEntityImplCopyWith<$Res> {
  __$$RoutePointEntityImplCopyWithImpl(
    _$RoutePointEntityImpl _value,
    $Res Function(_$RoutePointEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RoutePointEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lat = null, Object? lng = null}) {
    return _then(
      _$RoutePointEntityImpl(
        lat: null == lat
            ? _value.lat
            : lat // ignore: cast_nullable_to_non_nullable
                  as double,
        lng: null == lng
            ? _value.lng
            : lng // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$RoutePointEntityImpl implements _RoutePointEntity {
  const _$RoutePointEntityImpl({required this.lat, required this.lng});

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'RoutePointEntity(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutePointEntityImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  /// Create a copy of RoutePointEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutePointEntityImplCopyWith<_$RoutePointEntityImpl> get copyWith =>
      __$$RoutePointEntityImplCopyWithImpl<_$RoutePointEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _RoutePointEntity implements RoutePointEntity {
  const factory _RoutePointEntity({
    required final double lat,
    required final double lng,
  }) = _$RoutePointEntityImpl;

  @override
  double get lat;
  @override
  double get lng;

  /// Create a copy of RoutePointEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutePointEntityImplCopyWith<_$RoutePointEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RideRequestStopEntity {
  int get id => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  /// Create a copy of RideRequestStopEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RideRequestStopEntityCopyWith<RideRequestStopEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideRequestStopEntityCopyWith<$Res> {
  factory $RideRequestStopEntityCopyWith(
    RideRequestStopEntity value,
    $Res Function(RideRequestStopEntity) then,
  ) = _$RideRequestStopEntityCopyWithImpl<$Res, RideRequestStopEntity>;
  @useResult
  $Res call({int id, int order, double lat, double lng, String address});
}

/// @nodoc
class _$RideRequestStopEntityCopyWithImpl<
  $Res,
  $Val extends RideRequestStopEntity
>
    implements $RideRequestStopEntityCopyWith<$Res> {
  _$RideRequestStopEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RideRequestStopEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? lat = null,
    Object? lng = null,
    Object? address = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
            lat: null == lat
                ? _value.lat
                : lat // ignore: cast_nullable_to_non_nullable
                      as double,
            lng: null == lng
                ? _value.lng
                : lng // ignore: cast_nullable_to_non_nullable
                      as double,
            address: null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RideRequestStopEntityImplCopyWith<$Res>
    implements $RideRequestStopEntityCopyWith<$Res> {
  factory _$$RideRequestStopEntityImplCopyWith(
    _$RideRequestStopEntityImpl value,
    $Res Function(_$RideRequestStopEntityImpl) then,
  ) = __$$RideRequestStopEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int order, double lat, double lng, String address});
}

/// @nodoc
class __$$RideRequestStopEntityImplCopyWithImpl<$Res>
    extends
        _$RideRequestStopEntityCopyWithImpl<$Res, _$RideRequestStopEntityImpl>
    implements _$$RideRequestStopEntityImplCopyWith<$Res> {
  __$$RideRequestStopEntityImplCopyWithImpl(
    _$RideRequestStopEntityImpl _value,
    $Res Function(_$RideRequestStopEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RideRequestStopEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? lat = null,
    Object? lng = null,
    Object? address = null,
  }) {
    return _then(
      _$RideRequestStopEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
        lat: null == lat
            ? _value.lat
            : lat // ignore: cast_nullable_to_non_nullable
                  as double,
        lng: null == lng
            ? _value.lng
            : lng // ignore: cast_nullable_to_non_nullable
                  as double,
        address: null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RideRequestStopEntityImpl implements _RideRequestStopEntity {
  const _$RideRequestStopEntityImpl({
    required this.id,
    required this.order,
    required this.lat,
    required this.lng,
    required this.address,
  });

  @override
  final int id;
  @override
  final int order;
  @override
  final double lat;
  @override
  final double lng;
  @override
  final String address;

  @override
  String toString() {
    return 'RideRequestStopEntity(id: $id, order: $order, lat: $lat, lng: $lng, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RideRequestStopEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, order, lat, lng, address);

  /// Create a copy of RideRequestStopEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RideRequestStopEntityImplCopyWith<_$RideRequestStopEntityImpl>
  get copyWith =>
      __$$RideRequestStopEntityImplCopyWithImpl<_$RideRequestStopEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _RideRequestStopEntity implements RideRequestStopEntity {
  const factory _RideRequestStopEntity({
    required final int id,
    required final int order,
    required final double lat,
    required final double lng,
    required final String address,
  }) = _$RideRequestStopEntityImpl;

  @override
  int get id;
  @override
  int get order;
  @override
  double get lat;
  @override
  double get lng;
  @override
  String get address;

  /// Create a copy of RideRequestStopEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RideRequestStopEntityImplCopyWith<_$RideRequestStopEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
