import 'package:freezed_annotation/freezed_annotation.dart';

part 'arrive_trip_entity.freezed.dart';

@freezed
class ArriveTripEntity with _$ArriveTripEntity {
  const factory ArriveTripEntity({
    required int tripId,
    required String status,
    required DateTime? arrivedAt,
    required int freeWaitTimeSeconds,
    required String message,
  }) = _ArriveTripEntity;
}
