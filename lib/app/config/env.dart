final class Env {
  const Env._();

  // بدّلها لاحقاً بـ --dart-define إذا بدك
  static const String baseUrl = '/api';

  static const Duration connectTimeout = Duration(seconds: 15);
  static const Duration receiveTimeout = Duration(seconds: 20);

  static const bool enableNetworkLogs = true;
}
