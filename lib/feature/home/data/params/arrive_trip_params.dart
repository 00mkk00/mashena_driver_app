import 'package:freezed_annotation/freezed_annotation.dart';

part 'arrive_trip_params.freezed.dart';
part 'arrive_trip_params.g.dart';

@freezed
class ArriveTripParams with _$ArriveTripParams {
  const factory ArriveTripParams({required String rideRequestId}) =
      _ArriveTripParams;

  factory ArriveTripParams.fromJson(Map<String, dynamic> json) =>
      _$ArriveTripParamsFromJson(json);
}
