// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_trip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CompleteTripModel _$CompleteTripModelFromJson(Map<String, dynamic> json) {
  return _CompleteTripModel.fromJson(json);
}

/// @nodoc
mixin _$CompleteTripModel {
  int? get tripId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get completedAt => throw _privateConstructorUsedError;
  double? get distanceKm => throw _privateConstructorUsedError;
  int? get durationSec => throw _privateConstructorUsedError;
  num? get originalFare => throw _privateConstructorUsedError;
  num? get discountAmount => throw _privateConstructorUsedError;
  num? get finalFare => throw _privateConstructorUsedError;
  String? get fareTotal => throw _privateConstructorUsedError;
  AppliedCouponModel? get appliedCoupon => throw _privateConstructorUsedError;
  num? get platformCommission => throw _privateConstructorUsedError;

  /// Serializes this CompleteTripModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompleteTripModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompleteTripModelCopyWith<CompleteTripModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteTripModelCopyWith<$Res> {
  factory $CompleteTripModelCopyWith(
    CompleteTripModel value,
    $Res Function(CompleteTripModel) then,
  ) = _$CompleteTripModelCopyWithImpl<$Res, CompleteTripModel>;
  @useResult
  $Res call({
    int? tripId,
    String? status,
    String? completedAt,
    double? distanceKm,
    int? durationSec,
    num? originalFare,
    num? discountAmount,
    num? finalFare,
    String? fareTotal,
    AppliedCouponModel? appliedCoupon,
    num? platformCommission,
  });

  $AppliedCouponModelCopyWith<$Res>? get appliedCoupon;
}

/// @nodoc
class _$CompleteTripModelCopyWithImpl<$Res, $Val extends CompleteTripModel>
    implements $CompleteTripModelCopyWith<$Res> {
  _$CompleteTripModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompleteTripModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = freezed,
    Object? status = freezed,
    Object? completedAt = freezed,
    Object? distanceKm = freezed,
    Object? durationSec = freezed,
    Object? originalFare = freezed,
    Object? discountAmount = freezed,
    Object? finalFare = freezed,
    Object? fareTotal = freezed,
    Object? appliedCoupon = freezed,
    Object? platformCommission = freezed,
  }) {
    return _then(
      _value.copyWith(
            tripId: freezed == tripId
                ? _value.tripId
                : tripId // ignore: cast_nullable_to_non_nullable
                      as int?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            distanceKm: freezed == distanceKm
                ? _value.distanceKm
                : distanceKm // ignore: cast_nullable_to_non_nullable
                      as double?,
            durationSec: freezed == durationSec
                ? _value.durationSec
                : durationSec // ignore: cast_nullable_to_non_nullable
                      as int?,
            originalFare: freezed == originalFare
                ? _value.originalFare
                : originalFare // ignore: cast_nullable_to_non_nullable
                      as num?,
            discountAmount: freezed == discountAmount
                ? _value.discountAmount
                : discountAmount // ignore: cast_nullable_to_non_nullable
                      as num?,
            finalFare: freezed == finalFare
                ? _value.finalFare
                : finalFare // ignore: cast_nullable_to_non_nullable
                      as num?,
            fareTotal: freezed == fareTotal
                ? _value.fareTotal
                : fareTotal // ignore: cast_nullable_to_non_nullable
                      as String?,
            appliedCoupon: freezed == appliedCoupon
                ? _value.appliedCoupon
                : appliedCoupon // ignore: cast_nullable_to_non_nullable
                      as AppliedCouponModel?,
            platformCommission: freezed == platformCommission
                ? _value.platformCommission
                : platformCommission // ignore: cast_nullable_to_non_nullable
                      as num?,
          )
          as $Val,
    );
  }

  /// Create a copy of CompleteTripModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppliedCouponModelCopyWith<$Res>? get appliedCoupon {
    if (_value.appliedCoupon == null) {
      return null;
    }

    return $AppliedCouponModelCopyWith<$Res>(_value.appliedCoupon!, (value) {
      return _then(_value.copyWith(appliedCoupon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompleteTripModelImplCopyWith<$Res>
    implements $CompleteTripModelCopyWith<$Res> {
  factory _$$CompleteTripModelImplCopyWith(
    _$CompleteTripModelImpl value,
    $Res Function(_$CompleteTripModelImpl) then,
  ) = __$$CompleteTripModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? tripId,
    String? status,
    String? completedAt,
    double? distanceKm,
    int? durationSec,
    num? originalFare,
    num? discountAmount,
    num? finalFare,
    String? fareTotal,
    AppliedCouponModel? appliedCoupon,
    num? platformCommission,
  });

  @override
  $AppliedCouponModelCopyWith<$Res>? get appliedCoupon;
}

/// @nodoc
class __$$CompleteTripModelImplCopyWithImpl<$Res>
    extends _$CompleteTripModelCopyWithImpl<$Res, _$CompleteTripModelImpl>
    implements _$$CompleteTripModelImplCopyWith<$Res> {
  __$$CompleteTripModelImplCopyWithImpl(
    _$CompleteTripModelImpl _value,
    $Res Function(_$CompleteTripModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompleteTripModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = freezed,
    Object? status = freezed,
    Object? completedAt = freezed,
    Object? distanceKm = freezed,
    Object? durationSec = freezed,
    Object? originalFare = freezed,
    Object? discountAmount = freezed,
    Object? finalFare = freezed,
    Object? fareTotal = freezed,
    Object? appliedCoupon = freezed,
    Object? platformCommission = freezed,
  }) {
    return _then(
      _$CompleteTripModelImpl(
        tripId: freezed == tripId
            ? _value.tripId
            : tripId // ignore: cast_nullable_to_non_nullable
                  as int?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        distanceKm: freezed == distanceKm
            ? _value.distanceKm
            : distanceKm // ignore: cast_nullable_to_non_nullable
                  as double?,
        durationSec: freezed == durationSec
            ? _value.durationSec
            : durationSec // ignore: cast_nullable_to_non_nullable
                  as int?,
        originalFare: freezed == originalFare
            ? _value.originalFare
            : originalFare // ignore: cast_nullable_to_non_nullable
                  as num?,
        discountAmount: freezed == discountAmount
            ? _value.discountAmount
            : discountAmount // ignore: cast_nullable_to_non_nullable
                  as num?,
        finalFare: freezed == finalFare
            ? _value.finalFare
            : finalFare // ignore: cast_nullable_to_non_nullable
                  as num?,
        fareTotal: freezed == fareTotal
            ? _value.fareTotal
            : fareTotal // ignore: cast_nullable_to_non_nullable
                  as String?,
        appliedCoupon: freezed == appliedCoupon
            ? _value.appliedCoupon
            : appliedCoupon // ignore: cast_nullable_to_non_nullable
                  as AppliedCouponModel?,
        platformCommission: freezed == platformCommission
            ? _value.platformCommission
            : platformCommission // ignore: cast_nullable_to_non_nullable
                  as num?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CompleteTripModelImpl implements _CompleteTripModel {
  const _$CompleteTripModelImpl({
    this.tripId,
    this.status,
    this.completedAt,
    this.distanceKm,
    this.durationSec,
    this.originalFare,
    this.discountAmount,
    this.finalFare,
    this.fareTotal,
    this.appliedCoupon,
    this.platformCommission,
  });

  factory _$CompleteTripModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompleteTripModelImplFromJson(json);

  @override
  final int? tripId;
  @override
  final String? status;
  @override
  final String? completedAt;
  @override
  final double? distanceKm;
  @override
  final int? durationSec;
  @override
  final num? originalFare;
  @override
  final num? discountAmount;
  @override
  final num? finalFare;
  @override
  final String? fareTotal;
  @override
  final AppliedCouponModel? appliedCoupon;
  @override
  final num? platformCommission;

  @override
  String toString() {
    return 'CompleteTripModel(tripId: $tripId, status: $status, completedAt: $completedAt, distanceKm: $distanceKm, durationSec: $durationSec, originalFare: $originalFare, discountAmount: $discountAmount, finalFare: $finalFare, fareTotal: $fareTotal, appliedCoupon: $appliedCoupon, platformCommission: $platformCommission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteTripModelImpl &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            (identical(other.durationSec, durationSec) ||
                other.durationSec == durationSec) &&
            (identical(other.originalFare, originalFare) ||
                other.originalFare == originalFare) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.finalFare, finalFare) ||
                other.finalFare == finalFare) &&
            (identical(other.fareTotal, fareTotal) ||
                other.fareTotal == fareTotal) &&
            (identical(other.appliedCoupon, appliedCoupon) ||
                other.appliedCoupon == appliedCoupon) &&
            (identical(other.platformCommission, platformCommission) ||
                other.platformCommission == platformCommission));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    tripId,
    status,
    completedAt,
    distanceKm,
    durationSec,
    originalFare,
    discountAmount,
    finalFare,
    fareTotal,
    appliedCoupon,
    platformCommission,
  );

  /// Create a copy of CompleteTripModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteTripModelImplCopyWith<_$CompleteTripModelImpl> get copyWith =>
      __$$CompleteTripModelImplCopyWithImpl<_$CompleteTripModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CompleteTripModelImplToJson(this);
  }
}

abstract class _CompleteTripModel implements CompleteTripModel {
  const factory _CompleteTripModel({
    final int? tripId,
    final String? status,
    final String? completedAt,
    final double? distanceKm,
    final int? durationSec,
    final num? originalFare,
    final num? discountAmount,
    final num? finalFare,
    final String? fareTotal,
    final AppliedCouponModel? appliedCoupon,
    final num? platformCommission,
  }) = _$CompleteTripModelImpl;

  factory _CompleteTripModel.fromJson(Map<String, dynamic> json) =
      _$CompleteTripModelImpl.fromJson;

  @override
  int? get tripId;
  @override
  String? get status;
  @override
  String? get completedAt;
  @override
  double? get distanceKm;
  @override
  int? get durationSec;
  @override
  num? get originalFare;
  @override
  num? get discountAmount;
  @override
  num? get finalFare;
  @override
  String? get fareTotal;
  @override
  AppliedCouponModel? get appliedCoupon;
  @override
  num? get platformCommission;

  /// Create a copy of CompleteTripModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompleteTripModelImplCopyWith<_$CompleteTripModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppliedCouponModel _$AppliedCouponModelFromJson(Map<String, dynamic> json) {
  return _AppliedCouponModel.fromJson(json);
}

/// @nodoc
mixin _$AppliedCouponModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  num? get value => throw _privateConstructorUsedError;
  int? get remainingUsages => throw _privateConstructorUsedError;
  String? get expiresAt => throw _privateConstructorUsedError;

  /// Serializes this AppliedCouponModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppliedCouponModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppliedCouponModelCopyWith<AppliedCouponModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppliedCouponModelCopyWith<$Res> {
  factory $AppliedCouponModelCopyWith(
    AppliedCouponModel value,
    $Res Function(AppliedCouponModel) then,
  ) = _$AppliedCouponModelCopyWithImpl<$Res, AppliedCouponModel>;
  @useResult
  $Res call({
    int? id,
    String? code,
    String? type,
    num? value,
    int? remainingUsages,
    String? expiresAt,
  });
}

/// @nodoc
class _$AppliedCouponModelCopyWithImpl<$Res, $Val extends AppliedCouponModel>
    implements $AppliedCouponModelCopyWith<$Res> {
  _$AppliedCouponModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppliedCouponModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? type = freezed,
    Object? value = freezed,
    Object? remainingUsages = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            code: freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            value: freezed == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as num?,
            remainingUsages: freezed == remainingUsages
                ? _value.remainingUsages
                : remainingUsages // ignore: cast_nullable_to_non_nullable
                      as int?,
            expiresAt: freezed == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppliedCouponModelImplCopyWith<$Res>
    implements $AppliedCouponModelCopyWith<$Res> {
  factory _$$AppliedCouponModelImplCopyWith(
    _$AppliedCouponModelImpl value,
    $Res Function(_$AppliedCouponModelImpl) then,
  ) = __$$AppliedCouponModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String? code,
    String? type,
    num? value,
    int? remainingUsages,
    String? expiresAt,
  });
}

/// @nodoc
class __$$AppliedCouponModelImplCopyWithImpl<$Res>
    extends _$AppliedCouponModelCopyWithImpl<$Res, _$AppliedCouponModelImpl>
    implements _$$AppliedCouponModelImplCopyWith<$Res> {
  __$$AppliedCouponModelImplCopyWithImpl(
    _$AppliedCouponModelImpl _value,
    $Res Function(_$AppliedCouponModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppliedCouponModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? type = freezed,
    Object? value = freezed,
    Object? remainingUsages = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(
      _$AppliedCouponModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        code: freezed == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        value: freezed == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as num?,
        remainingUsages: freezed == remainingUsages
            ? _value.remainingUsages
            : remainingUsages // ignore: cast_nullable_to_non_nullable
                  as int?,
        expiresAt: freezed == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppliedCouponModelImpl implements _AppliedCouponModel {
  const _$AppliedCouponModelImpl({
    this.id,
    this.code,
    this.type,
    this.value,
    this.remainingUsages,
    this.expiresAt,
  });

  factory _$AppliedCouponModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppliedCouponModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? type;
  @override
  final num? value;
  @override
  final int? remainingUsages;
  @override
  final String? expiresAt;

  @override
  String toString() {
    return 'AppliedCouponModel(id: $id, code: $code, type: $type, value: $value, remainingUsages: $remainingUsages, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppliedCouponModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.remainingUsages, remainingUsages) ||
                other.remainingUsages == remainingUsages) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    code,
    type,
    value,
    remainingUsages,
    expiresAt,
  );

  /// Create a copy of AppliedCouponModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppliedCouponModelImplCopyWith<_$AppliedCouponModelImpl> get copyWith =>
      __$$AppliedCouponModelImplCopyWithImpl<_$AppliedCouponModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AppliedCouponModelImplToJson(this);
  }
}

abstract class _AppliedCouponModel implements AppliedCouponModel {
  const factory _AppliedCouponModel({
    final int? id,
    final String? code,
    final String? type,
    final num? value,
    final int? remainingUsages,
    final String? expiresAt,
  }) = _$AppliedCouponModelImpl;

  factory _AppliedCouponModel.fromJson(Map<String, dynamic> json) =
      _$AppliedCouponModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get type;
  @override
  num? get value;
  @override
  int? get remainingUsages;
  @override
  String? get expiresAt;

  /// Create a copy of AppliedCouponModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppliedCouponModelImplCopyWith<_$AppliedCouponModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
