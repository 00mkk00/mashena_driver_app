// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_tag_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingTagModelImpl _$$RatingTagModelImplFromJson(Map<String, dynamic> json) =>
    _$RatingTagModelImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      targetType: json['targetType'] as String?,
      sentiment: json['sentiment'] as String?,
      isActive: json['isActive'] as bool?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$RatingTagModelImplToJson(
  _$RatingTagModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'targetType': instance.targetType,
  'sentiment': instance.sentiment,
  'isActive': instance.isActive,
  'name': instance.name,
};
