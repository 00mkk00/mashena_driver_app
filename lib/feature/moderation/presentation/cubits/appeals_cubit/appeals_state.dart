import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/appeal_entity.dart';

part 'appeals_state.freezed.dart';

enum AppealsStatus { initial, loading, success, failure, loadingMore }
enum AppealSubmissionStatus { initial, loading, success, failure }
enum AppealDetailsStatus { initial, loading, success, failure }

@freezed
class AppealsState with _$AppealsState {
  const factory AppealsState({
    @Default(AppealsStatus.initial) AppealsStatus status,
    @Default([]) List<AppealEntity> appeals,
    @Default(false) bool hasReachedMax,
    @Default(AppealSubmissionStatus.initial) AppealSubmissionStatus submissionStatus,
    @Default(AppealDetailsStatus.initial) AppealDetailsStatus detailsStatus,
    AppealEntity? selectedAppeal,
    String? errorMessage,
    String? submissionErrorMessage,
    String? detailsErrorMessage,
  }) = _AppealsState;
}
