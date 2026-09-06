// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_trip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RateTripModelImpl _$$RateTripModelImplFromJson(Map<String, dynamic> json) =>
    _$RateTripModelImpl(
      id: (json['id'] as num?)?.toInt(),
      tripId: (json['tripId'] as num?)?.toInt(),
      fromUserId: (json['fromUserId'] as num?)?.toInt(),
      toUserId: (json['toUserId'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toInt(),
      comment: json['comment'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => RateTripTagModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      fromUser: json['fromUser'] == null
          ? null
          : RateTripUserModel.fromJson(
              json['fromUser'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$RateTripModelImplToJson(_$RateTripModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tripId': instance.tripId,
      'fromUserId': instance.fromUserId,
      'toUserId': instance.toUserId,
      'score': instance.score,
      'comment': instance.comment,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'tags': instance.tags,
      'fromUser': instance.fromUser,
    };

_$RateTripTagModelImpl _$$RateTripTagModelImplFromJson(
  Map<String, dynamic> json,
) => _$RateTripTagModelImpl(
  id: (json['id'] as num?)?.toInt(),
  code: json['code'] as String?,
  targetType: json['targetType'] as String?,
  sentiment: json['sentiment'] as String?,
  isActive: json['isActive'] as bool?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  deletedAt: json['deletedAt'] as String?,
);

Map<String, dynamic> _$$RateTripTagModelImplToJson(
  _$RateTripTagModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'targetType': instance.targetType,
  'sentiment': instance.sentiment,
  'isActive': instance.isActive,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'deletedAt': instance.deletedAt,
};

_$RateTripUserModelImpl _$$RateTripUserModelImplFromJson(
  Map<String, dynamic> json,
) => _$RateTripUserModelImpl(
  id: (json['id'] as num?)?.toInt(),
  fullName: json['fullName'] as String?,
);

Map<String, dynamic> _$$RateTripUserModelImplToJson(
  _$RateTripUserModelImpl instance,
) => <String, dynamic>{'id': instance.id, 'fullName': instance.fullName};
