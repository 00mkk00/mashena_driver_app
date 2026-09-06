sealed class ApiFailure {
  const ApiFailure(this.key, {this.args, this.statusCode, this.rawMessage});

  /// Localization key e.g. "api.connection_timeout"
  final String key;

  /// Interpolation args for easy_localization: key.tr(args: args)
  final List<String>? args;

  /// HTTP status if any
  final int? statusCode;

  /// Raw debug message (not for UI)
  final String? rawMessage;
}

final class NetworkFailure extends ApiFailure {
  const NetworkFailure(
    super.key, {
    super.args,
    super.statusCode,
    super.rawMessage,
  });
}

final class ServerFailure extends ApiFailure {
  const ServerFailure(
    super.key, {
    super.args,
    super.statusCode,
    super.rawMessage,
  });
}

final class UnauthorizedFailure extends ApiFailure {
  const UnauthorizedFailure(
    super.key, {
    super.args,
    super.statusCode,
    super.rawMessage,
  });
}

final class UnknownFailure extends ApiFailure {
  const UnknownFailure(
    super.key, {
    super.args,
    super.statusCode,
    super.rawMessage,
  });
}
