import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/home/data/params/accept_passenger_pool_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/check_in_shared_ride_passenger_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/create_shared_ride_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/drop_off_shared_ride_passenger_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/get_available_passenger_pools_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/on_board_shared_ride_passenger_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/remove_shared_ride_passenger_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/shared_ride_cancel_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/shared_ride_complete_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/shared_ride_ready_params.dart';
import 'package:mashena_driver_app/feature/home/data/params/shared_ride_start_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/passenger_pool_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/shared_ride_entity.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/accept_passenger_pool_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/check_in_shared_ride_passenger_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/create_shared_ride_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/drop_off_shared_ride_passenger_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/get_available_passenger_pools_use_case.dart';
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
  final GetAvailablePassengerPoolsUseCase getAvailablePassengerPoolsUseCase;
  final AcceptPassengerPoolUseCase acceptPassengerPoolUseCase;

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
    required this.getAvailablePassengerPoolsUseCase,
    required this.acceptPassengerPoolUseCase,
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
  Future<SharedRidePassengerEntity?> dropOffPassenger({
    required int passengerId,
    required int seatsToDrop,
    required double currentLat,
    required double currentLng,
    bool? accountHolderDroppedOff,
  }) async {
    if (state.ride == null) return null;
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
        accountHolderDroppedOff: accountHolderDroppedOff,
      ),
    );

    final doneDroppingOff = Set<int>.from(state.droppingOffPassengers)
      ..remove(passengerId);

    return result.fold(
      (failure) {
        emit(
          state.copyWith(
            droppingOffPassengers: doneDroppingOff,
            errorMessage: failure.rawMessage ?? 'Failed to drop off passenger',
          ),
        );
        return null;
      },
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
        return effectivePassenger;
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

  // 10. Fetch Available Passenger Pools
  Future<void> fetchAvailablePools({
    required double lat,
    required double lng,
    double? radiusKm,
  }) async {
    emit(
      state.copyWith(
        status: SharedRideStatus.availablePools,
        isLoadingPools: true,
        clearPoolsErrorMessage: true,
      ),
    );

    final result = await getAvailablePassengerPoolsUseCase(
      GetAvailablePassengerPoolsParams(
        lat: lat,
        lng: lng,
        radiusKm: radiusKm,
      ),
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoadingPools: false,
          poolsErrorMessage:
              failure.rawMessage ?? 'Failed to load available passenger pools',
        ),
      ),
      (pools) => emit(
        state.copyWith(
          isLoadingPools: false,
          availablePools: pools,
          clearPoolsErrorMessage: true,
        ),
      ),
    );
  }

  // 11. Accept Passenger Pool (Join Pool & Navigate to Boarding)
  Future<void> acceptPassengerPool(int poolId) async {
    emit(
      state.copyWith(
        acceptingPoolId: poolId,
        clearErrorMessage: true,
      ),
    );

    final result = await acceptPassengerPoolUseCase(
      AcceptPassengerPoolParams(id: poolId),
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          clearAcceptingPoolId: true,
          errorMessage: failure.rawMessage ?? 'Failed to join pool',
        ),
      ),
      (response) {
        final room = response.room;
        if (room != null) {
          final ride = _mapPoolToSharedRide(room, response.sharedRideId);
          emit(
            state.copyWith(
              clearAcceptingPoolId: true,
              ride: ride,
              status: SharedRideStatus.boarding,
            ),
          );
        } else {
          final existingPool = state.availablePools.firstWhere(
            (p) => p.id == poolId,
            orElse: () => PassengerPoolEntity(
              id: poolId,
              creatorRiderProfileId: 0,
              status: 'boarding',
              driverProfileId: null,
              sharedRideId: response.sharedRideId,
              driverAcceptedAt: DateTime.now(),
              meetingLat: 0,
              meetingLng: 0,
              meetingAddress: '',
              meetingPlaceName: null,
              meetingPlaceProvider: null,
              destinationLat: 0,
              destinationLng: 0,
              destinationAddress: '',
              maxPassengers: 4,
              currentPassengers: 0,
              departureTime: null,
              expiresAt: null,
              createdAt: DateTime.now(),
              members: const [],
            ),
          );
          final ride = _mapPoolToSharedRide(
            existingPool,
            response.sharedRideId,
          );
          emit(
            state.copyWith(
              clearAcceptingPoolId: true,
              ride: ride,
              status: SharedRideStatus.boarding,
            ),
          );
        }
      },
    );
  }

  SharedRideEntity _mapPoolToSharedRide(
    PassengerPoolEntity room,
    int? sharedRideId,
  ) {
    final effectiveRideId = sharedRideId ?? room.sharedRideId ?? room.id;
    final passengers = room.members.map((m) {
      return SharedRidePassengerEntity(
        id: m.id,
        sharedRideId: effectiveRideId,
        riderProfileId: m.riderProfileId,
        riderName: 'Passenger #${m.riderProfileId}',
        status: m.status.isNotEmpty ? m.status : 'joined',
        paymentStatus: 'pending',
        seatsNeeded: m.seatsNeeded > 0 ? m.seatsNeeded : 1,
        activeSeats: m.seatsNeeded > 0 ? m.seatsNeeded : 1,
        totalPaidFare: 0,
        finalDistanceKm: 0,
        finalDurationSec: 0,
        finalFare: 0,
        joinedAt: m.joinedAt,
        checkedInAt: null,
        onBoardAt: null,
        droppedOffAt: null,
        canceledAt: null,
        removedAt: null,
        removeReason: '',
      );
    }).toList();

    final totalOccupied = passengers.fold<int>(
      0,
      (sum, p) => sum + (p.seatsNeeded > 0 ? p.seatsNeeded : 1),
    );

    return SharedRideEntity(
      id: effectiveRideId,
      driverProfileId: room.driverProfileId ?? 0,
      vehicleId: 0,
      status: room.status.isNotEmpty ? room.status : 'boarding',
      endedBy: '',
      notes: room.meetingPlaceName ?? '',
      originLat: room.meetingLat,
      originLng: room.meetingLng,
      originAddress: room.meetingAddress,
      destLat: room.destinationLat,
      destLng: room.destinationLng,
      destAddress: room.destinationAddress,
      departureTime: room.departureTime,
      maxPassengers: room.maxPassengers > 0 ? room.maxPassengers : 4,
      occupiedSeats:
          totalOccupied > 0 ? totalOccupied : room.currentPassengers,
      totalDistanceKm: 0,
      totalDurationSec: 0,
      routeGeometry: null,
      actualDistanceKm: 0,
      actualDurationSec: 0,
      actualRouteGeometry: null,
      baseTripFare: 0,
      remainingTripCost: 0,
      occupiedSeatsAtStart:
          totalOccupied > 0 ? totalOccupied : room.currentPassengers,
      fullRouteSeatFare: 0,
      minimumSeatFare: 0,
      startedAt: null,
      completedAt: null,
      canceledAt: null,
      cancellationReason: '',
      endType: '',
      createdAt: room.createdAt ?? DateTime.now(),
      passengers: passengers,
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

