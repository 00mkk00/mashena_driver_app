import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_location_params.freezed.dart';
part 'update_location_params.g.dart';

@freezed
class UpdateDriverLocationParams with _$UpdateDriverLocationParams {
  const factory UpdateDriverLocationParams({
    required double lat,
    required double lng,
  }) = _UpdateDriverLocationParams;

  factory UpdateDriverLocationParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateDriverLocationParamsFromJson(json);
}
