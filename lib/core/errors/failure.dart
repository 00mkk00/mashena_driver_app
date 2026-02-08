enum FailureCode {
  networkTimeout,
  networkConnection,
  requestCancelled,
  unauthorized,
  forbidden,
  notFound,
  validation,
  server,
  cache,
  unknown,
}

final class Failure {
  const Failure(
    this.code, {
    this.statusCode,
    this.args = const [],
    this.rawMessage,
  });

  final FailureCode code;
  final int? statusCode;
  final List<String> args;
  final String? rawMessage;
}
