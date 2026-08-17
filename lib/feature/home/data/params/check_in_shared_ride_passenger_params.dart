import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_in_shared_ride_passenger_params.freezed.dart';
part 'check_in_shared_ride_passenger_params.g.dart';

@freezed
class CheckInSharedRidePassengerParams with _$CheckInSharedRidePassengerParams {
  const factory CheckInSharedRidePassengerParams({
    required int id,
    required int passengerId,
  }) = _CheckInSharedRidePassengerParams;

  factory CheckInSharedRidePassengerParams.fromJson(Map<String, dynamic> json) =>
      _$CheckInSharedRidePassengerParamsFromJson(json);
}
