import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/core/utils/json_helper.dart';
import 'package:mashena_driver_app/feature/home/data/models/passenger_pool_model.dart';

part 'accept_passenger_pool_response_model.freezed.dart';
part 'accept_passenger_pool_response_model.g.dart';

@freezed
class AcceptPassengerPoolResponseModel with _$AcceptPassengerPoolResponseModel {
  const factory AcceptPassengerPoolResponseModel({
    PassengerPoolModel? room,
    @JsonKey(fromJson: parseIntFromJson) int? sharedRideId,
  }) = _AcceptPassengerPoolResponseModel;

  factory AcceptPassengerPoolResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$AcceptPassengerPoolResponseModelFromJson(json);
}
