// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_shared_ride_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SharedRideLocationParamsImpl _$$SharedRideLocationParamsImplFromJson(
  Map<String, dynamic> json,
) => _$SharedRideLocationParamsImpl(
  lat: (json['lat'] as num).toDouble(),
  lng: (json['lng'] as num).toDouble(),
  address: json['address'] as String,
);

Map<String, dynamic> _$$SharedRideLocationParamsImplToJson(
  _$SharedRideLocationParamsImpl instance,
) => <String, dynamic>{
  'lat': instance.lat,
  'lng': instance.lng,
  'address': instance.address,
};

_$CreateSharedRideParamsImpl _$$CreateSharedRideParamsImplFromJson(
  Map<String, dynamic> json,
) => _$CreateSharedRideParamsImpl(
  origin: SharedRideLocationParams.fromJson(
    json['origin'] as Map<String, dynamic>,
  ),
  destination: SharedRideLocationParams.fromJson(
    json['destination'] as Map<String, dynamic>,
  ),
  departureTime: json['departureTime'] as String,
  maxPassengers: (json['maxPassengers'] as num).toInt(),
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$$CreateSharedRideParamsImplToJson(
  _$CreateSharedRideParamsImpl instance,
) => <String, dynamic>{
  'origin': instance.origin,
  'destination': instance.destination,
  'departureTime': instance.departureTime,
  'maxPassengers': instance.maxPassengers,
  'notes': instance.notes,
};
