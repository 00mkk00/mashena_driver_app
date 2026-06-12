// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RideRequestModelImpl _$$RideRequestModelImplFromJson(
  Map<String, dynamic> json,
) => _$RideRequestModelImpl(
  id: (json['id'] as num).toInt(),
  riderProfileId: (json['riderProfileId'] as num).toInt(),
  status: json['status'] as String,
  pickupLat: json['pickupLat'] as String,
  pickupLng: json['pickupLng'] as String,
  pickupAddress: json['pickupAddress'] as String,
  destLat: json['destLat'] as String,
  destLng: json['destLng'] as String,
  destAddress: json['destAddress'] as String,
  vehicleTypeId: (json['vehicleTypeId'] as num).toInt(),
  submittedAt: json['submittedAt'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  stops: (json['stops'] as List<dynamic>)
      .map((e) => RideRequestStopModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$RideRequestModelImplToJson(
  _$RideRequestModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'riderProfileId': instance.riderProfileId,
  'status': instance.status,
  'pickupLat': instance.pickupLat,
  'pickupLng': instance.pickupLng,
  'pickupAddress': instance.pickupAddress,
  'destLat': instance.destLat,
  'destLng': instance.destLng,
  'destAddress': instance.destAddress,
  'vehicleTypeId': instance.vehicleTypeId,
  'submittedAt': instance.submittedAt,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'stops': instance.stops,
};

_$RideRequestStopModelImpl _$$RideRequestStopModelImplFromJson(
  Map<String, dynamic> json,
) => _$RideRequestStopModelImpl(
  id: (json['id'] as num).toInt(),
  order: (json['order'] as num).toInt(),
  lat: json['lat'] as String,
  lng: json['lng'] as String,
  address: json['address'] as String,
);

Map<String, dynamic> _$$RideRequestStopModelImplToJson(
  _$RideRequestStopModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'order': instance.order,
  'lat': instance.lat,
  'lng': instance.lng,
  'address': instance.address,
};
