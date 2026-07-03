import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_ride_request_params.dart';
import 'package:mashena_driver_app/feature/home/domain/use_cases/get_ride_request_use_case.dart';
import 'ride_request_state.dart';

class RideRequestCubit extends Cubit<RideRequestState> {
  final GetRideRequestUseCase _getRideRequestUseCase;

  Timer? _countdownTimer;
  Timer? _resetTimer;

  void Function(int rideRequestId)? onAutoReject;

  RideRequestCubit({required GetRideRequestUseCase getRideRequestUseCase})
    : _getRideRequestUseCase = getRideRequestUseCase,
      super(const RideRequestState());

  // ─── Called from SocketCubit when ride:offer arrives ──────────────────────

  void onRideOffer({
    required int rideRequestId,
    required int timeoutSec,
  }) async {
    // Cancel any lingering timers from previous request
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
  // FIX: cancel ALL timers including _resetTimer so a pending reset from a
  // previous reject/expire can never wipe the accepted state.

  void acceptRequest() {
    _cancelAllTimers(); // ← kills both _countdownTimer AND _resetTimer
    emit(
      state.copyWith(
        status: RideRequestStatus.accepted,
        isBottomSheetExpanded: true,
      ),
    );
    // Do NOT call _scheduleReset here — the accepted state must persist
    // until DriverStatusCubit.endTrip() is called.
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
    _scheduleReset(); // only rejected/expired should reset back to idle
  }

  // ─── Toggle bottom sheet ───────────────────────────────────────────────────

  void toggleBottomSheet() {
    emit(state.copyWith(isBottomSheetExpanded: !state.isBottomSheetExpanded));
  }

  // ─── Countdown ────────────────────────────────────────────────────────────

  void _startCountdown() {
    _countdownTimer?.cancel();
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      // Guard: if we're no longer in an incoming state (e.g. accepted just fired)
      // stop the countdown immediately — don't auto-reject an accepted ride.
      if (state.status != RideRequestStatus.incoming) {
        _countdownTimer?.cancel();
        _countdownTimer = null;
        return;
      }

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

    // Guard: don't auto-reject if the driver already accepted
    if (state.status == RideRequestStatus.accepted) return;

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
  // Only called after rejected / expired — never after accepted.

  void _scheduleReset() {
    _resetTimer?.cancel();
    _resetTimer = Timer(const Duration(milliseconds: 600), () {
      if (!isClosed) emit(const RideRequestState());
    });
  }

  // ─── Cancel all timers ────────────────────────────────────────────────────

  void _cancelAllTimers() {
    _countdownTimer?.cancel();
    _countdownTimer = null;
    _resetTimer?.cancel(); // ← critical: kills any pending reset
    _resetTimer = null;
  }

  // ─── Dispose ──────────────────────────────────────────────────────────────

  @override
  Future<void> close() {
    _cancelAllTimers();
    return super.close();
  }
}
