import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_radius_params.freezed.dart';
part 'update_radius_params.g.dart';

@freezed
class UpdateDriverRadiusParams with _$UpdateDriverRadiusParams {
  const factory UpdateDriverRadiusParams({required int radiusKm}) =
      _UpdateDriverRadiusParams;

  factory UpdateDriverRadiusParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateDriverRadiusParamsFromJson(json);
}
