import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/moderation/data/helpers/moderation_json_helper.dart';
import 'package:mashena_driver_app/feature/moderation/data/models/restriction_model.dart';

part 'penalty_model.freezed.dart';
part 'penalty_model.g.dart';

@freezed
class PenaltyModel with _$PenaltyModel {
  const factory PenaltyModel({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? userId,
    String? targetRole,
    String? penaltyType,
    String? severity,
    String? status,
    String? reason,
    String? issuedByType,
    @JsonKey(fromJson: parseIntFromJson) int? issuedByUserId,
    @JsonKey(fromJson: parseIntFromJson) int? ruleId,
    String? issuedAt,
    String? startsAt,
    String? expiresAt,
    String? revokedAt,
    String? revocationReason,
    List<RestrictionModel>? restrictions,
    String? createdAt,
  }) = _PenaltyModel;

  factory PenaltyModel.fromJson(Map<String, dynamic> json) =>
      _$PenaltyModelFromJson(json);
}
