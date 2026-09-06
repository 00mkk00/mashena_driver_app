import 'package:mashena_driver_app/feature/home/data/models/arrive_trip_model.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/arrive_trip_entity.dart';

extension ArriveTripMapper on ArriveTripModel {
  ArriveTripEntity toEntity() {
    return ArriveTripEntity(
      tripId: tripId ?? 0,
      status: status ?? '',
      arrivedAt: arrivedAt != null ? DateTime.tryParse(arrivedAt!) : null,
      freeWaitTimeSeconds: freeWaitTimeSeconds ?? 0,
      message: message ?? 'something went wrong',
    );
  }
}
