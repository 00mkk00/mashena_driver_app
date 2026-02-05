sealed class AppException implements Exception {
  const AppException(this.message, {this.cause});

  final String message;
  final Object? cause;

  @override
  String toString() => '$runtimeType(message: $message, cause: $cause)';
}

final class NetworkException extends AppException {
  const NetworkException(super.message, {super.cause});
}

final class ServerException extends AppException {
  const ServerException(super.message, {super.cause, this.statusCode});
  final int? statusCode;
}

final class CacheException extends AppException {
  const CacheException(super.message, {super.cause});
}

final class UnauthorizedException extends AppException {
  const UnauthorizedException(super.message, {super.cause});
}
