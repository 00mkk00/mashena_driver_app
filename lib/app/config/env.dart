import 'package:flutter_dotenv/flutter_dotenv.dart';

final class Env {
  const Env._();

  static String get baseUrl => dotenv.env['BASE_URL'] ?? '';
  // static String get apiKey => dotenv.env['API_KEY'] ?? '';

  static const Duration connectTimeout = Duration(seconds: 100);
  static const Duration receiveTimeout = Duration(seconds: 100);

  static const bool enableNetworkLogs = true;
}
