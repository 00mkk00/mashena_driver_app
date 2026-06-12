import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

enum MapLoadStatus { initial, loading, loaded, error, permissionDenied }

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
  );
}
