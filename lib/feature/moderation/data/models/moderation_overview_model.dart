import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/moderation/data/helpers/moderation_json_helper.dart';
import 'package:mashena_driver_app/feature/moderation/data/models/appeal_model.dart';
import 'package:mashena_driver_app/feature/moderation/data/models/penalty_model.dart';
import 'package:mashena_driver_app/feature/moderation/data/models/restriction_model.dart';
import 'package:mashena_driver_app/feature/moderation/data/models/violation_model.dart';

part 'moderation_overview_model.freezed.dart';
part 'moderation_overview_model.g.dart';

@freezed
class ModerationOverviewModel with _$ModerationOverviewModel {
  const factory ModerationOverviewModel({
    @JsonKey(fromJson: parseIntFromJson) int? userId,
    String? accountStatus,
    @JsonKey(fromJson: parseIntFromJson) int? warningCount,
    @JsonKey(fromJson: parseIntFromJson) int? totalViolationsCount,
    List<PenaltyModel>? activePenalties,
    List<RestrictionModel>? activeRestrictions,
    List<ViolationModel>? recentViolations,
    List<AppealModel>? activeAppeals,
  }) = _ModerationOverviewModel;

  factory ModerationOverviewModel.fromJson(Map<String, dynamic> json) =>
      _$ModerationOverviewModelFromJson(json);
}
