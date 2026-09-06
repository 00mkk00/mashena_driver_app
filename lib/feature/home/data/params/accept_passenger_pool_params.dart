import 'package:freezed_annotation/freezed_annotation.dart';

part 'accept_passenger_pool_params.freezed.dart';
part 'accept_passenger_pool_params.g.dart';

@freezed
class AcceptPassengerPoolParams with _$AcceptPassengerPoolParams {
  const factory AcceptPassengerPoolParams({
    required int id,
  }) = _AcceptPassengerPoolParams;

  factory AcceptPassengerPoolParams.fromJson(Map<String, dynamic> json) =>
      _$AcceptPassengerPoolParamsFromJson(json);
}
