import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_trip_entity.freezed.dart';

@freezed
class CancelTripEntity with _$CancelTripEntity {
  const factory CancelTripEntity({required String message}) = _CancelTripEntity;
}
