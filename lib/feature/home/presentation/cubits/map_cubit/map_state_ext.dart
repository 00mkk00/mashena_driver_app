// import 'package:flutter_map/flutter_map.dart';
// import 'map_state.dart';

// extension MapStateX on MapState {
//   MapState copyWith({
//     MapLoadStatus? status,
//     double? latitude,
//     double? longitude,
//     double? heading,
//     List<Marker>? markers,
//     List<Polyline>? polylines,
//     bool? isDarkMode,
//     String? errorMessage,
//     String? locationSyncError,
//     bool clearLocationSyncError = false, // ← same pattern as your DriverStatusState
//   }) {
//     return MapState(
//       status: status ?? this.status,
//       latitude: latitude ?? this.latitude,
//       longitude: longitude ?? this.longitude,
//       heading: heading ?? this.heading,
//       controller: this.controller,
//       markers: markers ?? this.markers,
//       polylines: polylines ?? this.polylines,
//       isDarkMode: isDarkMode ?? this.isDarkMode,
//       errorMessage: errorMessage ?? this.errorMessage,
//       locationSyncError:
//           clearLocationSyncError ? null : locationSyncError ?? this.locationSyncError,
//     );
//   }
// }
