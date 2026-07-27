// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_trip_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RateTripParamsImpl _$$RateTripParamsImplFromJson(Map<String, dynamic> json) =>
    _$RateTripParamsImpl(
      tripId: (json['tripId'] as num).toInt(),
      score: (json['score'] as num).toInt(),
      comment: json['comment'] as String?,
      tagIds: (json['tagIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$RateTripParamsImplToJson(
  _$RateTripParamsImpl instance,
) => <String, dynamic>{
  'tripId': instance.tripId,
  'score': instance.score,
  'comment': instance.comment,
  'tagIds': instance.tagIds,
};
