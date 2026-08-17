import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/home/data/params/check_in_shared_ride_passenger_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/create_shared_ride_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/drop_off_shared_ride_passenger_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/on_board_shared_ride_passenger_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/remove_shared_ride_passenger_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/shared_ride_cancel_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/shared_ride_complete_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/shared_ride_ready_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/shared_ride_start_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/shared_ride_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/check_in_shared_ride_passenger_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/create_shared_ride_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/drop_off_shared_ride_passenger_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/on_board_shared_ride_passenger_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/remove_shared_ride_passenger_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/shared_ride_cancel_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/shared_ride_complete_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/shared_ride_ready_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/shared_ride_start_use_case.dart';

import 'shared_ride_state.dart';

class SharedRideCubit extends Cubit<SharedRideState> {
  final CreateSharedRideUseCase createSharedRideUseCase;
  final SharedRideReadyUseCase sharedRideReadyUseCase;
  final SharedRideStartUseCase sharedRideStartUseCase;
  final SharedRideCompleteUseCase sharedRideCompleteUseCase;
  final SharedRideCancelUseCase sharedRideCancelUseCase;
  final CheckInSharedRidePassengerUseCase checkInSharedRidePassengerUseCase;
  final OnBoardSharedRidePassengerUseCase onBoardSharedRidePassengerUseCase;
  final DropOffSharedRidePassengerUseCase dropOffSharedRidePassengerUseCase;
  final RemoveSharedRidePassengerUseCase removeSharedRidePassengerUseCase;

  SharedRideCubit({
    required this.createSharedRideUseCase,
    required this.sharedRideReadyUseCase,
    required this.sharedRideStartUseCase,
    required this.sharedRideCompleteUseCase,
    required this.sharedRideCancelUseCase,
    required this.checkInSharedRidePassengerUseCase,
    required this.onBoardSharedRidePassengerUseCase,
    required this.dropOffSharedRidePassengerUseCase,
    required this.removeSharedRidePassengerUseCase,
  }) : super(const SharedRideState());

  // 1. Create Shared Ride
  Future<void> createSharedRide(CreateSharedRideParams params) async {
    emit(state.copyWith(isCreating: true, clearErrorMessage: true));
    final result = await createSharedRideUseCase(params);
    result.fold(
      (failure) => emit(
        state.copyWith(
          isCreating: false,
          errorMessage: failure.rawMessage ?? 'Failed to create shared ride',
        ),
      ),
      (ride) => emit(
        state.copyWith(
          isCreating: false,
          ride: ride,
          status: SharedRideStatus.lobby,
        ),
      ),
    );
  }

  // 2. Shared Ride Ready (Start Boarding)
  Future<void> readySharedRide() async {
    if (state.ride == null) return;
    emit(state.copyWith(isReadying: true, clearErrorMessage: true));
    final result = await sharedRideReadyUseCase(
      SharedRideReadyParams(id: state.ride!.id),
    );
    result.fold(
      (failure) => emit(
        state.copyWith(
          isReadying: false,
          errorMessage: failure.rawMessage ?? 'Failed to set ride ready',
        ),
      ),
      (ride) => emit(
        state.copyWith(
          isReadying: false,
          ride: ride,
          status: SharedRideStatus.boarding,
        ),
      ),
    );
  }

  // 3. Shared Ride Start (Start Trip)
  Future<void> startSharedRide() async {
    if (state.ride == null) return;
    emit(state.copyWith(isStarting: true, clearErrorMessage: true));
    final result = await sharedRideStartUseCase(
      SharedRideStartParams(id: state.ride!.id),
    );
    result.fold(
      (failure) => emit(
        state.copyWith(
          isStarting: false,
          errorMessage: failure.rawMessage ?? 'Failed to start shared ride',
        ),
      ),
      (ride) => emit(
        state.copyWith(
          isStarting: false,
          ride: ride,
          status: SharedRideStatus.liveTrip,
        ),
      ),
    );
  }

  // 4. Shared Ride Complete
  Future<void> completeSharedRide() async {
    if (state.ride == null) return;
    emit(state.copyWith(isCompleting: true, clearErrorMessage: true));
    final result = await sharedRideCompleteUseCase(
      SharedRideCompleteParams(id: state.ride!.id),
    );
    result.fold(
      (failure) => emit(
        state.copyWith(
          isCompleting: false,
          errorMessage: failure.rawMessage ?? 'Failed to complete shared ride',
        ),
      ),
      (ride) => emit(
        state.copyWith(
          isCompleting: false,
          ride: ride,
          status: SharedRideStatus.summary,
        ),
      ),
    );
  }

  // 5. Shared Ride Cancel
  Future<void> cancelSharedRide({String? reason}) async {
    if (state.ride == null) return;
    emit(state.copyWith(isCancelling: true, clearErrorMessage: true));
    final result = await sharedRideCancelUseCase(
      SharedRideCancelParams(id: state.ride!.id, reason: reason),
    );
    result.fold(
      (failure) => emit(
        state.copyWith(
          isCancelling: false,
          errorMessage: failure.rawMessage ?? 'Failed to cancel shared ride',
        ),
      ),
      (ride) => emit(
        state.copyWith(
          isCancelling: false,
          ride: ride,
          status: SharedRideStatus.cancelled,
        ),
      ),
    );
  }

  // 6. Check In Passenger
  Future<void> checkInPassenger(int passengerId) async {
    if (state.ride == null) return;
    final updatedCheckingIn = Set<int>.from(state.checkingInPassengers)
      ..add(passengerId);
    emit(
      state.copyWith(
        checkingInPassengers: updatedCheckingIn,
        clearErrorMessage: true,
      ),
    );

    final result = await checkInSharedRidePassengerUseCase(
      CheckInSharedRidePassengerParams(
        id: state.ride!.id,
        passengerId: passengerId,
      ),
    );

    final doneCheckingIn = Set<int>.from(state.checkingInPassengers)
      ..remove(passengerId);

    result.fold(
      (failure) => emit(
        state.copyWith(
          checkingInPassengers: doneCheckingIn,
          errorMessage: failure.rawMessage ?? 'Failed to check in passenger',
        ),
      ),
      (updatedPassenger) {
        final currentPassengers = List<SharedRidePassengerEntity>.from(
          state.ride!.passengers,
        );
        final index = currentPassengers.indexWhere(
          (p) =>
              p.id == passengerId ||
              (updatedPassenger.id != 0 && p.id == updatedPassenger.id),
        );
        final effectivePassenger = updatedPassenger.copyWith(
          id: updatedPassenger.id != 0 ? updatedPassenger.id : passengerId,
          status: updatedPassenger.status.isNotEmpty
              ? updatedPassenger.status
              : 'checked_in',
        );
        if (index != -1) {
          currentPassengers[index] = effectivePassenger;
        } else {
          currentPassengers.add(effectivePassenger);
        }
        emit(
          state.copyWith(
            checkingInPassengers: doneCheckingIn,
            ride: state.ride!.copyWith(passengers: currentPassengers),
          ),
        );
      },
    );
  }

  // 7. On Board Passenger
  Future<void> onBoardPassenger(int passengerId) async {
    if (state.ride == null) return;
    final updatedOnBoarding = Set<int>.from(state.onBoardingPassengers)
      ..add(passengerId);
    emit(
      state.copyWith(
        onBoardingPassengers: updatedOnBoarding,
        clearErrorMessage: true,
      ),
    );

    final result = await onBoardSharedRidePassengerUseCase(
      OnBoardSharedRidePassengerParams(
        id: state.ride!.id,
        passengerId: passengerId,
      ),
    );

    final doneOnBoarding = Set<int>.from(state.onBoardingPassengers)
      ..remove(passengerId);

    result.fold(
      (failure) => emit(
        state.copyWith(
          onBoardingPassengers: doneOnBoarding,
          errorMessage: failure.rawMessage ?? 'Failed to onboard passenger',
        ),
      ),
      (updatedPassenger) {
        final currentPassengers = List<SharedRidePassengerEntity>.from(
          state.ride!.passengers,
        );
        final index = currentPassengers.indexWhere(
          (p) =>
              p.id == passengerId ||
              (updatedPassenger.id != 0 && p.id == updatedPassenger.id),
        );
        final effectivePassenger = updatedPassenger.copyWith(
          id: updatedPassenger.id != 0 ? updatedPassenger.id : passengerId,
          status: updatedPassenger.status.isNotEmpty
              ? updatedPassenger.status
              : 'onboard',
        );
        if (index != -1) {
          currentPassengers[index] = effectivePassenger;
        } else {
          currentPassengers.add(effectivePassenger);
        }
        emit(
          state.copyWith(
            onBoardingPassengers: doneOnBoarding,
            ride: state.ride!.copyWith(passengers: currentPassengers),
          ),
        );
      },
    );
  }

  // 8. Drop Off Passenger
  Future<void> dropOffPassenger({
    required int passengerId,
    required int seatsToDrop,
    required double currentLat,
    required double currentLng,
  }) async {
    if (state.ride == null) return;
    final updatedDroppingOff = Set<int>.from(state.droppingOffPassengers)
      ..add(passengerId);
    emit(
      state.copyWith(
        droppingOffPassengers: updatedDroppingOff,
        clearErrorMessage: true,
      ),
    );

    final result = await dropOffSharedRidePassengerUseCase(
      DropOffSharedRidePassengerParams(
        id: state.ride!.id,
        passengerId: passengerId,
        seatsToDrop: seatsToDrop,
        currentLat: currentLat,
        currentLng: currentLng,
      ),
    );

    final doneDroppingOff = Set<int>.from(state.droppingOffPassengers)
      ..remove(passengerId);

    result.fold(
      (failure) => emit(
        state.copyWith(
          droppingOffPassengers: doneDroppingOff,
          errorMessage: failure.rawMessage ?? 'Failed to drop off passenger',
        ),
      ),
      (updatedPassenger) {
        final currentPassengers = List<SharedRidePassengerEntity>.from(
          state.ride!.passengers,
        );
        final index = currentPassengers.indexWhere(
          (p) =>
              p.id == passengerId ||
              (updatedPassenger.id != 0 && p.id == updatedPassenger.id),
        );
        final effectivePassenger = updatedPassenger.copyWith(
          id: updatedPassenger.id != 0 ? updatedPassenger.id : passengerId,
          status: updatedPassenger.status.isNotEmpty
              ? updatedPassenger.status
              : 'dropped_off',
        );
        if (index != -1) {
          currentPassengers[index] = effectivePassenger;
        }
        emit(
          state.copyWith(
            droppingOffPassengers: doneDroppingOff,
            ride: state.ride!.copyWith(passengers: currentPassengers),
          ),
        );
      },
    );
  }

  // 9. Remove Passenger
  Future<void> removePassenger(int passengerId, {String? reason}) async {
    if (state.ride == null) return;
    final updatedRemoving = Set<int>.from(state.removingPassengers)
      ..add(passengerId);
    emit(
      state.copyWith(
        removingPassengers: updatedRemoving,
        clearErrorMessage: true,
      ),
    );

    final result = await removeSharedRidePassengerUseCase(
      RemoveSharedRidePassengerParams(
        id: state.ride!.id,
        passengerId: passengerId,
        reason: reason,
      ),
    );

    final doneRemoving = Set<int>.from(state.removingPassengers)
      ..remove(passengerId);

    result.fold(
      (failure) => emit(
        state.copyWith(
          removingPassengers: doneRemoving,
          errorMessage: failure.rawMessage ?? 'Failed to remove passenger',
        ),
      ),
      (updatedRide) => emit(
        state.copyWith(removingPassengers: doneRemoving, ride: updatedRide),
      ),
    );
  }

  // Socket Events
  void onPassengerJoined(SharedRidePassengerEntity passenger) {
    if (state.ride == null) return;
    final currentPassengers = List<SharedRidePassengerEntity>.from(
      state.ride!.passengers,
    );
    final index = currentPassengers.indexWhere(
      (p) =>
          p.id == passenger.id ||
          (passenger.id != 0 && p.id == passenger.id) ||
          (passenger.riderProfileId != 0 &&
              p.riderProfileId == passenger.riderProfileId),
    );
    if (index != -1) {
      currentPassengers[index] = passenger;
    } else {
      currentPassengers.add(passenger);
    }
    final totalSeats = currentPassengers.fold<int>(
      0,
      (sum, p) => sum + (p.seatsNeeded > 0 ? p.seatsNeeded : 1),
    );
    emit(
      state.copyWith(
        ride: state.ride!.copyWith(
          passengers: currentPassengers,
          occupiedSeats: totalSeats,
        ),
      ),
    );
  }

  void onPassengerLeft(int passengerId) {
    if (state.ride == null) return;
    final currentPassengers =
        List<SharedRidePassengerEntity>.from(state.ride!.passengers)
          ..removeWhere(
            (p) => p.id == passengerId || p.riderProfileId == passengerId,
          );
    final totalSeats = currentPassengers.fold<int>(
      0,
      (sum, p) => sum + (p.seatsNeeded > 0 ? p.seatsNeeded : 1),
    );
    emit(
      state.copyWith(
        ride: state.ride!.copyWith(
          passengers: currentPassengers,
          occupiedSeats: totalSeats,
        ),
      ),
    );
  }

  // Reset
  void reset() {
    emit(const SharedRideState());
  }
}
