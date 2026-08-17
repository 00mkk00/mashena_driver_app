import 'package:dio/dio.dart';

/// Service for reverse geocoding (converting lat/lng coordinates to a human-readable address name).
class LocationGeocodingService {
  final Dio _dio;

  LocationGeocodingService({Dio? dio})
      : _dio = dio ??
            Dio(
              BaseOptions(
                headers: {
                  'User-Agent': 'MashenaDriverApp/1.0 (Mobile App)',
                  'Accept-Language': 'en,ar',
                },
                connectTimeout: const Duration(seconds: 5),
                receiveTimeout: const Duration(seconds: 5),
              ),
            );

  /// Converts latitude and longitude to a human-readable address string.
  /// Returns null if lookup fails.
  Future<String?> getAddressFromCoordinates(double lat, double lng) async {
    try {
      final response = await _dio.get(
        'https://nominatim.openstreetmap.org/reverse',
        queryParameters: {
          'format': 'json',
          'lat': lat,
          'lon': lng,
          'zoom': 18,
          'addressdetails': 1,
        },
      );

      if (response.statusCode == 200 && response.data is Map<String, dynamic>) {
        final data = response.data as Map<String, dynamic>;
        final address = data['address'] as Map<String, dynamic>?;

        if (address != null) {
          final parts = <String>[];

          // 1. Road, street, or landmark
          final road = address['road'] ??
              address['pedestrian'] ??
              address['suburb'] ??
              address['neighbourhood'] ??
              address['amenity'] ??
              address['building'];
          if (road != null && road.toString().trim().isNotEmpty) {
            parts.add(road.toString().trim());
          }

          // 2. Suburb or City district
          final suburb = address['suburb'] ??
              address['neighbourhood'] ??
              address['quarter'] ??
              address['city_district'];
          if (suburb != null &&
              suburb.toString().trim().isNotEmpty &&
              !parts.contains(suburb.toString().trim())) {
            parts.add(suburb.toString().trim());
          }

          // 3. City or Town
          final city = address['city'] ??
              address['town'] ??
              address['village'] ??
              address['county'] ??
              address['state'];
          if (city != null &&
              city.toString().trim().isNotEmpty &&
              !parts.contains(city.toString().trim())) {
            parts.add(city.toString().trim());
          }

          if (parts.isNotEmpty) {
            return parts.join(', ');
          }
        }

        final displayName = data['display_name'] as String?;
        if (displayName != null && displayName.trim().isNotEmpty) {
          final split = displayName.split(',');
          if (split.length >= 2) {
            return '${split[0].trim()}, ${split[1].trim()}';
          }
          return displayName.trim();
        }
      }
    } catch (_) {
      // Fallback on error (e.g. timeout or no internet connection)
    }
    return null;
  }
}
