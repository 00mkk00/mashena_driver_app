import 'package:mashena_driver_app/feature/home/data/models/rate_trip_model.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/rate_trip_entity.dart';

extension RateTripMapper on RateTripModel {
  RateTripEntity toEntity() {
    return RateTripEntity(
      id: id ?? 0,
      tripId: tripId ?? 0,
      fromUserId: fromUserId ?? 0,
      toUserId: toUserId ?? 0,
      score: score ?? 0,
      comment: comment ?? '',
      createdAt: createdAt ?? '',
      updatedAt: updatedAt ?? '',
      tags: tags?.map((t) => t.toEntity()).toList() ?? const [],
      fromUser:
          fromUser?.toEntity() ?? const RateTripUserEntity(id: 0, fullName: ''),
    );
  }
}

extension RateTripTagMapper on RateTripTagModel {
  RateTripTagEntity toEntity() {
    return RateTripTagEntity(
      id: id ?? 0,
      code: code ?? '',
      targetType: targetType ?? '',
      sentiment: sentiment ?? '',
      isActive: isActive ?? false,
      createdAt: createdAt ?? '',
    );
  }
}

extension RateTripUserMapper on RateTripUserModel {
  RateTripUserEntity toEntity() {
    return RateTripUserEntity(
      id: id ?? 0,
      fullName: fullName ?? '',
    );
  }
}
