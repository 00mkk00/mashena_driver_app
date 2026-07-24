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
  appliedCoupon: json['appliedCoupon'] as bool?,
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
