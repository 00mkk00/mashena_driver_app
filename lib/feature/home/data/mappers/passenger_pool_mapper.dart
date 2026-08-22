import 'package:mashena_driver_app/feature/home/data/models/accept_passenger_pool_response_model.dart';
import 'package:mashena_driver_app/feature/home/data/models/passenger_pool_model.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/accept_passenger_pool_response_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/passenger_pool_entity.dart';

extension PassengerPoolMemberMapper on PassengerPoolMemberModel {
  PassengerPoolMemberEntity toEntity() {
    return PassengerPoolMemberEntity(
      id: id ?? 0,
      roomId: roomId ?? 0,
      riderProfileId: riderProfileId ?? 0,
      seatsNeeded: seatsNeeded ?? 0,
      status: status ?? '',
      pickupLat: pickupLat ?? 0.0,
      pickupLng: pickupLng ?? 0.0,
      joinedAt: joinedAt != null ? DateTime.tryParse(joinedAt!) : null,
      leftAt: leftAt != null ? DateTime.tryParse(leftAt!) : null,
    );
  }
}

extension PassengerPoolMapper on PassengerPoolModel {
  PassengerPoolEntity toEntity() {
    return PassengerPoolEntity(
      id: id ?? 0,
      creatorRiderProfileId: creatorRiderProfileId ?? 0,
      status: status ?? '',
      driverProfileId: driverProfileId,
      sharedRideId: sharedRideId,
      driverAcceptedAt: driverAcceptedAt != null
          ? DateTime.tryParse(driverAcceptedAt!)
          : null,
      meetingLat: meetingLat ?? 0.0,
      meetingLng: meetingLng ?? 0.0,
      meetingAddress: meetingAddress ?? '',
      meetingPlaceName: meetingPlaceName,
      meetingPlaceProvider: meetingPlaceProvider,
      destinationLat: destinationLat ?? 0.0,
      destinationLng: destinationLng ?? 0.0,
      destinationAddress: destinationAddress ?? '',
      maxPassengers: maxPassengers ?? 0,
      currentPassengers: currentPassengers ?? 0,
      departureTime:
          departureTime != null ? DateTime.tryParse(departureTime!) : null,
      expiresAt: expiresAt != null ? DateTime.tryParse(expiresAt!) : null,
      createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
      members: members?.map((m) => m.toEntity()).toList() ?? [],
    );
  }
}

extension AcceptPassengerPoolResponseMapper on AcceptPassengerPoolResponseModel {
  AcceptPassengerPoolResponseEntity toEntity() {
    return AcceptPassengerPoolResponseEntity(
      room: room?.toEntity(),
      sharedRideId: sharedRideId,
    );
  }
}
