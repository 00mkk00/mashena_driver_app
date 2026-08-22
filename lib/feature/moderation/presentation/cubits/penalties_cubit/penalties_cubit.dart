import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/get_penalties_params.dart';
import 'package:mashena_driver_app/feature/moderation/domain/usecases/get_penalties_use_case.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/cubits/penalties_cubit/penalties_state.dart';

class PenaltiesCubit extends Cubit<PenaltiesState> {
  final GetPenaltiesUseCase _getPenaltiesUseCase;
  static const int _limit = 10;
  bool _isFetching = false;

  PenaltiesCubit(this._getPenaltiesUseCase)
      : super(const PenaltiesState());

  Future<void> getPenalties({bool isRefresh = false}) async {
    if (_isFetching) return;
    if (state.hasReachedMax && !isRefresh) return;

    _isFetching = true;

    try {
      if (isRefresh || state.status == PenaltiesStatus.initial) {
        emit(
          state.copyWith(
            status: PenaltiesStatus.loading,
            penalties: [],
            hasReachedMax: false,
            errorMessage: null,
          ),
        );
      } else {
        emit(state.copyWith(status: PenaltiesStatus.loadingMore));
      }

      final skip = isRefresh ? 0 : state.penalties.length;
      final params = GetPenaltiesParams(skip: skip, limit: _limit);

      final result = await _getPenaltiesUseCase(params);

      result.fold(
        (failure) {
          emit(
            state.copyWith(
              status: PenaltiesStatus.failure,
              errorMessage: failure.rawMessage,
            ),
          );
        },
        (newPenalties) {
          final updatedList = isRefresh
              ? newPenalties
              : (List.of(state.penalties)..addAll(newPenalties));

          emit(
            state.copyWith(
              status: PenaltiesStatus.success,
              penalties: updatedList,
              hasReachedMax: newPenalties.length < _limit,
              errorMessage: null,
            ),
          );
        },
      );
    } finally {
      _isFetching = false;
    }
  }
}
