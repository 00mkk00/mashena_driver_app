enum ApiErrorCode {
  connectionTimeout,
  sendTimeout,
  receiveTimeout,
  connectionError,
  cancel,
  badResponse,
  badCertificate,
  unknown,
}

final class ApiException implements Exception {
  const ApiException(this.code, {this.statusCode, this.data, this.message});

  final ApiErrorCode code;
  final int? statusCode;
  final dynamic data;
  final String? message;

  @override
  String toString() =>
      'ApiException(code: $code, statusCode: $statusCode, message: $message)';
}
