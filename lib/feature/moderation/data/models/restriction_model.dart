import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/moderation/data/helpers/moderation_json_helper.dart';

part 'restriction_model.freezed.dart';
part 'restriction_model.g.dart';

@freezed
class RestrictionModel with _$RestrictionModel {
  const factory RestrictionModel({
    @JsonKey(fromJson: parseIntFromJson) int? id,
    @JsonKey(fromJson: parseIntFromJson) int? userId,
    @JsonKey(fromJson: parseIntFromJson) int? penaltyId,
    String? restrictionType,
    String? status,
    String? reason,
    String? startsAt,
    String? expiresAt,
    String? revokedAt,
    String? revocationReason,
    String? createdAt,
  }) = _RestrictionModel;

  factory RestrictionModel.fromJson(Map<String, dynamic> json) =>
      _$RestrictionModelFromJson(json);
}
