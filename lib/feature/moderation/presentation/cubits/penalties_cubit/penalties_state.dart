import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/penalty_entity.dart';

part 'penalties_state.freezed.dart';

enum PenaltiesStatus { initial, loading, success, failure, loadingMore }

@freezed
class PenaltiesState with _$PenaltiesState {
  const factory PenaltiesState({
    @Default(PenaltiesStatus.initial) PenaltiesStatus status,
    @Default([]) List<PenaltyEntity> penalties,
    @Default(false) bool hasReachedMax,
    String? errorMessage,
  }) = _PenaltiesState;
}
