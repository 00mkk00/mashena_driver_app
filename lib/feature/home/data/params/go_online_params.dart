import 'package:freezed_annotation/freezed_annotation.dart';
part 'go_online_params.freezed.dart';
part 'go_online_params.g.dart';

@freezed
class GoOnlineParams with _$GoOnlineParams {
  const factory GoOnlineParams({required double lat, required double lng}) =
      _GoOnlineParams;

  factory GoOnlineParams.fromJson(Map<String, dynamic> json) =>
      _$GoOnlineParamsFromJson(json);
}
