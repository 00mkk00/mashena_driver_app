import 'package:mashena_driver_app/feature/home/data/models/cancel_trip_model.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/cancel_trip_entity.dart';

extension CancelTripMapper on CancelTripModel {
  CancelTripEntity toEntity() {
    return CancelTripEntity(message: message ?? 'k');
  }
}
