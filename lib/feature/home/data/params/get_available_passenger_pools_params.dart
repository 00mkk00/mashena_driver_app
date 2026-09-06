import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_available_passenger_pools_params.freezed.dart';
part 'get_available_passenger_pools_params.g.dart';

@freezed
class GetAvailablePassengerPoolsParams with _$GetAvailablePassengerPoolsParams {
  const factory GetAvailablePassengerPoolsParams({
    required double lat,
    required double lng,
    double? radiusKm,
  }) = _GetAvailablePassengerPoolsParams;

  factory GetAvailablePassengerPoolsParams.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GetAvailablePassengerPoolsParamsFromJson(json);
}
