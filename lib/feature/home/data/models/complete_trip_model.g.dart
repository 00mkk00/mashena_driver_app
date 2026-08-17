// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_trip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompleteTripModelImpl _$$CompleteTripModelImplFromJson(
  Map<String, dynamic> json,
) => _$CompleteTripModelImpl(
  tripId: (json['tripId'] as num?)?.toInt(),
  status: json['status'] as String?,
  completedAt: json['completedAt'] as String?,
  distanceKm: (json['distanceKm'] as num?)?.toDouble(),
  durationSec: (json['durationSec'] as num?)?.toInt(),
  originalFare: json['originalFare'] as num?,
  discountAmount: json['discountAmount'] as num?,
  finalFare: json['finalFare'] as num?,
  fareTotal: json['fareTotal'] as String?,
  appliedCoupon: json['appliedCoupon'] == null
      ? null
      : AppliedCouponModel.fromJson(
          json['appliedCoupon'] as Map<String, dynamic>,
        ),
  platformCommission: json['platformCommission'] as num?,
);

Map<String, dynamic> _$$CompleteTripModelImplToJson(
  _$CompleteTripModelImpl instance,
) => <String, dynamic>{
  'tripId': instance.tripId,
  'status': instance.status,
  'completedAt': instance.completedAt,
  'distanceKm': instance.distanceKm,
  'durationSec': instance.durationSec,
  'originalFare': instance.originalFare,
  'discountAmount': instance.discountAmount,
  'finalFare': instance.finalFare,
  'fareTotal': instance.fareTotal,
  'appliedCoupon': instance.appliedCoupon,
  'platformCommission': instance.platformCommission,
};

_$AppliedCouponModelImpl _$$AppliedCouponModelImplFromJson(
  Map<String, dynamic> json,
) => _$AppliedCouponModelImpl(
  id: (json['id'] as num?)?.toInt(),
  code: json['code'] as String?,
  type: json['type'] as String?,
  value: json['value'] as num?,
  remainingUsages: (json['remainingUsages'] as num?)?.toInt(),
  expiresAt: json['expiresAt'] as String?,
);

Map<String, dynamic> _$$AppliedCouponModelImplToJson(
  _$AppliedCouponModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'type': instance.type,
  'value': instance.value,
  'remainingUsages': instance.remainingUsages,
  'expiresAt': instance.expiresAt,
};
