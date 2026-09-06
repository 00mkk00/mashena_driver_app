import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_driver_trip_history_params.freezed.dart';
part 'get_driver_trip_history_params.g.dart';

@freezed
class GetDriverTripHistoryParams with _$GetDriverTripHistoryParams {
  const factory GetDriverTripHistoryParams({int? skip, int? limit}) =
      _GetDriverTripHistoryParams;

  factory GetDriverTripHistoryParams.fromJson(Map<String, dynamic> json) =>
      _$GetDriverTripHistoryParamsFromJson(json);
}
