import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_trip_params.freezed.dart';
part 'rate_trip_params.g.dart';

@freezed
class RateTripParams with _$RateTripParams {
  const factory RateTripParams({
    required int tripId,
    required int score,
    String? comment,
    List<int>? tagIds,
  }) = _RateTripParams;

  factory RateTripParams.fromJson(Map<String, dynamic> json) =>
      _$RateTripParamsFromJson(json);
}
