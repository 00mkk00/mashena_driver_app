import 'package:mashena_driver_app/app/config/env.dart';

class ImageUrlHelper {
  const ImageUrlHelper._();

  static String formatImageUrl(String? url) {
    if (url == null || url.trim().isEmpty) return '';

    String cleaned = url.trim();

    // Determine base server origin (e.g. http://192.168.1.108:3000)
    String origin = Env.socketUrl.trim();
    if (origin.endsWith('/')) {
      origin = origin.substring(0, origin.length - 1);
    }
    if (origin.isEmpty && Env.baseUrl.isNotEmpty) {
      final uri = Uri.tryParse(Env.baseUrl);
      if (uri != null) {
        origin = '${uri.scheme}://${uri.host}${uri.hasPort ? ':${uri.port}' : ''}';
      }
    }

    if (origin.isNotEmpty) {
      // Replace localhost / 127.0.0.1 with environment server origin
      cleaned = cleaned.replaceAll('http://localhost:3000', origin);
      cleaned = cleaned.replaceAll('https://localhost:3000', origin);
      cleaned = cleaned.replaceAll('http://127.0.0.1:3000', origin);
      cleaned = cleaned.replaceAll('https://127.0.0.1:3000', origin);
      cleaned = cleaned.replaceAll('http://localhost', origin);
      cleaned = cleaned.replaceAll('https://localhost', origin);

      // If relative URL starting with /
      if (cleaned.startsWith('/')) {
        cleaned = '$origin$cleaned';
      }
    }

    return cleaned;
  }
}
