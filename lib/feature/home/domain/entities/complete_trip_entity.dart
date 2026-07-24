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
    bool? appliedCoupon,
    double? platformCommission,
  }) = _CompleteTripEntity;
}
