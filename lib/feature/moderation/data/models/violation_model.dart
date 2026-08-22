import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/moderation/data/helpers/moderation_json_helper.dart';

part 'violation_model.freezed.dart';
part 'violation_model.g.dart';

@freezed
class ViolationModel with _$ViolationModel {
  const factory ViolationModel({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? userId,
    String? targetRole,
    String? violationType,
    String? source,
    String? severity,
    String? status,
    String? description,
    String? sourceType,
    @JsonKey(fromJson: parseIntFromJson) int? sourceId,
    @JsonKey(fromJson: parseIntFromJson) int? penaltyId,
    String? occurredAt,
    String? createdAt,
  }) = _ViolationModel;

  factory ViolationModel.fromJson(Map<String, dynamic> json) =>
      _$ViolationModelFromJson(json);
}
