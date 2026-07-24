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
    bool? appliedCoupon,
    num? platformCommission,
  }) = _CompleteTripModel;

  factory CompleteTripModel.fromJson(Map<String, dynamic> json) =>
      _$CompleteTripModelFromJson(json);
}
