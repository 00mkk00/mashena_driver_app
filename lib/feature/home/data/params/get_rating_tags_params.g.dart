// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_rating_tags_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetRatingTagsParamsImpl _$$GetRatingTagsParamsImplFromJson(
  Map<String, dynamic> json,
) => _$GetRatingTagsParamsImpl(
  skip: (json['skip'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
  targetType: json['targetType'] as String? ?? 'RIDER',
  isActive: json['isActive'] as bool? ?? true,
);

Map<String, dynamic> _$$GetRatingTagsParamsImplToJson(
  _$GetRatingTagsParamsImpl instance,
) => <String, dynamic>{
  'skip': instance.skip,
  'limit': instance.limit,
  'targetType': instance.targetType,
  'isActive': instance.isActive,
};
