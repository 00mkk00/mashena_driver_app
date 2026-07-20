import 'package:freezed_annotation/freezed_annotation.dart';

part 'complete_trip_params.freezed.dart';
part 'complete_trip_params.g.dart';

@freezed
class CompleteTripParams with _$CompleteTripParams {
  const factory CompleteTripParams({required String rideRequestId}) =
      _CompleteTripParams;

  factory CompleteTripParams.fromJson(Map<String, dynamic> json) =>
      _$CompleteTripParamsFromJson(json);
}
