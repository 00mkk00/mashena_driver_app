import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/services/location_geocoding_service.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/feature/home/data/services/routing_service.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/socket_cubit/socket_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/animated_pulse.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/premium_map_pin.dart';
import 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  final DriverStatusCubit _driverStatusCubit;
  final SocketCubit _socketCubit;
  final RoutingService _routingService;

  final MapController _mapController = MapController();

  StreamSubscription<DriverStatusState>? _driverStatusSubscription;
  StreamSubscription<Position>? _locationSubscription;

  static const _locationSettings = LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 1, // Only emit when driver moves ≥10 meters
  );

  double _currentHeading = 0.0; // Track device rotation/heading

  MapCubit({
    required DriverStatusCubit driverStatusCubit,
    required SocketCubit socketCubit,
    required RoutingService routingService, // 👈 new
  }) : _socketCubit = socketCubit,
       _driverStatusCubit = driverStatusCubit,
       _routingService = routingService,
       super(const MapState()) {
    _listenToDriverStatus();
  }
  Future<void> drawRoute({
    required double pickupLat,
    required double pickupLng,
    required double destinationLat,
    required double destinationLng,
    List<({double lat, double lng, int order})>? stops,
    List<LatLng>? predefinedPoints,
  }) async {
    try {
      final List<LatLng> points;
      if (predefinedPoints != null && predefinedPoints.isNotEmpty) {
        points = predefinedPoints;
      } else {
        points = await _routingService.fetchRoute(
          pickupLat: pickupLat,
          pickupLng: pickupLng,
          destinationLat: destinationLat,
          destinationLng: destinationLng,
          stops: stops?.map((s) => (lat: s.lat, lng: s.lng)).toList(),
        );
      }

      final driverMarker = state.markers
          .where((m) => m.width == 48)
          .firstOrNull;

      final markers = <Marker>[
        if (driverMarker != null) driverMarker,
        _buildPickupMarker(LatLng(pickupLat, pickupLng)),
        _buildDestinationMarker(LatLng(destinationLat, destinationLng)),
      ];

      // Add stop markers
      if (stops != null && stops.isNotEmpty) {
        for (final stop in stops) {
          markers.add(_buildStopMarker(LatLng(stop.lat, stop.lng), stop.order));
        }
      }

      emit(
        state.copyWith(
          polylines: [_buildRoutePolyline(points)],
          markers: markers,
        ),
      );

      _fitRoute(points);
    } on DioException catch (e) {
      emit(
        state.copyWith(locationSyncError: 'Route fetch failed: ${e.message}'),
      );
    } catch (e) {
      emit(state.copyWith(locationSyncError: e.toString()));
    }
  }

  // ─── Clear route ──────────────────────────────────────────────────────────────

  void clearRoute() {
    final position = state.currentPosition;
    emit(
      state.copyWith(
        polylines: [],
        markers: position != null ? [_buildDriverMarker(position)] : [],
        clearLocationSyncError: true,
      ),
    );
  }

  // ─── Private helpers ──────────────────────────────────────────────────────────

  Polyline _buildRoutePolyline(List<LatLng> points) {
    return Polyline(
      points: points,
      color: AppColors.primaryColor,
      strokeWidth: 4.0,
      borderColor: AppColors.primaryColor.withValues(alpha: 0.2),
      borderStrokeWidth: 8.0,
    );
  }

  bool _isValidLatLng(LatLng point) {
    return !point.latitude.isNaN &&
        !point.longitude.isNaN &&
        !point.latitude.isInfinite &&
        !point.longitude.isInfinite &&
        (point.latitude != 0.0 || point.longitude != 0.0);
  }

  void _fitRoute(List<LatLng> points) {
    final valid = points.where(_isValidLatLng).toList();
    if (valid.length < 2 || !state.isLoaded) return;
    try {
      final bounds = LatLngBounds.fromPoints(valid);
      if (bounds.southWest != bounds.northEast) {
        final paddingVal = (60.r.isNaN || 60.r.isInfinite || 60.r <= 0)
            ? 60.0
            : 60.r;
        _mapController.fitCamera(
          CameraFit.bounds(bounds: bounds, padding: EdgeInsets.all(paddingVal)),
        );
      }
    } catch (_) {}
  }

  Marker _buildPickupMarker(LatLng point) => Marker(
    point: point,
    width: (70.r.isNaN || 70.r.isInfinite || 70.r <= 0) ? 70.0 : 70.r,
    height: (70.r.isNaN || 70.r.isInfinite || 70.r <= 0) ? 70.0 : 70.r,
    child: AnimatedPulse(
      pulseColor: AppColors.online.withValues(alpha: .3),
      child: PremiumMapPin(
        gradientColors: [
          AppColors.online.withValues(alpha: .8),
          AppColors.online,
        ],
        iconData: Icons.person_rounded,
      ),
    ),
  );

  Marker _buildDestinationMarker(LatLng point) => Marker(
    point: point,
    width: (45.r.isNaN || 45.r.isInfinite || 45.r <= 0) ? 45.0 : 45.r,
    height: (45.r.isNaN || 45.r.isInfinite || 45.r <= 0) ? 45.0 : 45.r,
    child: PremiumMapPin(
      gradientColors: [
        AppColors.danger.withValues(alpha: .8),
        AppColors.danger,
      ],
      iconData: Icons.flag_rounded,
    ),
  );

  Marker _buildStopMarker(LatLng point, int order) => Marker(
    point: point,
    width: (45.r.isNaN || 45.r.isInfinite || 45.r <= 0) ? 45.0 : 45.r,
    height: (45.r.isNaN || 45.r.isInfinite || 45.r <= 0) ? 45.0 : 45.r,
    child: PremiumMapPin(
      gradientColors: [
        AppColors.warning.withValues(alpha: .8),
        AppColors.warning,
      ],
      text: '$order',
    ),
  );
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
      _updateRadiusCircle(currentStatus.radiusKm);
    }

    // ✅ 2. Then listen for future changes as before
    _driverStatusSubscription = _driverStatusCubit.stream.listen((statusState) {
      final shouldStream = statusState.isOnline && !statusState.isLoading;

      if (shouldStream) {
        _startLocationStream();
        _updateRadiusCircle(statusState.radiusKm);
      } else if (!statusState.isOnline) {
        _stopLocationStream();
        _clearRadiusCircle();
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

  // ─── Radius circle management ──────────────────────────────────────────────

  void _updateRadiusCircle(int radiusKm) {
    final position = state.currentPosition;
    if (position == null) return;

    final circle = CircleMarker(
      point: position,
      radius: radiusKm * 1000, // Convert km to meters
      useRadiusInMeter: true,
      color: AppColors.primaryColor.withValues(alpha: 0.1),
      borderColor: AppColors.primaryColor.withValues(alpha: 0.3),
      borderStrokeWidth: 2,
    );

    emit(state.copyWith(circles: [circle]));
  }

  void _clearRadiusCircle() {
    emit(state.copyWith(circles: []));
  }

  void _onPositionUpdate(Position position) {
    final latLng = LatLng(position.latitude, position.longitude);

    // Update heading if available
    if (position.heading >= 0) {
      _currentHeading = position.heading;
    }

    emit(
      state.copyWith(
        latitude: position.latitude,
        longitude: position.longitude,
        markers: _rebuildMarkersWithDriver(latLng),
        clearLocationSyncError: true,
      ),
    );

    // Update radius circle to follow driver position
    final radiusKm = _driverStatusCubit.state.radiusKm;
    if (_driverStatusCubit.state.isOnline && radiusKm > 0) {
      _updateRadiusCircle(radiusKm);
    }

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

  // ─── Location Picker Controls ──────────────────────────────────────────────

  void startLocationPicking(MapPickerTarget target, {LatLng? initialLocation}) {
    final startPos = initialLocation ?? state.currentPosition;
    if (startPos != null && state.status == MapLoadStatus.loaded) {
      _mapController.move(startPos, 16);
    }
    emit(
      state.copyWith(
        isPickingLocation: true,
        pickerTarget: target,
        pickedCenterLocation: startPos,
      ),
    );
  }

  void updatePickedCenterLocation(LatLng center) {
    if (state.isPickingLocation) {
      emit(state.copyWith(pickedCenterLocation: center));
    }
  }

  Future<void> confirmLocationSelection({String? address}) async {
    final center = state.pickedCenterLocation ?? state.currentPosition;
    if (center == null || state.pickerTarget == null) return;

    String formattedAddress = address?.trim() ?? '';
    if (formattedAddress.isEmpty ||
        formattedAddress.startsWith('Picked Location')) {
      final geocodedName = await getIt<LocationGeocodingService>()
          .getAddressFromCoordinates(center.latitude, center.longitude);
      formattedAddress = geocodedName ?? 'Picked Location';
    }

    final selection = MapLocationSelection(
      lat: center.latitude,
      lng: center.longitude,
      address: formattedAddress,
    );

    if (state.pickerTarget == MapPickerTarget.origin) {
      emit(
        state.copyWith(
          isPickingLocation: false,
          clearPickerTarget: true,
          clearPickedCenterLocation: true,
          draftOrigin: selection,
        ),
      );
    } else {
      emit(
        state.copyWith(
          isPickingLocation: false,
          clearPickerTarget: true,
          clearPickedCenterLocation: true,
          draftDestination: selection,
        ),
      );
    }
  }

  void cancelLocationPicking() {
    emit(
      state.copyWith(
        isPickingLocation: false,
        clearPickerTarget: true,
        clearPickedCenterLocation: true,
      ),
    );
  }

  void setDraftOrigin(MapLocationSelection selection) {
    emit(state.copyWith(draftOrigin: selection));
  }

  void setDraftDestination(MapLocationSelection selection) {
    emit(state.copyWith(draftDestination: selection));
  }

  // ─── Marker helpers ────────────────────────────────────────────────────────

  Marker _buildDriverMarker(LatLng point) {
    return Marker(
      point: point,
      width: 48,
      height: 48,
      child: Transform.rotate(
        angle: _currentHeading * (3.14159 / 180), // Convert degrees to radians
        child: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.3),
                blurRadius: 6,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: const Icon(
            Icons.navigation_rounded,
            color: Colors.white,
            size: 32,
          ),
        ),
      ),
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
