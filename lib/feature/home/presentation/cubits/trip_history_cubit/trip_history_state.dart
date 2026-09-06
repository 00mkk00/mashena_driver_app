import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_trip_history_entity.dart';

part 'trip_history_state.freezed.dart';

enum TripHistoryStatus { initial, loading, success, failure }

@freezed
class TripHistoryState with _$TripHistoryState {
  const factory TripHistoryState({
    @Default(TripHistoryStatus.initial) TripHistoryStatus status,
    @Default([]) List<DriverTripHistoryEntity> trips,
    @Default(false) bool hasReachedMax,
    String? errorMessage,
  }) = _TripHistoryState;
}
