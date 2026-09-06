import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_shared_ride_params.freezed.dart';
part 'create_shared_ride_params.g.dart';

@freezed
class SharedRideLocationParams with _$SharedRideLocationParams {
  const factory SharedRideLocationParams({
    required double lat,
    required double lng,
    required String address,
  }) = _SharedRideLocationParams;

  factory SharedRideLocationParams.fromJson(Map<String, dynamic> json) =>
      _$SharedRideLocationParamsFromJson(json);
}

@freezed
class CreateSharedRideParams with _$CreateSharedRideParams {
  const factory CreateSharedRideParams({
    required SharedRideLocationParams origin,
    required SharedRideLocationParams destination,
    required String departureTime,
    required int maxPassengers,
    String? notes,
  }) = _CreateSharedRideParams;

  factory CreateSharedRideParams.fromJson(Map<String, dynamic> json) =>
      _$CreateSharedRideParamsFromJson(json);
}
