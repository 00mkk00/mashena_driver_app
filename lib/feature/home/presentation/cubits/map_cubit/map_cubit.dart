import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:mashena_driver_app/feature/home/data/params/update_location_params.dart';
import 'package:mashena_driver_app/feature/home/domain/use_cases/update_location_use_case.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/socket_cubit/socket_cubit.dart';
import 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  final DriverStatusCubit _driverStatusCubit;
  final SocketCubit _socketCubit;
  

  final MapController _mapController = MapController();

  StreamSubscription<DriverStatusState>? _driverStatusSubscription;
  StreamSubscription<Position>? _locationSubscription;

  static const _locationSettings = LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 1, // Only emit when driver moves ≥10 meters
  );

  MapCubit({
    required DriverStatusCubit driverStatusCubit,
      required SocketCubit socketCubit,        // 👈 new

  }) :  _socketCubit = socketCubit,
       _driverStatusCubit = driverStatusCubit,
       super(const MapState()) {
    _listenToDriverStatus();
  }

  // ─── Init ──────────────────────────────────────────────────────────────────

  Future<void> initializeMap() async {
    emit(state.copyWith(status: MapLoadStatus.loading));

    final hasPermission = await _handlePermission();
    if (!hasPermission) {
      emit(state.copyWith(status: MapLoadStatus.permissionDenied));
      return;
    }

    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      emit(
        state.copyWith(
          status: MapLoadStatus.loaded,
          latitude: position.latitude,
          longitude: position.longitude,
          controller: _mapController,
          markers: [
            _buildDriverMarker(LatLng(position.latitude, position.longitude)),
          ],
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(status: MapLoadStatus.error, errorMessage: e.toString()),
      );
    }
  }

  // ─── Driver status listener ────────────────────────────────────────────────

  /// Starts/stops location streaming based on DriverStatusCubit's state.
  /// Called once in the constructor — no manual wiring needed from the UI.
  void _listenToDriverStatus() {
    // ✅ 1. Check the current state RIGHT NOW
    final currentStatus = _driverStatusCubit.state;
    if (currentStatus.isOnline && !currentStatus.isLoading) {
      _startLocationStream();
    }

    // ✅ 2. Then listen for future changes as before
    _driverStatusSubscription = _driverStatusCubit.stream.listen((statusState) {
      final shouldStream = statusState.isOnline && !statusState.isLoading;

      if (shouldStream) {
        _startLocationStream();
      } else if (!statusState.isOnline) {
        _stopLocationStream();
      }
    });
  }

  // ─── Location streaming ────────────────────────────────────────────────────

  void _startLocationStream() {
    if (_locationSubscription != null) return; // Already streaming

    _locationSubscription =
        Geolocator.getPositionStream(
          locationSettings: _locationSettings,
        ).listen(
          _onPositionUpdate,
          onError: (e) => emit(state.copyWith(locationSyncError: e.toString())),
        );
  }

  void _stopLocationStream() {
    _locationSubscription?.cancel();
    _locationSubscription = null;
  }

  void _onPositionUpdate(Position position) {
  final latLng = LatLng(position.latitude, position.longitude);

  emit(
    state.copyWith(
      latitude: position.latitude,
      longitude: position.longitude,
      markers: _rebuildMarkersWithDriver(latLng),
      clearLocationSyncError: true,
    ),
  );

  // ✅ Socket instead of HTTP
  _socketCubit.updateLocation(
    lat: position.latitude,
    lng: position.longitude,
  );
}

  

  // ─── Map controls ──────────────────────────────────────────────────────────

  void recenterOnDriver() {
    final position = state.currentPosition;
    if (position != null) {
      _mapController.move(position, 16);
    }
  }

  void toggleDarkMode() {
    emit(state.copyWith(isDarkMode: !state.isDarkMode));
  }

  void updateMarkers(List<Marker> markers) {
    emit(state.copyWith(markers: markers));
  }

  void updatePolylines(List<Polyline> polylines) {
    emit(state.copyWith(polylines: polylines));
  }

  // ─── Marker helpers ────────────────────────────────────────────────────────

  Marker _buildDriverMarker(LatLng point) {
    return Marker(
      point: point,
      width: 48,
      height: 48,
      child: const Icon(Icons.navigation_rounded, color: Colors.blue, size: 36),
    );
  }

  /// Replaces only the driver marker while preserving other pins (pickup/drop-off).
  List<Marker> _rebuildMarkersWithDriver(LatLng latLng) {
    final others = state.markers.where((m) => m.width != 48).toList();
    return [...others, _buildDriverMarker(latLng)];
  }

  // ─── Permission ────────────────────────────────────────────────────────────

  Future<bool> _handlePermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    return permission != LocationPermission.denied &&
        permission != LocationPermission.deniedForever;
  }

  // ─── Dispose ───────────────────────────────────────────────────────────────

  @override
  Future<void> close() {
    _driverStatusSubscription?.cancel();
    _locationSubscription?.cancel();
    _mapController.dispose();
    return super.close();
  }
}
