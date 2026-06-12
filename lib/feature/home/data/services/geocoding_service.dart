// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';

// class GeocodingService {
//   final Dio _dio = Dio(
//     BaseOptions(
//       baseUrl: 'https://nominatim.openstreetmap.org',
//       connectTimeout: const Duration(seconds: 10),
//       receiveTimeout: const Duration(seconds: 10),
//       headers: {
//         'User-Agent': 'MashenaDriverApp/1.0', // required by Nominatim ToS
//         'Accept-Language': 'en',              // return addresses in English
//       },
//     ),
//   );

//   /// Returns a short human-readable address for the given coordinates.
//   /// Falls back to raw coordinates string if the request fails.
//   Future<String> reverseGeocode({
//     required double lat,
//     required double lng,
//   }) async {
//     try {
//       final response = await _dio.get<Map<String, dynamic>>(
//         '/reverse',
//         queryParameters: {
//           'lat': lat,
//           'lon': lng,
//           'format': 'json',
//           'zoom': 16,          // street level detail
//           'addressdetails': 1,
//         },
//       );

//       final data = response.data;
//       if (data == null) return _fallback(lat, lng);

//       // Try short display first, fall back to full display_name
//       final address = data['address'] as Map<String, dynamic>?;
//       if (address != null) {
//         return _buildShortAddress(address);
//       }

//       return data['display_name'] as String? ?? _fallback(lat, lng);
//     } catch (e) {
//       debugPrint('⚠️ [Geocoding] Failed: $e');
//       return _fallback(lat, lng);
//     }
//   }

//   /// Builds a short readable address from address components.
//   String _buildShortAddress(Map<String, dynamic> address) {
//     final parts = <String>[];

//     final road = address['road'] as String?;
//     final suburb = address['suburb'] as String?;
//     final city = address['city'] as String?
//         ?? address['town'] as String?
//         ?? address['village'] as String?;

//     if (road != null) parts.add(road);
//     if (suburb != null) parts.add(suburb);
//     if (city != null) parts.add(city);

//     return parts.isNotEmpty ? parts.join(', ') : '';
//   }

//   String _fallback(double lat, double lng) =>
//       '${lat.toStringAsFixed(5)}, ${lng.toStringAsFixed(5)}';
// }