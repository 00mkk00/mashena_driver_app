import 'package:freezed_annotation/freezed_annotation.dart';

part 'shared_ride_complete_params.freezed.dart';
part 'shared_ride_complete_params.g.dart';

@freezed
class SharedRideCompleteParams with _$SharedRideCompleteParams {
  const factory SharedRideCompleteParams({
    required int id,
  }) = _SharedRideCompleteParams;

  factory SharedRideCompleteParams.fromJson(Map<String, dynamic> json) =>
      _$SharedRideCompleteParamsFromJson(json);
}
