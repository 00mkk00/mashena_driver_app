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
  int get id => throw _privateConstructorUsedError;
  int get riderProfileId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get pickupLat => throw _privateConstructorUsedError;
  String get pickupLng => throw _privateConstructorUsedError;
  String get pickupAddress => throw _privateConstructorUsedError;
  String get destLat => throw _privateConstructorUsedError;
  String get destLng => throw _privateConstructorUsedError;
  String get destAddress => throw _privateConstructorUsedError;
  int get vehicleTypeId => throw _privateConstructorUsedError;
  String get submittedAt => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  List<RideRequestStopModel> get stops => throw _privateConstructorUsedError;

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
    int id,
    int riderProfileId,
    String status,
    String pickupLat,
    String pickupLng,
    String pickupAddress,
    String destLat,
    String destLng,
    String destAddress,
    int vehicleTypeId,
    String submittedAt,
    String createdAt,
    String updatedAt,
    List<RideRequestStopModel> stops,
  });
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
                      as String,
            pickupLng: null == pickupLng
                ? _value.pickupLng
                : pickupLng // ignore: cast_nullable_to_non_nullable
                      as String,
            pickupAddress: null == pickupAddress
                ? _value.pickupAddress
                : pickupAddress // ignore: cast_nullable_to_non_nullable
                      as String,
            destLat: null == destLat
                ? _value.destLat
                : destLat // ignore: cast_nullable_to_non_nullable
                      as String,
            destLng: null == destLng
                ? _value.destLng
                : destLng // ignore: cast_nullable_to_non_nullable
                      as String,
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
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String,
            stops: null == stops
                ? _value.stops
                : stops // ignore: cast_nullable_to_non_nullable
                      as List<RideRequestStopModel>,
          )
          as $Val,
    );
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
    int id,
    int riderProfileId,
    String status,
    String pickupLat,
    String pickupLng,
    String pickupAddress,
    String destLat,
    String destLng,
    String destAddress,
    int vehicleTypeId,
    String submittedAt,
    String createdAt,
    String updatedAt,
    List<RideRequestStopModel> stops,
  });
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
  }) {
    return _then(
      _$RideRequestModelImpl(
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
                  as String,
        pickupLng: null == pickupLng
            ? _value.pickupLng
            : pickupLng // ignore: cast_nullable_to_non_nullable
                  as String,
        pickupAddress: null == pickupAddress
            ? _value.pickupAddress
            : pickupAddress // ignore: cast_nullable_to_non_nullable
                  as String,
        destLat: null == destLat
            ? _value.destLat
            : destLat // ignore: cast_nullable_to_non_nullable
                  as String,
        destLng: null == destLng
            ? _value.destLng
            : destLng // ignore: cast_nullable_to_non_nullable
                  as String,
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
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String,
        stops: null == stops
            ? _value._stops
            : stops // ignore: cast_nullable_to_non_nullable
                  as List<RideRequestStopModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RideRequestModelImpl implements _RideRequestModel {
  const _$RideRequestModelImpl({
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
    required final List<RideRequestStopModel> stops,
  }) : _stops = stops;

  factory _$RideRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RideRequestModelImplFromJson(json);

  @override
  final int id;
  @override
  final int riderProfileId;
  @override
  final String status;
  @override
  final String pickupLat;
  @override
  final String pickupLng;
  @override
  final String pickupAddress;
  @override
  final String destLat;
  @override
  final String destLng;
  @override
  final String destAddress;
  @override
  final int vehicleTypeId;
  @override
  final String submittedAt;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  final List<RideRequestStopModel> _stops;
  @override
  List<RideRequestStopModel> get stops {
    if (_stops is EqualUnmodifiableListView) return _stops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stops);
  }

  @override
  String toString() {
    return 'RideRequestModel(id: $id, riderProfileId: $riderProfileId, status: $status, pickupLat: $pickupLat, pickupLng: $pickupLng, pickupAddress: $pickupAddress, destLat: $destLat, destLng: $destLng, destAddress: $destAddress, vehicleTypeId: $vehicleTypeId, submittedAt: $submittedAt, createdAt: $createdAt, updatedAt: $updatedAt, stops: $stops)';
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
            const DeepCollectionEquality().equals(other._stops, _stops));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
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
  );

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
    required final int id,
    required final int riderProfileId,
    required final String status,
    required final String pickupLat,
    required final String pickupLng,
    required final String pickupAddress,
    required final String destLat,
    required final String destLng,
    required final String destAddress,
    required final int vehicleTypeId,
    required final String submittedAt,
    required final String createdAt,
    required final String updatedAt,
    required final List<RideRequestStopModel> stops,
  }) = _$RideRequestModelImpl;

  factory _RideRequestModel.fromJson(Map<String, dynamic> json) =
      _$RideRequestModelImpl.fromJson;

  @override
  int get id;
  @override
  int get riderProfileId;
  @override
  String get status;
  @override
  String get pickupLat;
  @override
  String get pickupLng;
  @override
  String get pickupAddress;
  @override
  String get destLat;
  @override
  String get destLng;
  @override
  String get destAddress;
  @override
  int get vehicleTypeId;
  @override
  String get submittedAt;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  List<RideRequestStopModel> get stops;

  /// Create a copy of RideRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RideRequestModelImplCopyWith<_$RideRequestModelImpl> get copyWith =>
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
