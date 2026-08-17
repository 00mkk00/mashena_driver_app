import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_board_shared_ride_passenger_params.freezed.dart';
part 'on_board_shared_ride_passenger_params.g.dart';

@freezed
class OnBoardSharedRidePassengerParams with _$OnBoardSharedRidePassengerParams {
  const factory OnBoardSharedRidePassengerParams({
    required int id,
    required int passengerId,
  }) = _OnBoardSharedRidePassengerParams;

  factory OnBoardSharedRidePassengerParams.fromJson(Map<String, dynamic> json) =>
      _$OnBoardSharedRidePassengerParamsFromJson(json);
}
