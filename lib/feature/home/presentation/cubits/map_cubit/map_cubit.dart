import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

import 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  MapCubit() : super(const MapState());

  // Keep a single controller instance across state updates.
  final MapController _mapController = MapController();

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

      final latLng = LatLng(position.latitude, position.longitude);

      // Build a driver marker at the current position.
      final driverMarker = Marker(
        point: latLng,
        width: 48,
        height: 48,
        child: const Icon(
          Icons.navigation_rounded,
          color: Colors.blue,
          size: 36,
        ),
      );

      emit(
        state.copyWith(
          status: MapLoadStatus.loaded,
          latitude: position.latitude,
          longitude: position.longitude,
          controller: _mapController,
          markers: [driverMarker],
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(status: MapLoadStatus.error, errorMessage: e.toString()),
      );
    }
  }

  void recenterOnDriver() {
    final position = state.currentPosition;
    if (position != null) {
      _mapController.move(position, 16); // ✅ only when map is already built
    }
  }

  void toggleDarkMode() {
    emit(state.copyWith(isDarkMode: !state.isDarkMode));
  }

  /// Call to add/replace markers (e.g. pickup / drop-off pins).
  void updateMarkers(List<Marker> markers) {
    emit(state.copyWith(markers: markers));
  }

  /// Call to draw / clear route polylines.
  void updatePolylines(List<Polyline> polylines) {
    emit(state.copyWith(polylines: polylines));
  }

  Future<bool> _handlePermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    return permission != LocationPermission.denied &&
        permission != LocationPermission.deniedForever;
  }

  @override
  Future<void> close() {
    _mapController.dispose();
    return super.close();
  }
}
