import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_trip_entity.freezed.dart';

@freezed
class StartTripEntity with _$StartTripEntity {
  const factory StartTripEntity({required String message}) = _StartTripEntity;
}
