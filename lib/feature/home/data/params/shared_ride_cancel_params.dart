import 'package:freezed_annotation/freezed_annotation.dart';

part 'shared_ride_cancel_params.freezed.dart';
part 'shared_ride_cancel_params.g.dart';

@freezed
class SharedRideCancelParams with _$SharedRideCancelParams {
  const factory SharedRideCancelParams({
    required int id,
    String? reason,
  }) = _SharedRideCancelParams;

  factory SharedRideCancelParams.fromJson(Map<String, dynamic> json) =>
      _$SharedRideCancelParamsFromJson(json);
}
