import 'package:mashena_driver_app/feature/home/data/models/start_trip_model.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/start_trip_entity.dart';

extension StartTripMapper on StartTripModel {
  StartTripEntity toEntity() {
    return StartTripEntity(message: status ?? '');
  }
}
