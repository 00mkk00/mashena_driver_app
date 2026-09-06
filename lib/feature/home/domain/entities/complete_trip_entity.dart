import 'package:freezed_annotation/freezed_annotation.dart';

part 'complete_trip_entity.freezed.dart';

@freezed
class CompleteTripEntity with _$CompleteTripEntity {
  const factory CompleteTripEntity({
    int? tripId,
    String? status,
    String? completedAt,
    double? distanceKm,
    int? durationSec,
    double? originalFare,
    double? discountAmount,
    double? finalFare,
    double? fareTotal, // parsed from String
    AppliedCouponEntity? appliedCoupon,
    double? platformCommission,
  }) = _CompleteTripEntity;
}

@freezed
class AppliedCouponEntity with _$AppliedCouponEntity {
  const factory AppliedCouponEntity({
    int? id,
    String? code,
    String? type,
    num? value,
    int? remainingUsages,
    String? expiresAt,
  }) = _AppliedCouponEntity;
}

