import 'package:mashena_driver_app/feature/home/data/models/complete_trip_model.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/complete_trip_entity.dart';

extension CompleteTripMapper on CompleteTripModel {
  CompleteTripEntity toEntity() {
    return CompleteTripEntity(message: message);
  }
}
