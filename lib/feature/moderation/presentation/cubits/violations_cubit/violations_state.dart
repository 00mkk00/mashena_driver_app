import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/violation_entity.dart';

part 'violations_state.freezed.dart';

enum ViolationsStatus { initial, loading, success, failure, loadingMore }

@freezed
class ViolationsState with _$ViolationsState {
  const factory ViolationsState({
    @Default(ViolationsStatus.initial) ViolationsStatus status,
    @Default([]) List<ViolationEntity> violations,
    @Default(false) bool hasReachedMax,
    String? errorMessage,
  }) = _ViolationsState;
}
