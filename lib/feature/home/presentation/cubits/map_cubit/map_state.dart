import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

enum MapLoadStatus { initial, loading, loaded, error, permissionDenied }

enum MapPickerTarget { origin, destination }

class MapLocationSelection {
  final double lat;
  final double lng;
  final String address;

  const MapLocationSelection({
    required this.lat,
    required this.lng,
    required this.address,
  });
}

class MapState {
  final MapLoadStatus status;
  final double? latitude;
  final double? longitude;
  final double? heading;
  final MapController? controller;
  final List<Marker> markers;
  final List<Polyline> polylines;
  final List<CircleMarker> circles;
  final bool isDarkMode;
  final String? errorMessage;
  final String? locationSyncError;

  // ── Location Picking on Home Map ──
  final bool isPickingLocation;
  final MapPickerTarget? pickerTarget;
  final LatLng? pickedCenterLocation;
  final MapLocationSelection? draftOrigin;
  final MapLocationSelection? draftDestination;

  const MapState({
    this.status = MapLoadStatus.initial,
    this.latitude,
    this.longitude,
    this.heading,
    this.controller,
    this.markers = const [],
    this.polylines = const [],
    this.circles = const [],
    this.isDarkMode = false,
    this.errorMessage,
    this.locationSyncError,
    this.isPickingLocation = false,
    this.pickerTarget,
    this.pickedCenterLocation,
    this.draftOrigin,
    this.draftDestination,
  });

  LatLng? get currentPosition => (latitude != null && longitude != null)
      ? LatLng(latitude!, longitude!)
      : null;

  bool get isLoaded => status == MapLoadStatus.loaded;
  bool get hasSyncError => locationSyncError != null;

  MapState copyWith({
    MapLoadStatus? status,
    double? latitude,
    double? longitude,
    double? heading,
    MapController? controller,
    List<Marker>? markers,
    List<Polyline>? polylines,
    List<CircleMarker>? circles,
    bool? isDarkMode,
    String? errorMessage,
    bool clearErrorMessage = false,
    String? locationSyncError,
    bool clearLocationSyncError = false,
    bool? isPickingLocation,
    MapPickerTarget? pickerTarget,
    bool clearPickerTarget = false,
    LatLng? pickedCenterLocation,
    bool clearPickedCenterLocation = false,
    MapLocationSelection? draftOrigin,
    bool clearDraftOrigin = false,
    MapLocationSelection? draftDestination,
    bool clearDraftDestination = false,
  }) => MapState(
    status: status ?? this.status,
    latitude: latitude ?? this.latitude,
    longitude: longitude ?? this.longitude,
    heading: heading ?? this.heading,
    controller: controller ?? this.controller,
    markers: markers ?? this.markers,
    polylines: polylines ?? this.polylines,
    circles: circles ?? this.circles,
    isDarkMode: isDarkMode ?? this.isDarkMode,
    errorMessage: clearErrorMessage ? null : errorMessage ?? this.errorMessage,
    locationSyncError: clearLocationSyncError
        ? null
        : locationSyncError ?? this.locationSyncError,
    isPickingLocation: isPickingLocation ?? this.isPickingLocation,
    pickerTarget: clearPickerTarget ? null : (pickerTarget ?? this.pickerTarget),
    pickedCenterLocation: clearPickedCenterLocation
        ? null
        : (pickedCenterLocation ?? this.pickedCenterLocation),
    draftOrigin: clearDraftOrigin ? null : (draftOrigin ?? this.draftOrigin),
    draftDestination: clearDraftDestination
        ? null
        : (draftDestination ?? this.draftDestination),
  );
}
