import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_shared_ride_passenger_params.freezed.dart';
part 'remove_shared_ride_passenger_params.g.dart';

@freezed
class RemoveSharedRidePassengerParams with _$RemoveSharedRidePassengerParams {
  const factory RemoveSharedRidePassengerParams({
    required int id,
    required int passengerId,
    String? reason,
  }) = _RemoveSharedRidePassengerParams;

  factory RemoveSharedRidePassengerParams.fromJson(Map<String, dynamic> json) =>
      _$RemoveSharedRidePassengerParamsFromJson(json);
}
