import 'package:dio/dio.dart';
import 'package:latlong2/latlong.dart';

class RoutingService {
  final Dio _dio;

  RoutingService()
    : _dio = Dio(
        BaseOptions(
          baseUrl: 'http://router.project-osrm.org',
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        ),
      );

  /// Fetches a driving route between coordinates with optional stops.
  /// Returns a list of [LatLng] points or throws on failure.
  Future<List<LatLng>> fetchRoute({
    required double pickupLat,
    required double pickupLng,
    required double destinationLat,
    required double destinationLng,
    List<({double lat, double lng})>? stops,
  }) async {
    // Build coordinates string: pickup;stop1;stop2;...;destination
    final coordinates = StringBuffer('$pickupLng,$pickupLat');

    // Add stops if present
    if (stops != null && stops.isNotEmpty) {
      for (final stop in stops) {
        coordinates.write(';${stop.lng},${stop.lat}');
      }
    }

    // Add destination
    coordinates.write(';$destinationLng,$destinationLat');

    final path = '/route/v1/driving/$coordinates';

    final response = await _dio.get<Map<String, dynamic>>(
      path,
      queryParameters: {'overview': 'full', 'geometries': 'geojson'},
    );

    final routes = response.data?['routes'] as List?;
    if (routes == null || routes.isEmpty) {
      throw Exception('No routes found');
    }

    final coords = routes[0]['geometry']['coordinates'] as List;

    return coords
        .map((c) => LatLng((c[1] as num).toDouble(), (c[0] as num).toDouble()))
        .toList();
  }
}
