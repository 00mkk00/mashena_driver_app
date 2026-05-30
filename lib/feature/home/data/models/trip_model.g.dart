// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripModelImpl _$$TripModelImplFromJson(Map<String, dynamic> json) =>
    _$TripModelImpl(
      tripId: (json['tripId'] as num).toInt(),
      tripStatus: json['tripStatus'] as String,
      rideRequestId: (json['rideRequestId'] as num).toInt(),
      pickupLat: (json['pickupLat'] as num).toDouble(),
      pickupLng: (json['pickupLng'] as num).toDouble(),
      destinationLat: (json['destinationLat'] as num).toDouble(),
      destinationLng: (json['destinationLng'] as num).toDouble(),
      driverId: (json['driverId'] as num).toInt(),
      driverFirstName: json['driverFirstName'] as String,
      driverLastName: json['driverLastName'] as String,
      driverRatingAvg: (json['driverRatingAvg'] as num).toDouble(),
      stops: (json['stops'] as List<dynamic>).map((e) => e as String).toList(),
      matchedAt: json['matchedAt'],
      driverProfileImage: json['driverProfileImage'],
      vehicleId: json['vehicleId'],
      plateNumber: json['plateNumber'],
      color: json['color'],
      manufacturer: json['manufacturer'],
      model: json['model'],
      vehicleTypeId: json['vehicleTypeId'],
    );

Map<String, dynamic> _$$TripModelImplToJson(_$TripModelImpl instance) =>
    <String, dynamic>{
      'tripId': instance.tripId,
      'tripStatus': instance.tripStatus,
      'rideRequestId': instance.rideRequestId,
      'pickupLat': instance.pickupLat,
      'pickupLng': instance.pickupLng,
      'destinationLat': instance.destinationLat,
      'destinationLng': instance.destinationLng,
      'driverId': instance.driverId,
      'driverFirstName': instance.driverFirstName,
      'driverLastName': instance.driverLastName,
      'driverRatingAvg': instance.driverRatingAvg,
      'stops': instance.stops,
      'matchedAt': instance.matchedAt,
      'driverProfileImage': instance.driverProfileImage,
      'vehicleId': instance.vehicleId,
      'plateNumber': instance.plateNumber,
      'color': instance.color,
      'manufacturer': instance.manufacturer,
      'model': instance.model,
      'vehicleTypeId': instance.vehicleTypeId,
    };
