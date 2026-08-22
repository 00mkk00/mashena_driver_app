import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/get_appeal_details_params.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/get_appeals_params.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/submit_appeal_params.dart';
import 'package:mashena_driver_app/feature/moderation/domain/usecases/get_appeal_details_use_case.dart';
import 'package:mashena_driver_app/feature/moderation/domain/usecases/get_appeals_use_case.dart';
import 'package:mashena_driver_app/feature/moderation/domain/usecases/submit_appeal_use_case.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/cubits/appeals_cubit/appeals_state.dart';

class AppealsCubit extends Cubit<AppealsState> {
  final GetAppealsUseCase _getAppealsUseCase;
  final SubmitAppealUseCase _submitAppealUseCase;
  final GetAppealDetailsUseCase _getAppealDetailsUseCase;

  static const int _limit = 10;
  bool _isFetching = false;

  AppealsCubit({
    required GetAppealsUseCase getAppealsUseCase,
    required SubmitAppealUseCase submitAppealUseCase,
    required GetAppealDetailsUseCase getAppealDetailsUseCase,
  })  : _getAppealsUseCase = getAppealsUseCase,
        _submitAppealUseCase = submitAppealUseCase,
        _getAppealDetailsUseCase = getAppealDetailsUseCase,
        super(const AppealsState());

  Future<void> getAppeals({bool isRefresh = false}) async {
    if (_isFetching) return;
    if (state.hasReachedMax && !isRefresh) return;

    _isFetching = true;

    try {
      if (isRefresh || state.status == AppealsStatus.initial) {
        emit(
          state.copyWith(
            status: AppealsStatus.loading,
            appeals: [],
            hasReachedMax: false,
            errorMessage: null,
          ),
        );
      } else {
        emit(state.copyWith(status: AppealsStatus.loadingMore));
      }

      final skip = isRefresh ? 0 : state.appeals.length;
      final params = GetAppealsParams(skip: skip, limit: _limit);

      final result = await _getAppealsUseCase(params);

      result.fold(
        (failure) {
          emit(
            state.copyWith(
              status: AppealsStatus.failure,
              errorMessage: failure.rawMessage,
            ),
          );
        },
        (newAppeals) {
          final updatedList = isRefresh
              ? newAppeals
              : (List.of(state.appeals)..addAll(newAppeals));

          emit(
            state.copyWith(
              status: AppealsStatus.success,
              appeals: updatedList,
              hasReachedMax: newAppeals.length < _limit,
              errorMessage: null,
            ),
          );
        },
      );
    } finally {
      _isFetching = false;
    }
  }

  Future<bool> submitAppeal({
    required int penaltyId,
    required String reason,
    String? evidence,
  }) async {
    emit(
      state.copyWith(
        submissionStatus: AppealSubmissionStatus.loading,
        submissionErrorMessage: null,
      ),
    );

    final params = SubmitAppealParams(
      penaltyId: penaltyId,
      reason: reason,
      evidence: evidence,
    );

    final result = await _submitAppealUseCase(params);

    return result.fold(
      (failure) {
        emit(
          state.copyWith(
            submissionStatus: AppealSubmissionStatus.failure,
            submissionErrorMessage: failure.rawMessage,
          ),
        );
        return false;
      },
      (newAppeal) {
        final updatedList = [newAppeal, ...state.appeals];
        emit(
          state.copyWith(
            submissionStatus: AppealSubmissionStatus.success,
            appeals: updatedList,
            submissionErrorMessage: null,
          ),
        );
        return true;
      },
    );
  }

  Future<void> getAppealDetails(int appealId) async {
    emit(
      state.copyWith(
        detailsStatus: AppealDetailsStatus.loading,
        detailsErrorMessage: null,
      ),
    );

    final params = GetAppealDetailsParams(id: appealId);
    final result = await _getAppealDetailsUseCase(params);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            detailsStatus: AppealDetailsStatus.failure,
            detailsErrorMessage: failure.rawMessage,
          ),
        );
      },
      (appeal) {
        emit(
          state.copyWith(
            detailsStatus: AppealDetailsStatus.success,
            selectedAppeal: appeal,
            detailsErrorMessage: null,
          ),
        );
      },
    );
  }

  void resetSubmissionStatus() {
    emit(
      state.copyWith(
        submissionStatus: AppealSubmissionStatus.initial,
        submissionErrorMessage: null,
      ),
    );
  }
}
