// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RideRequestModel _$RideRequestModelFromJson(Map<String, dynamic> json) {
  return _RideRequestModel.fromJson(json);
}

/// @nodoc
mixin _$RideRequestModel {
  int? get id => throw _privateConstructorUsedError;
  int? get riderProfileId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get pickupLat => throw _privateConstructorUsedError;
  String? get pickupLng => throw _privateConstructorUsedError;
  String? get pickupAddress => throw _privateConstructorUsedError;
  String? get destLat => throw _privateConstructorUsedError;
  String? get destLng => throw _privateConstructorUsedError;
  String? get destAddress => throw _privateConstructorUsedError;
  int? get vehicleTypeId => throw _privateConstructorUsedError;
  String? get submittedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  List<RideRequestStopModel>? get stops => throw _privateConstructorUsedError;
  int? get rideRequestId => throw _privateConstructorUsedError;
  double? get estimatedDistanceKm => throw _privateConstructorUsedError;
  int? get estimatedDurationSec => throw _privateConstructorUsedError;
  bool? get isNight => throw _privateConstructorUsedError;
  String? get estimatedFare => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  RouteGeometryModel? get routeGeometry => throw _privateConstructorUsedError;

  /// Serializes this RideRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RideRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RideRequestModelCopyWith<RideRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideRequestModelCopyWith<$Res> {
  factory $RideRequestModelCopyWith(
    RideRequestModel value,
    $Res Function(RideRequestModel) then,
  ) = _$RideRequestModelCopyWithImpl<$Res, RideRequestModel>;
  @useResult
  $Res call({
    int? id,
    int? riderProfileId,
    String? status,
    String? pickupLat,
    String? pickupLng,
    String? pickupAddress,
    String? destLat,
    String? destLng,
    String? destAddress,
    int? vehicleTypeId,
    String? submittedAt,
    String? createdAt,
    String? updatedAt,
    List<RideRequestStopModel>? stops,
    int? rideRequestId,
    double? estimatedDistanceKm,
    int? estimatedDurationSec,
    bool? isNight,
    String? estimatedFare,
    String? currency,
    RouteGeometryModel? routeGeometry,
  });

  $RouteGeometryModelCopyWith<$Res>? get routeGeometry;
}

/// @nodoc
class _$RideRequestModelCopyWithImpl<$Res, $Val extends RideRequestModel>
    implements $RideRequestModelCopyWith<$Res> {
  _$RideRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RideRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? riderProfileId = freezed,
    Object? status = freezed,
    Object? pickupLat = freezed,
    Object? pickupLng = freezed,
    Object? pickupAddress = freezed,
    Object? destLat = freezed,
    Object? destLng = freezed,
    Object? destAddress = freezed,
    Object? vehicleTypeId = freezed,
    Object? submittedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? stops = freezed,
    Object? rideRequestId = freezed,
    Object? estimatedDistanceKm = freezed,
    Object? estimatedDurationSec = freezed,
    Object? isNight = freezed,
    Object? estimatedFare = freezed,
    Object? currency = freezed,
    Object? routeGeometry = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            riderProfileId: freezed == riderProfileId
                ? _value.riderProfileId
                : riderProfileId // ignore: cast_nullable_to_non_nullable
                      as int?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            pickupLat: freezed == pickupLat
                ? _value.pickupLat
                : pickupLat // ignore: cast_nullable_to_non_nullable
                      as String?,
            pickupLng: freezed == pickupLng
                ? _value.pickupLng
                : pickupLng // ignore: cast_nullable_to_non_nullable
                      as String?,
            pickupAddress: freezed == pickupAddress
                ? _value.pickupAddress
                : pickupAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            destLat: freezed == destLat
                ? _value.destLat
                : destLat // ignore: cast_nullable_to_non_nullable
                      as String?,
            destLng: freezed == destLng
                ? _value.destLng
                : destLng // ignore: cast_nullable_to_non_nullable
                      as String?,
            destAddress: freezed == destAddress
                ? _value.destAddress
                : destAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            vehicleTypeId: freezed == vehicleTypeId
                ? _value.vehicleTypeId
                : vehicleTypeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            submittedAt: freezed == submittedAt
                ? _value.submittedAt
                : submittedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            stops: freezed == stops
                ? _value.stops
                : stops // ignore: cast_nullable_to_non_nullable
                      as List<RideRequestStopModel>?,
            rideRequestId: freezed == rideRequestId
                ? _value.rideRequestId
                : rideRequestId // ignore: cast_nullable_to_non_nullable
                      as int?,
            estimatedDistanceKm: freezed == estimatedDistanceKm
                ? _value.estimatedDistanceKm
                : estimatedDistanceKm // ignore: cast_nullable_to_non_nullable
                      as double?,
            estimatedDurationSec: freezed == estimatedDurationSec
                ? _value.estimatedDurationSec
                : estimatedDurationSec // ignore: cast_nullable_to_non_nullable
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
                      as RouteGeometryModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of RideRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RouteGeometryModelCopyWith<$Res>? get routeGeometry {
    if (_value.routeGeometry == null) {
      return null;
    }

    return $RouteGeometryModelCopyWith<$Res>(_value.routeGeometry!, (value) {
      return _then(_value.copyWith(routeGeometry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RideRequestModelImplCopyWith<$Res>
    implements $RideRequestModelCopyWith<$Res> {
  factory _$$RideRequestModelImplCopyWith(
    _$RideRequestModelImpl value,
    $Res Function(_$RideRequestModelImpl) then,
  ) = __$$RideRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    int? riderProfileId,
    String? status,
    String? pickupLat,
    String? pickupLng,
    String? pickupAddress,
    String? destLat,
    String? destLng,
    String? destAddress,
    int? vehicleTypeId,
    String? submittedAt,
    String? createdAt,
    String? updatedAt,
    List<RideRequestStopModel>? stops,
    int? rideRequestId,
    double? estimatedDistanceKm,
    int? estimatedDurationSec,
    bool? isNight,
    String? estimatedFare,
    String? currency,
    RouteGeometryModel? routeGeometry,
  });

  @override
  $RouteGeometryModelCopyWith<$Res>? get routeGeometry;
}

/// @nodoc
class __$$RideRequestModelImplCopyWithImpl<$Res>
    extends _$RideRequestModelCopyWithImpl<$Res, _$RideRequestModelImpl>
    implements _$$RideRequestModelImplCopyWith<$Res> {
  __$$RideRequestModelImplCopyWithImpl(
    _$RideRequestModelImpl _value,
    $Res Function(_$RideRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RideRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? riderProfileId = freezed,
    Object? status = freezed,
    Object? pickupLat = freezed,
    Object? pickupLng = freezed,
    Object? pickupAddress = freezed,
    Object? destLat = freezed,
    Object? destLng = freezed,
    Object? destAddress = freezed,
    Object? vehicleTypeId = freezed,
    Object? submittedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? stops = freezed,
    Object? rideRequestId = freezed,
    Object? estimatedDistanceKm = freezed,
    Object? estimatedDurationSec = freezed,
    Object? isNight = freezed,
    Object? estimatedFare = freezed,
    Object? currency = freezed,
    Object? routeGeometry = freezed,
  }) {
    return _then(
      _$RideRequestModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        riderProfileId: freezed == riderProfileId
            ? _value.riderProfileId
            : riderProfileId // ignore: cast_nullable_to_non_nullable
                  as int?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        pickupLat: freezed == pickupLat
            ? _value.pickupLat
            : pickupLat // ignore: cast_nullable_to_non_nullable
                  as String?,
        pickupLng: freezed == pickupLng
            ? _value.pickupLng
            : pickupLng // ignore: cast_nullable_to_non_nullable
                  as String?,
        pickupAddress: freezed == pickupAddress
            ? _value.pickupAddress
            : pickupAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        destLat: freezed == destLat
            ? _value.destLat
            : destLat // ignore: cast_nullable_to_non_nullable
                  as String?,
        destLng: freezed == destLng
            ? _value.destLng
            : destLng // ignore: cast_nullable_to_non_nullable
                  as String?,
        destAddress: freezed == destAddress
            ? _value.destAddress
            : destAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        vehicleTypeId: freezed == vehicleTypeId
            ? _value.vehicleTypeId
            : vehicleTypeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        submittedAt: freezed == submittedAt
            ? _value.submittedAt
            : submittedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        stops: freezed == stops
            ? _value._stops
            : stops // ignore: cast_nullable_to_non_nullable
                  as List<RideRequestStopModel>?,
        rideRequestId: freezed == rideRequestId
            ? _value.rideRequestId
            : rideRequestId // ignore: cast_nullable_to_non_nullable
                  as int?,
        estimatedDistanceKm: freezed == estimatedDistanceKm
            ? _value.estimatedDistanceKm
            : estimatedDistanceKm // ignore: cast_nullable_to_non_nullable
                  as double?,
        estimatedDurationSec: freezed == estimatedDurationSec
            ? _value.estimatedDurationSec
            : estimatedDurationSec // ignore: cast_nullable_to_non_nullable
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
                  as RouteGeometryModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RideRequestModelImpl implements _RideRequestModel {
  const _$RideRequestModelImpl({
    this.id,
    this.riderProfileId,
    this.status,
    this.pickupLat,
    this.pickupLng,
    this.pickupAddress,
    this.destLat,
    this.destLng,
    this.destAddress,
    this.vehicleTypeId,
    this.submittedAt,
    this.createdAt,
    this.updatedAt,
    final List<RideRequestStopModel>? stops,
    this.rideRequestId,
    this.estimatedDistanceKm,
    this.estimatedDurationSec,
    this.isNight,
    this.estimatedFare,
    this.currency,
    this.routeGeometry,
  }) : _stops = stops;

  factory _$RideRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RideRequestModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? riderProfileId;
  @override
  final String? status;
  @override
  final String? pickupLat;
  @override
  final String? pickupLng;
  @override
  final String? pickupAddress;
  @override
  final String? destLat;
  @override
  final String? destLng;
  @override
  final String? destAddress;
  @override
  final int? vehicleTypeId;
  @override
  final String? submittedAt;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  final List<RideRequestStopModel>? _stops;
  @override
  List<RideRequestStopModel>? get stops {
    final value = _stops;
    if (value == null) return null;
    if (_stops is EqualUnmodifiableListView) return _stops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? rideRequestId;
  @override
  final double? estimatedDistanceKm;
  @override
  final int? estimatedDurationSec;
  @override
  final bool? isNight;
  @override
  final String? estimatedFare;
  @override
  final String? currency;
  @override
  final RouteGeometryModel? routeGeometry;

  @override
  String toString() {
    return 'RideRequestModel(id: $id, riderProfileId: $riderProfileId, status: $status, pickupLat: $pickupLat, pickupLng: $pickupLng, pickupAddress: $pickupAddress, destLat: $destLat, destLng: $destLng, destAddress: $destAddress, vehicleTypeId: $vehicleTypeId, submittedAt: $submittedAt, createdAt: $createdAt, updatedAt: $updatedAt, stops: $stops, rideRequestId: $rideRequestId, estimatedDistanceKm: $estimatedDistanceKm, estimatedDurationSec: $estimatedDurationSec, isNight: $isNight, estimatedFare: $estimatedFare, currency: $currency, routeGeometry: $routeGeometry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RideRequestModelImpl &&
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
            (identical(other.estimatedDistanceKm, estimatedDistanceKm) ||
                other.estimatedDistanceKm == estimatedDistanceKm) &&
            (identical(other.estimatedDurationSec, estimatedDurationSec) ||
                other.estimatedDurationSec == estimatedDurationSec) &&
            (identical(other.isNight, isNight) || other.isNight == isNight) &&
            (identical(other.estimatedFare, estimatedFare) ||
                other.estimatedFare == estimatedFare) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.routeGeometry, routeGeometry) ||
                other.routeGeometry == routeGeometry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    estimatedDistanceKm,
    estimatedDurationSec,
    isNight,
    estimatedFare,
    currency,
    routeGeometry,
  ]);

  /// Create a copy of RideRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RideRequestModelImplCopyWith<_$RideRequestModelImpl> get copyWith =>
      __$$RideRequestModelImplCopyWithImpl<_$RideRequestModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RideRequestModelImplToJson(this);
  }
}

abstract class _RideRequestModel implements RideRequestModel {
  const factory _RideRequestModel({
    final int? id,
    final int? riderProfileId,
    final String? status,
    final String? pickupLat,
    final String? pickupLng,
    final String? pickupAddress,
    final String? destLat,
    final String? destLng,
    final String? destAddress,
    final int? vehicleTypeId,
    final String? submittedAt,
    final String? createdAt,
    final String? updatedAt,
    final List<RideRequestStopModel>? stops,
    final int? rideRequestId,
    final double? estimatedDistanceKm,
    final int? estimatedDurationSec,
    final bool? isNight,
    final String? estimatedFare,
    final String? currency,
    final RouteGeometryModel? routeGeometry,
  }) = _$RideRequestModelImpl;

  factory _RideRequestModel.fromJson(Map<String, dynamic> json) =
      _$RideRequestModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get riderProfileId;
  @override
  String? get status;
  @override
  String? get pickupLat;
  @override
  String? get pickupLng;
  @override
  String? get pickupAddress;
  @override
  String? get destLat;
  @override
  String? get destLng;
  @override
  String? get destAddress;
  @override
  int? get vehicleTypeId;
  @override
  String? get submittedAt;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  List<RideRequestStopModel>? get stops;
  @override
  int? get rideRequestId;
  @override
  double? get estimatedDistanceKm;
  @override
  int? get estimatedDurationSec;
  @override
  bool? get isNight;
  @override
  String? get estimatedFare;
  @override
  String? get currency;
  @override
  RouteGeometryModel? get routeGeometry;

  /// Create a copy of RideRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RideRequestModelImplCopyWith<_$RideRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RouteGeometryModel _$RouteGeometryModelFromJson(Map<String, dynamic> json) {
  return _RouteGeometryModel.fromJson(json);
}

/// @nodoc
mixin _$RouteGeometryModel {
  double get distanceMeters => throw _privateConstructorUsedError;
  double get durationSeconds => throw _privateConstructorUsedError;
  List<RoutePointModel> get points => throw _privateConstructorUsedError;

  /// Serializes this RouteGeometryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RouteGeometryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteGeometryModelCopyWith<RouteGeometryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteGeometryModelCopyWith<$Res> {
  factory $RouteGeometryModelCopyWith(
    RouteGeometryModel value,
    $Res Function(RouteGeometryModel) then,
  ) = _$RouteGeometryModelCopyWithImpl<$Res, RouteGeometryModel>;
  @useResult
  $Res call({
    double distanceMeters,
    double durationSeconds,
    List<RoutePointModel> points,
  });
}

/// @nodoc
class _$RouteGeometryModelCopyWithImpl<$Res, $Val extends RouteGeometryModel>
    implements $RouteGeometryModelCopyWith<$Res> {
  _$RouteGeometryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteGeometryModel
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
                      as List<RoutePointModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RouteGeometryModelImplCopyWith<$Res>
    implements $RouteGeometryModelCopyWith<$Res> {
  factory _$$RouteGeometryModelImplCopyWith(
    _$RouteGeometryModelImpl value,
    $Res Function(_$RouteGeometryModelImpl) then,
  ) = __$$RouteGeometryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double distanceMeters,
    double durationSeconds,
    List<RoutePointModel> points,
  });
}

/// @nodoc
class __$$RouteGeometryModelImplCopyWithImpl<$Res>
    extends _$RouteGeometryModelCopyWithImpl<$Res, _$RouteGeometryModelImpl>
    implements _$$RouteGeometryModelImplCopyWith<$Res> {
  __$$RouteGeometryModelImplCopyWithImpl(
    _$RouteGeometryModelImpl _value,
    $Res Function(_$RouteGeometryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteGeometryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceMeters = null,
    Object? durationSeconds = null,
    Object? points = null,
  }) {
    return _then(
      _$RouteGeometryModelImpl(
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
                  as List<RoutePointModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteGeometryModelImpl implements _RouteGeometryModel {
  const _$RouteGeometryModelImpl({
    required this.distanceMeters,
    required this.durationSeconds,
    required final List<RoutePointModel> points,
  }) : _points = points;

  factory _$RouteGeometryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteGeometryModelImplFromJson(json);

  @override
  final double distanceMeters;
  @override
  final double durationSeconds;
  final List<RoutePointModel> _points;
  @override
  List<RoutePointModel> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString() {
    return 'RouteGeometryModel(distanceMeters: $distanceMeters, durationSeconds: $durationSeconds, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteGeometryModelImpl &&
            (identical(other.distanceMeters, distanceMeters) ||
                other.distanceMeters == distanceMeters) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    distanceMeters,
    durationSeconds,
    const DeepCollectionEquality().hash(_points),
  );

  /// Create a copy of RouteGeometryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteGeometryModelImplCopyWith<_$RouteGeometryModelImpl> get copyWith =>
      __$$RouteGeometryModelImplCopyWithImpl<_$RouteGeometryModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteGeometryModelImplToJson(this);
  }
}

abstract class _RouteGeometryModel implements RouteGeometryModel {
  const factory _RouteGeometryModel({
    required final double distanceMeters,
    required final double durationSeconds,
    required final List<RoutePointModel> points,
  }) = _$RouteGeometryModelImpl;

  factory _RouteGeometryModel.fromJson(Map<String, dynamic> json) =
      _$RouteGeometryModelImpl.fromJson;

  @override
  double get distanceMeters;
  @override
  double get durationSeconds;
  @override
  List<RoutePointModel> get points;

  /// Create a copy of RouteGeometryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteGeometryModelImplCopyWith<_$RouteGeometryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoutePointModel _$RoutePointModelFromJson(Map<String, dynamic> json) {
  return _RoutePointModel.fromJson(json);
}

/// @nodoc
mixin _$RoutePointModel {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  /// Serializes this RoutePointModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoutePointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoutePointModelCopyWith<RoutePointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutePointModelCopyWith<$Res> {
  factory $RoutePointModelCopyWith(
    RoutePointModel value,
    $Res Function(RoutePointModel) then,
  ) = _$RoutePointModelCopyWithImpl<$Res, RoutePointModel>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$RoutePointModelCopyWithImpl<$Res, $Val extends RoutePointModel>
    implements $RoutePointModelCopyWith<$Res> {
  _$RoutePointModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoutePointModel
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
abstract class _$$RoutePointModelImplCopyWith<$Res>
    implements $RoutePointModelCopyWith<$Res> {
  factory _$$RoutePointModelImplCopyWith(
    _$RoutePointModelImpl value,
    $Res Function(_$RoutePointModelImpl) then,
  ) = __$$RoutePointModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$RoutePointModelImplCopyWithImpl<$Res>
    extends _$RoutePointModelCopyWithImpl<$Res, _$RoutePointModelImpl>
    implements _$$RoutePointModelImplCopyWith<$Res> {
  __$$RoutePointModelImplCopyWithImpl(
    _$RoutePointModelImpl _value,
    $Res Function(_$RoutePointModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RoutePointModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lat = null, Object? lng = null}) {
    return _then(
      _$RoutePointModelImpl(
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
@JsonSerializable()
class _$RoutePointModelImpl implements _RoutePointModel {
  const _$RoutePointModelImpl({required this.lat, required this.lng});

  factory _$RoutePointModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutePointModelImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'RoutePointModel(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutePointModelImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  /// Create a copy of RoutePointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutePointModelImplCopyWith<_$RoutePointModelImpl> get copyWith =>
      __$$RoutePointModelImplCopyWithImpl<_$RoutePointModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutePointModelImplToJson(this);
  }
}

abstract class _RoutePointModel implements RoutePointModel {
  const factory _RoutePointModel({
    required final double lat,
    required final double lng,
  }) = _$RoutePointModelImpl;

  factory _RoutePointModel.fromJson(Map<String, dynamic> json) =
      _$RoutePointModelImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;

  /// Create a copy of RoutePointModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutePointModelImplCopyWith<_$RoutePointModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RideRequestStopModel _$RideRequestStopModelFromJson(Map<String, dynamic> json) {
  return _RideRequestStopModel.fromJson(json);
}

/// @nodoc
mixin _$RideRequestStopModel {
  int get id => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  /// Serializes this RideRequestStopModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RideRequestStopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RideRequestStopModelCopyWith<RideRequestStopModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideRequestStopModelCopyWith<$Res> {
  factory $RideRequestStopModelCopyWith(
    RideRequestStopModel value,
    $Res Function(RideRequestStopModel) then,
  ) = _$RideRequestStopModelCopyWithImpl<$Res, RideRequestStopModel>;
  @useResult
  $Res call({int id, int order, String lat, String lng, String address});
}

/// @nodoc
class _$RideRequestStopModelCopyWithImpl<
  $Res,
  $Val extends RideRequestStopModel
>
    implements $RideRequestStopModelCopyWith<$Res> {
  _$RideRequestStopModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RideRequestStopModel
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
                      as String,
            lng: null == lng
                ? _value.lng
                : lng // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$RideRequestStopModelImplCopyWith<$Res>
    implements $RideRequestStopModelCopyWith<$Res> {
  factory _$$RideRequestStopModelImplCopyWith(
    _$RideRequestStopModelImpl value,
    $Res Function(_$RideRequestStopModelImpl) then,
  ) = __$$RideRequestStopModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int order, String lat, String lng, String address});
}

/// @nodoc
class __$$RideRequestStopModelImplCopyWithImpl<$Res>
    extends _$RideRequestStopModelCopyWithImpl<$Res, _$RideRequestStopModelImpl>
    implements _$$RideRequestStopModelImplCopyWith<$Res> {
  __$$RideRequestStopModelImplCopyWithImpl(
    _$RideRequestStopModelImpl _value,
    $Res Function(_$RideRequestStopModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RideRequestStopModel
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
      _$RideRequestStopModelImpl(
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
                  as String,
        lng: null == lng
            ? _value.lng
            : lng // ignore: cast_nullable_to_non_nullable
                  as String,
        address: null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RideRequestStopModelImpl implements _RideRequestStopModel {
  const _$RideRequestStopModelImpl({
    required this.id,
    required this.order,
    required this.lat,
    required this.lng,
    required this.address,
  });

  factory _$RideRequestStopModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RideRequestStopModelImplFromJson(json);

  @override
  final int id;
  @override
  final int order;
  @override
  final String lat;
  @override
  final String lng;
  @override
  final String address;

  @override
  String toString() {
    return 'RideRequestStopModel(id: $id, order: $order, lat: $lat, lng: $lng, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RideRequestStopModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, order, lat, lng, address);

  /// Create a copy of RideRequestStopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RideRequestStopModelImplCopyWith<_$RideRequestStopModelImpl>
  get copyWith =>
      __$$RideRequestStopModelImplCopyWithImpl<_$RideRequestStopModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RideRequestStopModelImplToJson(this);
  }
}

abstract class _RideRequestStopModel implements RideRequestStopModel {
  const factory _RideRequestStopModel({
    required final int id,
    required final int order,
    required final String lat,
    required final String lng,
    required final String address,
  }) = _$RideRequestStopModelImpl;

  factory _RideRequestStopModel.fromJson(Map<String, dynamic> json) =
      _$RideRequestStopModelImpl.fromJson;

  @override
  int get id;
  @override
  int get order;
  @override
  String get lat;
  @override
  String get lng;
  @override
  String get address;

  /// Create a copy of RideRequestStopModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RideRequestStopModelImplCopyWith<_$RideRequestStopModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
