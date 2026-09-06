import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/moderation_overview_entity.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/restriction_entity.dart';

part 'moderation_overview_state.freezed.dart';

enum ModerationOverviewStatus { initial, loading, success, failure }

@freezed
class ModerationOverviewState with _$ModerationOverviewState {
  const factory ModerationOverviewState({
    @Default(ModerationOverviewStatus.initial) ModerationOverviewStatus status,
    ModerationOverviewEntity? overview,
    @Default([]) List<RestrictionEntity> activeRestrictions,
    String? errorMessage,
  }) = _ModerationOverviewState;
}
