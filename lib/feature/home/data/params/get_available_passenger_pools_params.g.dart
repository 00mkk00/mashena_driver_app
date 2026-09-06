// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_available_passenger_pools_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAvailablePassengerPoolsParamsImpl
_$$GetAvailablePassengerPoolsParamsImplFromJson(Map<String, dynamic> json) =>
    _$GetAvailablePassengerPoolsParamsImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      radiusKm: (json['radiusKm'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$GetAvailablePassengerPoolsParamsImplToJson(
  _$GetAvailablePassengerPoolsParamsImpl instance,
) => <String, dynamic>{
  'lat': instance.lat,
  'lng': instance.lng,
  'radiusKm': instance.radiusKm,
};
