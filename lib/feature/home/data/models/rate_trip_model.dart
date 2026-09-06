import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_trip_model.freezed.dart';
part 'rate_trip_model.g.dart';

@freezed
class RateTripModel with _$RateTripModel {
  const factory RateTripModel({
    int? id,
    int? tripId,
    int? fromUserId,
    int? toUserId,
    int? score,
    String? comment,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
    List<RateTripTagModel>? tags,
    RateTripUserModel? fromUser,
  }) = _RateTripModel;

  factory RateTripModel.fromJson(Map<String, dynamic> json) =>
      _$RateTripModelFromJson(json);
}

@freezed
class RateTripTagModel with _$RateTripTagModel {
  const factory RateTripTagModel({
    int? id,
    String? code,
    String? targetType,
    String? sentiment,
    bool? isActive,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
  }) = _RateTripTagModel;

  factory RateTripTagModel.fromJson(Map<String, dynamic> json) =>
      _$RateTripTagModelFromJson(json);
}

@freezed
class RateTripUserModel with _$RateTripUserModel {
  const factory RateTripUserModel({int? id, String? fullName}) =
      _RateTripUserModel;

  factory RateTripUserModel.fromJson(Map<String, dynamic> json) =>
      _$RateTripUserModelFromJson(json);
}
