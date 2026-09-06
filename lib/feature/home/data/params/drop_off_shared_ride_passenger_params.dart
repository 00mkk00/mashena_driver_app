import 'package:freezed_annotation/freezed_annotation.dart';

part 'drop_off_shared_ride_passenger_params.freezed.dart';
part 'drop_off_shared_ride_passenger_params.g.dart';

@freezed
class DropOffSharedRidePassengerParams with _$DropOffSharedRidePassengerParams {
  const factory DropOffSharedRidePassengerParams({
    required int id,
    required int passengerId,
    required int seatsToDrop,
    required double currentLat,
    required double currentLng,
    bool? accountHolderDroppedOff,
  }) = _DropOffSharedRidePassengerParams;

  factory DropOffSharedRidePassengerParams.fromJson(
    Map<String, dynamic> json,
  ) => _$DropOffSharedRidePassengerParamsFromJson(json);
}
