import 'package:freezed_annotation/freezed_annotation.dart';

part 'shared_ride_start_params.freezed.dart';
part 'shared_ride_start_params.g.dart';

@freezed
class SharedRideStartParams with _$SharedRideStartParams {
  const factory SharedRideStartParams({
    required int id,
  }) = _SharedRideStartParams;

  factory SharedRideStartParams.fromJson(Map<String, dynamic> json) =>
      _$SharedRideStartParamsFromJson(json);
}
