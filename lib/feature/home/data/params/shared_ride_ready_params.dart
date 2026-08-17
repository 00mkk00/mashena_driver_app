import 'package:freezed_annotation/freezed_annotation.dart';

part 'shared_ride_ready_params.freezed.dart';
part 'shared_ride_ready_params.g.dart';

@freezed
class SharedRideReadyParams with _$SharedRideReadyParams {
  const factory SharedRideReadyParams({
    required int id,
  }) = _SharedRideReadyParams;

  factory SharedRideReadyParams.fromJson(Map<String, dynamic> json) =>
      _$SharedRideReadyParamsFromJson(json);
}
