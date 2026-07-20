import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/home/data/params/arrive_trip_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/cancel_trip_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/complete_trip_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_ride_request_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/start_trip_params.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/arrive_trip_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/cancel_trip_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/complete_trip_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/get_ride_request_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/start_trip_use_case.dart';
import 'ride_request_state.dart';

class RideRequestCubit extends Cubit<RideRequestState> {
  final GetRideRequestUseCase _getRideRequestUseCase;
  final ArriveTripUseCase _arriveTripUseCase;
  final CancelTripUseCase _cancelTripUseCase;
  final StartTripUseCase _startTripUseCase;
  final CompleteTripUseCase _completeTripUseCase;

  Timer? _countdownTimer;
  Timer? _resetTimer;

  void Function(int rideRequestId)? onAutoReject;

  RideRequestCubit({
    required GetRideRequestUseCase getRideRequestUseCase,
    required ArriveTripUseCase arriveTripUseCase,
    required CancelTripUseCase cancelTripUseCase,
    required StartTripUseCase startTripUseCase,
    required CompleteTripUseCase completeTripUseCase,
  }) : _getRideRequestUseCase = getRideRequestUseCase,
       _arriveTripUseCase = arriveTripUseCase,
       _cancelTripUseCase = cancelTripUseCase,
       _startTripUseCase = startTripUseCase,
       _completeTripUseCase = completeTripUseCase,
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

  // ─── Arrive ───────────────────────────────────────────────────────────────

  Future<void> arriveTrip() async {
    final rideRequestId = state.rideRequestId;
    if (rideRequestId == null) return;

    emit(state.copyWith(isArrivingTrip: true, clearErrorMessage: true));

    final result = await _arriveTripUseCase.call(
      ArriveTripParams(rideRequestId: rideRequestId.toString()),
    );

    if (isClosed) return;

    result.fold(
      (failure) => emit(
        state.copyWith(
          isArrivingTrip: false,
          errorMessage: failure.rawMessage ?? 'Failed to mark as arrived',
        ),
      ),
      (entity) => emit(
        state.copyWith(
          isArrivingTrip: false,
          status: RideRequestStatus.arrived,
          freeWaitTimeSeconds: entity.freeWaitTimeSeconds,
          clearErrorMessage: true,
        ),
      ),
    );
  }

  // ─── Cancel Trip ──────────────────────────────────────────────────────────

  Future<void> cancelTrip() async {
    final rideRequestId = state.rideRequestId;
    if (rideRequestId == null) return;

    emit(state.copyWith(isCancelingTrip: true, clearErrorMessage: true));

    final result = await _cancelTripUseCase.call(
      CancelTripParams(rideRequestId: rideRequestId.toString()),
    );

    if (isClosed) return;

    result.fold(
      (failure) => emit(
        state.copyWith(
          isCancelingTrip: false,
          errorMessage: failure.rawMessage ?? 'Failed to cancel trip',
        ),
      ),
      (_) {
        emit(
          state.copyWith(
            isCancelingTrip: false,
            status: RideRequestStatus.rejected,
            isBottomSheetExpanded: false,
            clearErrorMessage: true,
          ),
        );
        _scheduleReset();
      },
    );
  }

  // ─── Start Trip ──────────────────────────────────────────────────────────────

  Future<void> startTrip() async {
    final rideRequestId = state.rideRequestId;
    if (rideRequestId == null) return;

    emit(state.copyWith(isStartingTrip: true, clearErrorMessage: true));

    final result = await _startTripUseCase.call(
      StartTripParams(rideRequestId: rideRequestId.toString()),
    );

    if (isClosed) return;

    result.fold(
      (failure) => emit(
        state.copyWith(
          isStartingTrip: false,
          errorMessage: failure.rawMessage ?? 'Failed to start trip',
        ),
      ),
      (_) => emit(
        state.copyWith(
          isStartingTrip: false,
          status: RideRequestStatus.started,
          clearErrorMessage: true,
        ),
      ),
    );
  }

  // ─── Complete Trip ────────────────────────────────────────────────────────────

  Future<void> completeTrip() async {
    final rideRequestId = state.rideRequestId;
    if (rideRequestId == null) return;

    emit(state.copyWith(isCompletingTrip: true, clearErrorMessage: true));

    final result = await _completeTripUseCase.call(
      CompleteTripParams(rideRequestId: rideRequestId.toString()),
    );

    if (isClosed) return;

    result.fold(
      (failure) => emit(
        state.copyWith(
          isCompletingTrip: false,
          errorMessage: failure.rawMessage ?? 'Failed to complete trip',
        ),
      ),
      (_) => emit(
        state.copyWith(isCompletingTrip: false, clearErrorMessage: true),
      ),
    );
  }

  // ─── Trip cancelled by server (rider or admin) ───────────────────────────────

  /// Called when the server emits `trip:cancelled`.
  /// Resets ride state back to idle and exposes [tripCancelledBy] for the UI.
  void onTripCancelledByServer({required String cancelledBy}) {
    _cancelAllTimers();
    emit(const RideRequestState().copyWith(tripCancelledBy: cancelledBy));
  }

  /// Called by the UI after it has shown the cancellation bottom sheet.
  void clearTripCancellation() {
    emit(state.copyWith(clearTripCancelled: true));
  }

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
