import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/passenger_pool_entity.dart';

part 'accept_passenger_pool_response_entity.freezed.dart';

@freezed
class AcceptPassengerPoolResponseEntity with _$AcceptPassengerPoolResponseEntity {
  const factory AcceptPassengerPoolResponseEntity({
    required PassengerPoolEntity? room,
    required int? sharedRideId,
  }) = _AcceptPassengerPoolResponseEntity;
}
