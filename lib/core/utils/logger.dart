import 'package:flutter/foundation.dart';

final class AppLogger {
  const AppLogger._();

  static void d(Object message) {
    if (kDebugMode) debugPrint('[D] $message');
  }

  static void e(Object message) {
    if (kDebugMode) debugPrint('[E] $message');
  }
}
