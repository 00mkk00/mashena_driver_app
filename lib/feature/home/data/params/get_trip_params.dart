import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_trip_params.freezed.dart';

@freezed
class GetTripParams with _$GetTripParams {
  const factory GetTripParams({
    required int rideRequestId,
  }) = _GetTripParams;
}