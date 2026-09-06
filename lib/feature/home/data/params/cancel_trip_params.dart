import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_trip_params.freezed.dart';
part 'cancel_trip_params.g.dart';

@freezed
class CancelTripParams with _$CancelTripParams {
  const factory CancelTripParams({required String rideRequestId}) =
      _CancelTripParams;

  factory CancelTripParams.fromJson(Map<String, dynamic> json) =>
      _$CancelTripParamsFromJson(json);
}
