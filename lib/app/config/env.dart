final class Env {
  const Env._();

  static const String baseUrl = 'http://localhost:3000/api';

  static const Duration connectTimeout = Duration(seconds: 15);
  static const Duration receiveTimeout = Duration(seconds: 20);

  static const bool enableNetworkLogs = true;
}
