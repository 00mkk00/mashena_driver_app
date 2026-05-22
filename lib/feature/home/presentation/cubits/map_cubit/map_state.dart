import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'map_state.freezed.dart';

enum MapLoadStatus { initial, loading, loaded, error, permissionDenied }

@freezed
class MapState with _$MapState {
  const factory MapState({
    @Default(MapLoadStatus.initial) MapLoadStatus status,
    double? latitude,
    double? longitude,
    double? heading, // degrees 0–360
    MapController? controller,
    @Default([]) List<Marker> markers,
    @Default([]) List<Polyline> polylines,
    @Default(false) bool isDarkMode,
    String? errorMessage,
  }) = _MapState;

  /// Convenience getter — available because of the `const MapState()` trick.
  const MapState._();

  /// Returns a [LatLng] only when both coordinates are present.
  LatLng? get currentPosition => (latitude != null && longitude != null)
      ? LatLng(latitude!, longitude!)
      : null;

  bool get isLoaded => status == MapLoadStatus.loaded;
}
