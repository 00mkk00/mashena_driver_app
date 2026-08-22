import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/moderation/data/params/get_violations_params.dart';
import 'package:mashena_driver_app/feature/moderation/domain/usecases/get_violations_use_case.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/cubits/violations_cubit/violations_state.dart';

class ViolationsCubit extends Cubit<ViolationsState> {
  final GetViolationsUseCase _getViolationsUseCase;
  static const int _limit = 10;
  bool _isFetching = false;

  ViolationsCubit(this._getViolationsUseCase) : super(const ViolationsState());

  Future<void> getViolations({bool isRefresh = false}) async {
    if (_isFetching) return;
    if (state.hasReachedMax && !isRefresh) return;

    _isFetching = true;

    try {
      if (isRefresh || state.status == ViolationsStatus.initial) {
        emit(
          state.copyWith(
            status: ViolationsStatus.loading,
            violations: [],
            hasReachedMax: false,
            errorMessage: null,
          ),
        );
      } else {
        emit(state.copyWith(status: ViolationsStatus.loadingMore));
      }

      final skip = isRefresh ? 0 : state.violations.length;
      final params = GetViolationsParams(skip: skip, limit: _limit);

      final result = await _getViolationsUseCase(params);

      result.fold(
        (failure) {
          log(failure.rawMessage.toString());
          emit(
            state.copyWith(
              status: ViolationsStatus.failure,
              errorMessage: failure.rawMessage,
            ),
          );
        },
        (newViolations) {
          final updatedList = isRefresh
              ? newViolations
              : (List.of(state.violations)..addAll(newViolations));

          emit(
            state.copyWith(
              status: ViolationsStatus.success,
              violations: updatedList,
              hasReachedMax: newViolations.length < _limit,
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
