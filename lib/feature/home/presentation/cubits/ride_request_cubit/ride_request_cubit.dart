import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_ride_request_params.dart';
import 'package:mashena_driver_app/feature/home/domain/use_cases/get_ride_request_use_case.dart';
import 'ride_request_state.dart';

class RideRequestCubit extends Cubit<RideRequestState> {
  final GetRideRequestUseCase _getRideRequestUseCase;

  Timer? _countdownTimer;
  Timer? _resetTimer; // 👈 track reset timer separately

  void Function(int rideRequestId)? onAutoReject;

  RideRequestCubit({required GetRideRequestUseCase getRideRequestUseCase})
    : _getRideRequestUseCase = getRideRequestUseCase,
      super(const RideRequestState());

  // ─── Called from SocketCubit when ride:offer arrives ──────────────────────

  void onRideOffer({
    required int rideRequestId,
    required int timeoutSec,
  }) async {
    // ✅ Cancel any lingering timers from previous request before starting new
    _cancelAllTimers();

    emit(
      state.copyWith(
        status: RideRequestStatus.incoming,
        rideRequestId: rideRequestId,
        countdownSeconds: timeoutSec,
        isLoadingDetails: true,
        clearErrorMessage: true,
      ),
    );

    _startCountdown();

    final result = await _getRideRequestUseCase.call(
      GetRideRequestParams(id: rideRequestId),
    );

    if (isClosed) return;

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoadingDetails: false,
          errorMessage: failure.rawMessage ?? 'Failed to load ride details',
        ),
      ),
      (rideRequest) => emit(
        state.copyWith(
          isLoadingDetails: false,
          rideRequest: rideRequest,
          pickupAddress: rideRequest.pickupAddress,
          destinationAddress: rideRequest.destAddress,
          isResolvingAddresses: false,
        ),
      ),
    );
  }

  // ─── Accept ───────────────────────────────────────────────────────────────

  void acceptRequest() {
    _cancelAllTimers();
    emit(
      state.copyWith(
        status: RideRequestStatus.accepted,
        isBottomSheetExpanded: true,
      ),
    );
  }

  // ─── Reject ───────────────────────────────────────────────────────────────

  void rejectRequest() {
    _cancelAllTimers();
    emit(
      state.copyWith(
        status: RideRequestStatus.rejected,
        isBottomSheetExpanded: false,
      ),
    );
    _scheduleReset();
  }

  // ─── Toggle bottom sheet ───────────────────────────────────────────────────

  void toggleBottomSheet() {
    emit(state.copyWith(isBottomSheetExpanded: !state.isBottomSheetExpanded));
  }

  // ─── Countdown ────────────────────────────────────────────────────────────

  void _startCountdown() {
    _countdownTimer?.cancel(); // ✅ guard against duplicate timers
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      final remaining = state.countdownSeconds - 1;
      if (remaining <= 0) {
        _onCountdownExpired();
        return;
      }
      emit(state.copyWith(countdownSeconds: remaining));
    });
  }

  void _onCountdownExpired() {
    _countdownTimer?.cancel();
    _countdownTimer = null;

    final rideRequestId = state.rideRequestId;
    if (rideRequestId != null) {
      onAutoReject?.call(rideRequestId);
    }

    emit(
      state.copyWith(status: RideRequestStatus.expired, countdownSeconds: 0),
    );

    _scheduleReset();
  }

  // ─── Reset ────────────────────────────────────────────────────────────────

  void _scheduleReset() {
    _resetTimer?.cancel(); // ✅ cancel previous reset if pending
    _resetTimer = Timer(const Duration(milliseconds: 600), () {
      if (!isClosed) emit(const RideRequestState());
    });
  }

  // ─── Cancel all timers ────────────────────────────────────────────────────

  void _cancelAllTimers() {
    _countdownTimer?.cancel();
    _countdownTimer = null;
    _resetTimer?.cancel(); // ✅ critical — cancels pending reset
    _resetTimer = null;
  }

  // ─── Dispose ──────────────────────────────────────────────────────────────

  @override
  Future<void> close() {
    _cancelAllTimers();
    return super.close();
  }
}
