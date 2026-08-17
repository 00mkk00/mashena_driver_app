import 'package:freezed_annotation/freezed_annotation.dart';

part 'complete_trip_model.freezed.dart';
part 'complete_trip_model.g.dart';

@freezed
class CompleteTripModel with _$CompleteTripModel {
  const factory CompleteTripModel({
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
  }) = _CompleteTripModel;

  factory CompleteTripModel.fromJson(Map<String, dynamic> json) =>
      _$CompleteTripModelFromJson(json);
}

@freezed
class AppliedCouponModel with _$AppliedCouponModel {
  const factory AppliedCouponModel({
    int? id,
    String? code,
    String? type,
    num? value,
    int? remainingUsages,
    String? expiresAt,
  }) = _AppliedCouponModel;

  factory AppliedCouponModel.fromJson(Map<String, dynamic> json) =>
      _$AppliedCouponModelFromJson(json);
}
