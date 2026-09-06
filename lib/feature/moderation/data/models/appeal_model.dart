import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/moderation/data/helpers/moderation_json_helper.dart';
import 'package:mashena_driver_app/feature/moderation/data/models/penalty_model.dart';

part 'appeal_model.freezed.dart';
part 'appeal_model.g.dart';

@freezed
class AppealModel with _$AppealModel {
  const factory AppealModel({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? penaltyId,
    @JsonKey(fromJson: parseIntFromJson) int? userId,
    String? reason,
    String? evidence,
    String? status,
    String? submittedAt,
    String? reviewedAt,
    @JsonKey(fromJson: parseIntFromJson) int? reviewedByUserId,
    String? adminDecision,
    String? adminNotes,
    PenaltyModel? penalty,
    String? createdAt,
  }) = _AppealModel;

  factory AppealModel.fromJson(Map<String, dynamic> json) =>
      _$AppealModelFromJson(json);
}
