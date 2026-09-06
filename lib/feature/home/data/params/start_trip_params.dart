import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_trip_params.freezed.dart';
part 'start_trip_params.g.dart';

@freezed
class StartTripParams with _$StartTripParams {
  const factory StartTripParams({required String rideRequestId}) =
      _StartTripParams;

  factory StartTripParams.fromJson(Map<String, dynamic> json) =>
      _$StartTripParamsFromJson(json);
}
