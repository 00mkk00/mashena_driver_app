// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_ride_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SharedRidePassengerModel _$SharedRidePassengerModelFromJson(
  Map<String, dynamic> json,
) {
  return _SharedRidePassengerModel.fromJson(json);
}

/// @nodoc
mixin _$SharedRidePassengerModel {
  int? get id => throw _privateConstructorUsedError;
  int? get sharedRideId => throw _privateConstructorUsedError;
  int? get riderProfileId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get paymentStatus => throw _privateConstructorUsedError;
  int? get seatsNeeded => throw _privateConstructorUsedError;
  int? get activeSeats => throw _privateConstructorUsedError;
  num? get totalPaidFare => throw _privateConstructorUsedError;
  num? get finalDistanceKm => throw _privateConstructorUsedError;
  num? get finalDurationSec => throw _privateConstructorUsedError;
  num? get finalFare => throw _privateConstructorUsedError;
  String? get joinedAt => throw _privateConstructorUsedError;
  String? get checkedInAt => throw _privateConstructorUsedError;
  String? get onBoardAt => throw _privateConstructorUsedError;
  String? get droppedOffAt => throw _privateConstructorUsedError;
  String? get canceledAt => throw _privateConstructorUsedError;
  String? get removedAt => throw _privateConstructorUsedError;
  String? get removeReason => throw _privateConstructorUsedError;

  /// Serializes this SharedRidePassengerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SharedRidePassengerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SharedRidePassengerModelCopyWith<SharedRidePassengerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedRidePassengerModelCopyWith<$Res> {
  factory $SharedRidePassengerModelCopyWith(
    SharedRidePassengerModel value,
    $Res Function(SharedRidePassengerModel) then,
  ) = _$SharedRidePassengerModelCopyWithImpl<$Res, SharedRidePassengerModel>;
  @useResult
  $Res call({
    int? id,
    int? sharedRideId,
    int? riderProfileId,
    String? status,
    String? paymentStatus,
    int? seatsNeeded,
    int? activeSeats,
    num? totalPaidFare,
    num? finalDistanceKm,
    num? finalDurationSec,
    num? finalFare,
    String? joinedAt,
    String? checkedInAt,
    String? onBoardAt,
    String? droppedOffAt,
    String? canceledAt,
    String? removedAt,
    String? removeReason,
  });
}

/// @nodoc
class _$SharedRidePassengerModelCopyWithImpl<
  $Res,
  $Val extends SharedRidePassengerModel
>
    implements $SharedRidePassengerModelCopyWith<$Res> {
  _$SharedRidePassengerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SharedRidePassengerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sharedRideId = freezed,
    Object? riderProfileId = freezed,
    Object? status = freezed,
    Object? paymentStatus = freezed,
    Object? seatsNeeded = freezed,
    Object? activeSeats = freezed,
    Object? totalPaidFare = freezed,
    Object? finalDistanceKm = freezed,
    Object? finalDurationSec = freezed,
    Object? finalFare = freezed,
    Object? joinedAt = freezed,
    Object? checkedInAt = freezed,
    Object? onBoardAt = freezed,
    Object? droppedOffAt = freezed,
    Object? canceledAt = freezed,
    Object? removedAt = freezed,
    Object? removeReason = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            sharedRideId: freezed == sharedRideId
                ? _value.sharedRideId
                : sharedRideId // ignore: cast_nullable_to_non_nullable
                      as int?,
            riderProfileId: freezed == riderProfileId
                ? _value.riderProfileId
                : riderProfileId // ignore: cast_nullable_to_non_nullable
                      as int?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            paymentStatus: freezed == paymentStatus
                ? _value.paymentStatus
                : paymentStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
            seatsNeeded: freezed == seatsNeeded
                ? _value.seatsNeeded
                : seatsNeeded // ignore: cast_nullable_to_non_nullable
                      as int?,
            activeSeats: freezed == activeSeats
                ? _value.activeSeats
                : activeSeats // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalPaidFare: freezed == totalPaidFare
                ? _value.totalPaidFare
                : totalPaidFare // ignore: cast_nullable_to_non_nullable
                      as num?,
            finalDistanceKm: freezed == finalDistanceKm
                ? _value.finalDistanceKm
                : finalDistanceKm // ignore: cast_nullable_to_non_nullable
                      as num?,
            finalDurationSec: freezed == finalDurationSec
                ? _value.finalDurationSec
                : finalDurationSec // ignore: cast_nullable_to_non_nullable
                      as num?,
            finalFare: freezed == finalFare
                ? _value.finalFare
                : finalFare // ignore: cast_nullable_to_non_nullable
                      as num?,
            joinedAt: freezed == joinedAt
                ? _value.joinedAt
                : joinedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            checkedInAt: freezed == checkedInAt
                ? _value.checkedInAt
                : checkedInAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            onBoardAt: freezed == onBoardAt
                ? _value.onBoardAt
                : onBoardAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            droppedOffAt: freezed == droppedOffAt
                ? _value.droppedOffAt
                : droppedOffAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            canceledAt: freezed == canceledAt
                ? _value.canceledAt
                : canceledAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            removedAt: freezed == removedAt
                ? _value.removedAt
                : removedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            removeReason: freezed == removeReason
                ? _value.removeReason
                : removeReason // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SharedRidePassengerModelImplCopyWith<$Res>
    implements $SharedRidePassengerModelCopyWith<$Res> {
  factory _$$SharedRidePassengerModelImplCopyWith(
    _$SharedRidePassengerModelImpl value,
    $Res Function(_$SharedRidePassengerModelImpl) then,
  ) = __$$SharedRidePassengerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    int? sharedRideId,
    int? riderProfileId,
    String? status,
    String? paymentStatus,
    int? seatsNeeded,
    int? activeSeats,
    num? totalPaidFare,
    num? finalDistanceKm,
    num? finalDurationSec,
    num? finalFare,
    String? joinedAt,
    String? checkedInAt,
    String? onBoardAt,
    String? droppedOffAt,
    String? canceledAt,
    String? removedAt,
    String? removeReason,
  });
}

/// @nodoc
class __$$SharedRidePassengerModelImplCopyWithImpl<$Res>
    extends
        _$SharedRidePassengerModelCopyWithImpl<
          $Res,
          _$SharedRidePassengerModelImpl
        >
    implements _$$SharedRidePassengerModelImplCopyWith<$Res> {
  __$$SharedRidePassengerModelImplCopyWithImpl(
    _$SharedRidePassengerModelImpl _value,
    $Res Function(_$SharedRidePassengerModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SharedRidePassengerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sharedRideId = freezed,
    Object? riderProfileId = freezed,
    Object? status = freezed,
    Object? paymentStatus = freezed,
    Object? seatsNeeded = freezed,
    Object? activeSeats = freezed,
    Object? totalPaidFare = freezed,
    Object? finalDistanceKm = freezed,
    Object? finalDurationSec = freezed,
    Object? finalFare = freezed,
    Object? joinedAt = freezed,
    Object? checkedInAt = freezed,
    Object? onBoardAt = freezed,
    Object? droppedOffAt = freezed,
    Object? canceledAt = freezed,
    Object? removedAt = freezed,
    Object? removeReason = freezed,
  }) {
    return _then(
      _$SharedRidePassengerModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        sharedRideId: freezed == sharedRideId
            ? _value.sharedRideId
            : sharedRideId // ignore: cast_nullable_to_non_nullable
                  as int?,
        riderProfileId: freezed == riderProfileId
            ? _value.riderProfileId
            : riderProfileId // ignore: cast_nullable_to_non_nullable
                  as int?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        paymentStatus: freezed == paymentStatus
            ? _value.paymentStatus
            : paymentStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
        seatsNeeded: freezed == seatsNeeded
            ? _value.seatsNeeded
            : seatsNeeded // ignore: cast_nullable_to_non_nullable
                  as int?,
        activeSeats: freezed == activeSeats
            ? _value.activeSeats
            : activeSeats // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalPaidFare: freezed == totalPaidFare
            ? _value.totalPaidFare
            : totalPaidFare // ignore: cast_nullable_to_non_nullable
                  as num?,
        finalDistanceKm: freezed == finalDistanceKm
            ? _value.finalDistanceKm
            : finalDistanceKm // ignore: cast_nullable_to_non_nullable
                  as num?,
        finalDurationSec: freezed == finalDurationSec
            ? _value.finalDurationSec
            : finalDurationSec // ignore: cast_nullable_to_non_nullable
                  as num?,
        finalFare: freezed == finalFare
            ? _value.finalFare
            : finalFare // ignore: cast_nullable_to_non_nullable
                  as num?,
        joinedAt: freezed == joinedAt
            ? _value.joinedAt
            : joinedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        checkedInAt: freezed == checkedInAt
            ? _value.checkedInAt
            : checkedInAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        onBoardAt: freezed == onBoardAt
            ? _value.onBoardAt
            : onBoardAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        droppedOffAt: freezed == droppedOffAt
            ? _value.droppedOffAt
            : droppedOffAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        canceledAt: freezed == canceledAt
            ? _value.canceledAt
            : canceledAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        removedAt: freezed == removedAt
            ? _value.removedAt
            : removedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        removeReason: freezed == removeReason
            ? _value.removeReason
            : removeReason // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SharedRidePassengerModelImpl implements _SharedRidePassengerModel {
  const _$SharedRidePassengerModelImpl({
    this.id,
    this.sharedRideId,
    this.riderProfileId,
    this.status,
    this.paymentStatus,
    this.seatsNeeded,
    this.activeSeats,
    this.totalPaidFare,
    this.finalDistanceKm,
    this.finalDurationSec,
    this.finalFare,
    this.joinedAt,
    this.checkedInAt,
    this.onBoardAt,
    this.droppedOffAt,
    this.canceledAt,
    this.removedAt,
    this.removeReason,
  });

  factory _$SharedRidePassengerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SharedRidePassengerModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? sharedRideId;
  @override
  final int? riderProfileId;
  @override
  final String? status;
  @override
  final String? paymentStatus;
  @override
  final int? seatsNeeded;
  @override
  final int? activeSeats;
  @override
  final num? totalPaidFare;
  @override
  final num? finalDistanceKm;
  @override
  final num? finalDurationSec;
  @override
  final num? finalFare;
  @override
  final String? joinedAt;
  @override
  final String? checkedInAt;
  @override
  final String? onBoardAt;
  @override
  final String? droppedOffAt;
  @override
  final String? canceledAt;
  @override
  final String? removedAt;
  @override
  final String? removeReason;

  @override
  String toString() {
    return 'SharedRidePassengerModel(id: $id, sharedRideId: $sharedRideId, riderProfileId: $riderProfileId, status: $status, paymentStatus: $paymentStatus, seatsNeeded: $seatsNeeded, activeSeats: $activeSeats, totalPaidFare: $totalPaidFare, finalDistanceKm: $finalDistanceKm, finalDurationSec: $finalDurationSec, finalFare: $finalFare, joinedAt: $joinedAt, checkedInAt: $checkedInAt, onBoardAt: $onBoardAt, droppedOffAt: $droppedOffAt, canceledAt: $canceledAt, removedAt: $removedAt, removeReason: $removeReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedRidePassengerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sharedRideId, sharedRideId) ||
                other.sharedRideId == sharedRideId) &&
            (identical(other.riderProfileId, riderProfileId) ||
                other.riderProfileId == riderProfileId) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    sharedRideId,
    riderProfileId,
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
  );

  /// Create a copy of SharedRidePassengerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedRidePassengerModelImplCopyWith<_$SharedRidePassengerModelImpl>
  get copyWith =>
      __$$SharedRidePassengerModelImplCopyWithImpl<
        _$SharedRidePassengerModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SharedRidePassengerModelImplToJson(this);
  }
}

abstract class _SharedRidePassengerModel implements SharedRidePassengerModel {
  const factory _SharedRidePassengerModel({
    final int? id,
    final int? sharedRideId,
    final int? riderProfileId,
    final String? status,
    final String? paymentStatus,
    final int? seatsNeeded,
    final int? activeSeats,
    final num? totalPaidFare,
    final num? finalDistanceKm,
    final num? finalDurationSec,
    final num? finalFare,
    final String? joinedAt,
    final String? checkedInAt,
    final String? onBoardAt,
    final String? droppedOffAt,
    final String? canceledAt,
    final String? removedAt,
    final String? removeReason,
  }) = _$SharedRidePassengerModelImpl;

  factory _SharedRidePassengerModel.fromJson(Map<String, dynamic> json) =
      _$SharedRidePassengerModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get sharedRideId;
  @override
  int? get riderProfileId;
  @override
  String? get status;
  @override
  String? get paymentStatus;
  @override
  int? get seatsNeeded;
  @override
  int? get activeSeats;
  @override
  num? get totalPaidFare;
  @override
  num? get finalDistanceKm;
  @override
  num? get finalDurationSec;
  @override
  num? get finalFare;
  @override
  String? get joinedAt;
  @override
  String? get checkedInAt;
  @override
  String? get onBoardAt;
  @override
  String? get droppedOffAt;
  @override
  String? get canceledAt;
  @override
  String? get removedAt;
  @override
  String? get removeReason;

  /// Create a copy of SharedRidePassengerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharedRidePassengerModelImplCopyWith<_$SharedRidePassengerModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

SharedRideModel _$SharedRideModelFromJson(Map<String, dynamic> json) {
  return _SharedRideModel.fromJson(json);
}

/// @nodoc
mixin _$SharedRideModel {
  int? get id => throw _privateConstructorUsedError;
  int? get driverProfileId => throw _privateConstructorUsedError;
  int? get vehicleId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get endedBy => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  double? get originLat => throw _privateConstructorUsedError;
  double? get originLng => throw _privateConstructorUsedError;
  String? get originAddress => throw _privateConstructorUsedError;
  double? get destLat => throw _privateConstructorUsedError;
  double? get destLng => throw _privateConstructorUsedError;
  String? get destAddress => throw _privateConstructorUsedError;
  String? get departureTime => throw _privateConstructorUsedError;
  int? get maxPassengers => throw _privateConstructorUsedError;
  int? get occupiedSeats => throw _privateConstructorUsedError;
  num? get totalDistanceKm => throw _privateConstructorUsedError;
  num? get totalDurationSec => throw _privateConstructorUsedError;
  dynamic get routeGeometry => throw _privateConstructorUsedError;
  num? get actualDistanceKm => throw _privateConstructorUsedError;
  num? get actualDurationSec => throw _privateConstructorUsedError;
  dynamic get actualRouteGeometry => throw _privateConstructorUsedError;
  num? get baseTripFare => throw _privateConstructorUsedError;
  num? get remainingTripCost => throw _privateConstructorUsedError;
  int? get occupiedSeatsAtStart => throw _privateConstructorUsedError;
  num? get fullRouteSeatFare => throw _privateConstructorUsedError;
  num? get minimumSeatFare => throw _privateConstructorUsedError;
  String? get startedAt => throw _privateConstructorUsedError;
  String? get completedAt => throw _privateConstructorUsedError;
  String? get canceledAt => throw _privateConstructorUsedError;
  String? get cancellationReason => throw _privateConstructorUsedError;
  String? get endType => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  List<SharedRidePassengerModel>? get passengers =>
      throw _privateConstructorUsedError;

  /// Serializes this SharedRideModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SharedRideModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SharedRideModelCopyWith<SharedRideModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedRideModelCopyWith<$Res> {
  factory $SharedRideModelCopyWith(
    SharedRideModel value,
    $Res Function(SharedRideModel) then,
  ) = _$SharedRideModelCopyWithImpl<$Res, SharedRideModel>;
  @useResult
  $Res call({
    int? id,
    int? driverProfileId,
    int? vehicleId,
    String? status,
    String? endedBy,
    String? notes,
    double? originLat,
    double? originLng,
    String? originAddress,
    double? destLat,
    double? destLng,
    String? destAddress,
    String? departureTime,
    int? maxPassengers,
    int? occupiedSeats,
    num? totalDistanceKm,
    num? totalDurationSec,
    dynamic routeGeometry,
    num? actualDistanceKm,
    num? actualDurationSec,
    dynamic actualRouteGeometry,
    num? baseTripFare,
    num? remainingTripCost,
    int? occupiedSeatsAtStart,
    num? fullRouteSeatFare,
    num? minimumSeatFare,
    String? startedAt,
    String? completedAt,
    String? canceledAt,
    String? cancellationReason,
    String? endType,
    String? createdAt,
    List<SharedRidePassengerModel>? passengers,
  });
}

/// @nodoc
class _$SharedRideModelCopyWithImpl<$Res, $Val extends SharedRideModel>
    implements $SharedRideModelCopyWith<$Res> {
  _$SharedRideModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SharedRideModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? driverProfileId = freezed,
    Object? vehicleId = freezed,
    Object? status = freezed,
    Object? endedBy = freezed,
    Object? notes = freezed,
    Object? originLat = freezed,
    Object? originLng = freezed,
    Object? originAddress = freezed,
    Object? destLat = freezed,
    Object? destLng = freezed,
    Object? destAddress = freezed,
    Object? departureTime = freezed,
    Object? maxPassengers = freezed,
    Object? occupiedSeats = freezed,
    Object? totalDistanceKm = freezed,
    Object? totalDurationSec = freezed,
    Object? routeGeometry = freezed,
    Object? actualDistanceKm = freezed,
    Object? actualDurationSec = freezed,
    Object? actualRouteGeometry = freezed,
    Object? baseTripFare = freezed,
    Object? remainingTripCost = freezed,
    Object? occupiedSeatsAtStart = freezed,
    Object? fullRouteSeatFare = freezed,
    Object? minimumSeatFare = freezed,
    Object? startedAt = freezed,
    Object? completedAt = freezed,
    Object? canceledAt = freezed,
    Object? cancellationReason = freezed,
    Object? endType = freezed,
    Object? createdAt = freezed,
    Object? passengers = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            driverProfileId: freezed == driverProfileId
                ? _value.driverProfileId
                : driverProfileId // ignore: cast_nullable_to_non_nullable
                      as int?,
            vehicleId: freezed == vehicleId
                ? _value.vehicleId
                : vehicleId // ignore: cast_nullable_to_non_nullable
                      as int?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            endedBy: freezed == endedBy
                ? _value.endedBy
                : endedBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
            originLat: freezed == originLat
                ? _value.originLat
                : originLat // ignore: cast_nullable_to_non_nullable
                      as double?,
            originLng: freezed == originLng
                ? _value.originLng
                : originLng // ignore: cast_nullable_to_non_nullable
                      as double?,
            originAddress: freezed == originAddress
                ? _value.originAddress
                : originAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            destLat: freezed == destLat
                ? _value.destLat
                : destLat // ignore: cast_nullable_to_non_nullable
                      as double?,
            destLng: freezed == destLng
                ? _value.destLng
                : destLng // ignore: cast_nullable_to_non_nullable
                      as double?,
            destAddress: freezed == destAddress
                ? _value.destAddress
                : destAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            departureTime: freezed == departureTime
                ? _value.departureTime
                : departureTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            maxPassengers: freezed == maxPassengers
                ? _value.maxPassengers
                : maxPassengers // ignore: cast_nullable_to_non_nullable
                      as int?,
            occupiedSeats: freezed == occupiedSeats
                ? _value.occupiedSeats
                : occupiedSeats // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalDistanceKm: freezed == totalDistanceKm
                ? _value.totalDistanceKm
                : totalDistanceKm // ignore: cast_nullable_to_non_nullable
                      as num?,
            totalDurationSec: freezed == totalDurationSec
                ? _value.totalDurationSec
                : totalDurationSec // ignore: cast_nullable_to_non_nullable
                      as num?,
            routeGeometry: freezed == routeGeometry
                ? _value.routeGeometry
                : routeGeometry // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            actualDistanceKm: freezed == actualDistanceKm
                ? _value.actualDistanceKm
                : actualDistanceKm // ignore: cast_nullable_to_non_nullable
                      as num?,
            actualDurationSec: freezed == actualDurationSec
                ? _value.actualDurationSec
                : actualDurationSec // ignore: cast_nullable_to_non_nullable
                      as num?,
            actualRouteGeometry: freezed == actualRouteGeometry
                ? _value.actualRouteGeometry
                : actualRouteGeometry // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            baseTripFare: freezed == baseTripFare
                ? _value.baseTripFare
                : baseTripFare // ignore: cast_nullable_to_non_nullable
                      as num?,
            remainingTripCost: freezed == remainingTripCost
                ? _value.remainingTripCost
                : remainingTripCost // ignore: cast_nullable_to_non_nullable
                      as num?,
            occupiedSeatsAtStart: freezed == occupiedSeatsAtStart
                ? _value.occupiedSeatsAtStart
                : occupiedSeatsAtStart // ignore: cast_nullable_to_non_nullable
                      as int?,
            fullRouteSeatFare: freezed == fullRouteSeatFare
                ? _value.fullRouteSeatFare
                : fullRouteSeatFare // ignore: cast_nullable_to_non_nullable
                      as num?,
            minimumSeatFare: freezed == minimumSeatFare
                ? _value.minimumSeatFare
                : minimumSeatFare // ignore: cast_nullable_to_non_nullable
                      as num?,
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
            cancellationReason: freezed == cancellationReason
                ? _value.cancellationReason
                : cancellationReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            endType: freezed == endType
                ? _value.endType
                : endType // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            passengers: freezed == passengers
                ? _value.passengers
                : passengers // ignore: cast_nullable_to_non_nullable
                      as List<SharedRidePassengerModel>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SharedRideModelImplCopyWith<$Res>
    implements $SharedRideModelCopyWith<$Res> {
  factory _$$SharedRideModelImplCopyWith(
    _$SharedRideModelImpl value,
    $Res Function(_$SharedRideModelImpl) then,
  ) = __$$SharedRideModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    int? driverProfileId,
    int? vehicleId,
    String? status,
    String? endedBy,
    String? notes,
    double? originLat,
    double? originLng,
    String? originAddress,
    double? destLat,
    double? destLng,
    String? destAddress,
    String? departureTime,
    int? maxPassengers,
    int? occupiedSeats,
    num? totalDistanceKm,
    num? totalDurationSec,
    dynamic routeGeometry,
    num? actualDistanceKm,
    num? actualDurationSec,
    dynamic actualRouteGeometry,
    num? baseTripFare,
    num? remainingTripCost,
    int? occupiedSeatsAtStart,
    num? fullRouteSeatFare,
    num? minimumSeatFare,
    String? startedAt,
    String? completedAt,
    String? canceledAt,
    String? cancellationReason,
    String? endType,
    String? createdAt,
    List<SharedRidePassengerModel>? passengers,
  });
}

/// @nodoc
class __$$SharedRideModelImplCopyWithImpl<$Res>
    extends _$SharedRideModelCopyWithImpl<$Res, _$SharedRideModelImpl>
    implements _$$SharedRideModelImplCopyWith<$Res> {
  __$$SharedRideModelImplCopyWithImpl(
    _$SharedRideModelImpl _value,
    $Res Function(_$SharedRideModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SharedRideModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? driverProfileId = freezed,
    Object? vehicleId = freezed,
    Object? status = freezed,
    Object? endedBy = freezed,
    Object? notes = freezed,
    Object? originLat = freezed,
    Object? originLng = freezed,
    Object? originAddress = freezed,
    Object? destLat = freezed,
    Object? destLng = freezed,
    Object? destAddress = freezed,
    Object? departureTime = freezed,
    Object? maxPassengers = freezed,
    Object? occupiedSeats = freezed,
    Object? totalDistanceKm = freezed,
    Object? totalDurationSec = freezed,
    Object? routeGeometry = freezed,
    Object? actualDistanceKm = freezed,
    Object? actualDurationSec = freezed,
    Object? actualRouteGeometry = freezed,
    Object? baseTripFare = freezed,
    Object? remainingTripCost = freezed,
    Object? occupiedSeatsAtStart = freezed,
    Object? fullRouteSeatFare = freezed,
    Object? minimumSeatFare = freezed,
    Object? startedAt = freezed,
    Object? completedAt = freezed,
    Object? canceledAt = freezed,
    Object? cancellationReason = freezed,
    Object? endType = freezed,
    Object? createdAt = freezed,
    Object? passengers = freezed,
  }) {
    return _then(
      _$SharedRideModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        driverProfileId: freezed == driverProfileId
            ? _value.driverProfileId
            : driverProfileId // ignore: cast_nullable_to_non_nullable
                  as int?,
        vehicleId: freezed == vehicleId
            ? _value.vehicleId
            : vehicleId // ignore: cast_nullable_to_non_nullable
                  as int?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        endedBy: freezed == endedBy
            ? _value.endedBy
            : endedBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
        originLat: freezed == originLat
            ? _value.originLat
            : originLat // ignore: cast_nullable_to_non_nullable
                  as double?,
        originLng: freezed == originLng
            ? _value.originLng
            : originLng // ignore: cast_nullable_to_non_nullable
                  as double?,
        originAddress: freezed == originAddress
            ? _value.originAddress
            : originAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        destLat: freezed == destLat
            ? _value.destLat
            : destLat // ignore: cast_nullable_to_non_nullable
                  as double?,
        destLng: freezed == destLng
            ? _value.destLng
            : destLng // ignore: cast_nullable_to_non_nullable
                  as double?,
        destAddress: freezed == destAddress
            ? _value.destAddress
            : destAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        departureTime: freezed == departureTime
            ? _value.departureTime
            : departureTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        maxPassengers: freezed == maxPassengers
            ? _value.maxPassengers
            : maxPassengers // ignore: cast_nullable_to_non_nullable
                  as int?,
        occupiedSeats: freezed == occupiedSeats
            ? _value.occupiedSeats
            : occupiedSeats // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalDistanceKm: freezed == totalDistanceKm
            ? _value.totalDistanceKm
            : totalDistanceKm // ignore: cast_nullable_to_non_nullable
                  as num?,
        totalDurationSec: freezed == totalDurationSec
            ? _value.totalDurationSec
            : totalDurationSec // ignore: cast_nullable_to_non_nullable
                  as num?,
        routeGeometry: freezed == routeGeometry
            ? _value.routeGeometry
            : routeGeometry // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        actualDistanceKm: freezed == actualDistanceKm
            ? _value.actualDistanceKm
            : actualDistanceKm // ignore: cast_nullable_to_non_nullable
                  as num?,
        actualDurationSec: freezed == actualDurationSec
            ? _value.actualDurationSec
            : actualDurationSec // ignore: cast_nullable_to_non_nullable
                  as num?,
        actualRouteGeometry: freezed == actualRouteGeometry
            ? _value.actualRouteGeometry
            : actualRouteGeometry // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        baseTripFare: freezed == baseTripFare
            ? _value.baseTripFare
            : baseTripFare // ignore: cast_nullable_to_non_nullable
                  as num?,
        remainingTripCost: freezed == remainingTripCost
            ? _value.remainingTripCost
            : remainingTripCost // ignore: cast_nullable_to_non_nullable
                  as num?,
        occupiedSeatsAtStart: freezed == occupiedSeatsAtStart
            ? _value.occupiedSeatsAtStart
            : occupiedSeatsAtStart // ignore: cast_nullable_to_non_nullable
                  as int?,
        fullRouteSeatFare: freezed == fullRouteSeatFare
            ? _value.fullRouteSeatFare
            : fullRouteSeatFare // ignore: cast_nullable_to_non_nullable
                  as num?,
        minimumSeatFare: freezed == minimumSeatFare
            ? _value.minimumSeatFare
            : minimumSeatFare // ignore: cast_nullable_to_non_nullable
                  as num?,
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
        cancellationReason: freezed == cancellationReason
            ? _value.cancellationReason
            : cancellationReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        endType: freezed == endType
            ? _value.endType
            : endType // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        passengers: freezed == passengers
            ? _value._passengers
            : passengers // ignore: cast_nullable_to_non_nullable
                  as List<SharedRidePassengerModel>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SharedRideModelImpl implements _SharedRideModel {
  const _$SharedRideModelImpl({
    this.id,
    this.driverProfileId,
    this.vehicleId,
    this.status,
    this.endedBy,
    this.notes,
    this.originLat,
    this.originLng,
    this.originAddress,
    this.destLat,
    this.destLng,
    this.destAddress,
    this.departureTime,
    this.maxPassengers,
    this.occupiedSeats,
    this.totalDistanceKm,
    this.totalDurationSec,
    this.routeGeometry,
    this.actualDistanceKm,
    this.actualDurationSec,
    this.actualRouteGeometry,
    this.baseTripFare,
    this.remainingTripCost,
    this.occupiedSeatsAtStart,
    this.fullRouteSeatFare,
    this.minimumSeatFare,
    this.startedAt,
    this.completedAt,
    this.canceledAt,
    this.cancellationReason,
    this.endType,
    this.createdAt,
    final List<SharedRidePassengerModel>? passengers,
  }) : _passengers = passengers;

  factory _$SharedRideModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SharedRideModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? driverProfileId;
  @override
  final int? vehicleId;
  @override
  final String? status;
  @override
  final String? endedBy;
  @override
  final String? notes;
  @override
  final double? originLat;
  @override
  final double? originLng;
  @override
  final String? originAddress;
  @override
  final double? destLat;
  @override
  final double? destLng;
  @override
  final String? destAddress;
  @override
  final String? departureTime;
  @override
  final int? maxPassengers;
  @override
  final int? occupiedSeats;
  @override
  final num? totalDistanceKm;
  @override
  final num? totalDurationSec;
  @override
  final dynamic routeGeometry;
  @override
  final num? actualDistanceKm;
  @override
  final num? actualDurationSec;
  @override
  final dynamic actualRouteGeometry;
  @override
  final num? baseTripFare;
  @override
  final num? remainingTripCost;
  @override
  final int? occupiedSeatsAtStart;
  @override
  final num? fullRouteSeatFare;
  @override
  final num? minimumSeatFare;
  @override
  final String? startedAt;
  @override
  final String? completedAt;
  @override
  final String? canceledAt;
  @override
  final String? cancellationReason;
  @override
  final String? endType;
  @override
  final String? createdAt;
  final List<SharedRidePassengerModel>? _passengers;
  @override
  List<SharedRidePassengerModel>? get passengers {
    final value = _passengers;
    if (value == null) return null;
    if (_passengers is EqualUnmodifiableListView) return _passengers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SharedRideModel(id: $id, driverProfileId: $driverProfileId, vehicleId: $vehicleId, status: $status, endedBy: $endedBy, notes: $notes, originLat: $originLat, originLng: $originLng, originAddress: $originAddress, destLat: $destLat, destLng: $destLng, destAddress: $destAddress, departureTime: $departureTime, maxPassengers: $maxPassengers, occupiedSeats: $occupiedSeats, totalDistanceKm: $totalDistanceKm, totalDurationSec: $totalDurationSec, routeGeometry: $routeGeometry, actualDistanceKm: $actualDistanceKm, actualDurationSec: $actualDurationSec, actualRouteGeometry: $actualRouteGeometry, baseTripFare: $baseTripFare, remainingTripCost: $remainingTripCost, occupiedSeatsAtStart: $occupiedSeatsAtStart, fullRouteSeatFare: $fullRouteSeatFare, minimumSeatFare: $minimumSeatFare, startedAt: $startedAt, completedAt: $completedAt, canceledAt: $canceledAt, cancellationReason: $cancellationReason, endType: $endType, createdAt: $createdAt, passengers: $passengers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedRideModelImpl &&
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
            const DeepCollectionEquality().equals(
              other.routeGeometry,
              routeGeometry,
            ) &&
            (identical(other.actualDistanceKm, actualDistanceKm) ||
                other.actualDistanceKm == actualDistanceKm) &&
            (identical(other.actualDurationSec, actualDurationSec) ||
                other.actualDurationSec == actualDurationSec) &&
            const DeepCollectionEquality().equals(
              other.actualRouteGeometry,
              actualRouteGeometry,
            ) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    const DeepCollectionEquality().hash(routeGeometry),
    actualDistanceKm,
    actualDurationSec,
    const DeepCollectionEquality().hash(actualRouteGeometry),
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

  /// Create a copy of SharedRideModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedRideModelImplCopyWith<_$SharedRideModelImpl> get copyWith =>
      __$$SharedRideModelImplCopyWithImpl<_$SharedRideModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SharedRideModelImplToJson(this);
  }
}

abstract class _SharedRideModel implements SharedRideModel {
  const factory _SharedRideModel({
    final int? id,
    final int? driverProfileId,
    final int? vehicleId,
    final String? status,
    final String? endedBy,
    final String? notes,
    final double? originLat,
    final double? originLng,
    final String? originAddress,
    final double? destLat,
    final double? destLng,
    final String? destAddress,
    final String? departureTime,
    final int? maxPassengers,
    final int? occupiedSeats,
    final num? totalDistanceKm,
    final num? totalDurationSec,
    final dynamic routeGeometry,
    final num? actualDistanceKm,
    final num? actualDurationSec,
    final dynamic actualRouteGeometry,
    final num? baseTripFare,
    final num? remainingTripCost,
    final int? occupiedSeatsAtStart,
    final num? fullRouteSeatFare,
    final num? minimumSeatFare,
    final String? startedAt,
    final String? completedAt,
    final String? canceledAt,
    final String? cancellationReason,
    final String? endType,
    final String? createdAt,
    final List<SharedRidePassengerModel>? passengers,
  }) = _$SharedRideModelImpl;

  factory _SharedRideModel.fromJson(Map<String, dynamic> json) =
      _$SharedRideModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get driverProfileId;
  @override
  int? get vehicleId;
  @override
  String? get status;
  @override
  String? get endedBy;
  @override
  String? get notes;
  @override
  double? get originLat;
  @override
  double? get originLng;
  @override
  String? get originAddress;
  @override
  double? get destLat;
  @override
  double? get destLng;
  @override
  String? get destAddress;
  @override
  String? get departureTime;
  @override
  int? get maxPassengers;
  @override
  int? get occupiedSeats;
  @override
  num? get totalDistanceKm;
  @override
  num? get totalDurationSec;
  @override
  dynamic get routeGeometry;
  @override
  num? get actualDistanceKm;
  @override
  num? get actualDurationSec;
  @override
  dynamic get actualRouteGeometry;
  @override
  num? get baseTripFare;
  @override
  num? get remainingTripCost;
  @override
  int? get occupiedSeatsAtStart;
  @override
  num? get fullRouteSeatFare;
  @override
  num? get minimumSeatFare;
  @override
  String? get startedAt;
  @override
  String? get completedAt;
  @override
  String? get canceledAt;
  @override
  String? get cancellationReason;
  @override
  String? get endType;
  @override
  String? get createdAt;
  @override
  List<SharedRidePassengerModel>? get passengers;

  /// Create a copy of SharedRideModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharedRideModelImplCopyWith<_$SharedRideModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
