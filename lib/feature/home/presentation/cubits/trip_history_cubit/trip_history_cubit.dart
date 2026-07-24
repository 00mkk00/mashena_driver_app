import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_driver_trip_history_params.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/get_driver_trip_history_use_case.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/trip_history_cubit/trip_history_state.dart';

class TripHistoryCubit extends Cubit<TripHistoryState> {
  final GetDriverTripHistoryUseCase _getDriverTripHistoryUseCase;
  static const int _limit = 10;
  bool _isFetching = false;

  TripHistoryCubit(this._getDriverTripHistoryUseCase)
    : super(const TripHistoryState());

  Future<void> getTrips({bool isRefresh = false}) async {
    if (_isFetching) return;
    if (state.hasReachedMax && !isRefresh) return;

    _isFetching = true;

    try {
      if (isRefresh || state.status == TripHistoryStatus.initial) {
        emit(
          state.copyWith(
            status: TripHistoryStatus.loading,
            trips: [],
            hasReachedMax: false,
            errorMessage: null,
          ),
        );
      }

      final skip = state.trips.length;
      final params = GetDriverTripHistoryParams(skip: skip, limit: _limit);

      final result = await _getDriverTripHistoryUseCase(params);

      result.fold(
        (failure) {
          emit(
            state.copyWith(
              status: TripHistoryStatus.failure,
              errorMessage: failure.rawMessage,
            ),
          );
        },
        (newTrips) {
          emit(
            state.copyWith(
              status: TripHistoryStatus.success,
              trips: List.of(state.trips)..addAll(newTrips),
              hasReachedMax: newTrips.length < _limit,
            ),
          );
        },
      );
    } finally {
      _isFetching = false;
    }
  }
}
