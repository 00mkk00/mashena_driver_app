import 'package:mashena_driver_app/feature/home/data/models/complete_trip_model.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/complete_trip_entity.dart';

extension CompleteTripMapper on CompleteTripModel {
  CompleteTripEntity toEntity() {
    return CompleteTripEntity(
      tripId: tripId,
      status: status,
      completedAt: completedAt,
      distanceKm: distanceKm,
      durationSec: durationSec,
      originalFare: originalFare?.toDouble(),
      discountAmount: discountAmount?.toDouble(),
      finalFare: finalFare?.toDouble(),
      // fareTotal comes as a String from the server (e.g. "120") — parse safely
      fareTotal: fareTotal != null ? double.tryParse(fareTotal!) : null,
      appliedCoupon: appliedCoupon,
      platformCommission: platformCommission?.toDouble(),
    );
  }
}
