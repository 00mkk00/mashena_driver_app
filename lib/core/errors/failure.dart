sealed class Failure {
  const Failure(this.key, {this.args});
  final String key; // مثل: api.connection_timeout
  final List<String>? args; // optional args for interpolation
}

final class NetworkFailure extends Failure {
  const NetworkFailure(super.key, {super.args});
}

final class ServerFailure extends Failure {
  const ServerFailure(super.key, {super.args, this.statusCode});
  final int? statusCode;
}

final class CacheFailure extends Failure {
  const CacheFailure(super.key, {super.args});
}

final class UnknownFailure extends Failure {
  const UnknownFailure(super.key, {super.args});
}

final class UnAuthorizedFailure extends Failure {
  const UnAuthorizedFailure(super.key, {super.args});
}
