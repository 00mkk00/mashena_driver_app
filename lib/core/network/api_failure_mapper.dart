import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/core/network/api_exception.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';

Failure mapApiExceptionToFailure(ApiException e, ApiClient api) {
  switch (e.code) {
    case ApiErrorCode.connectionTimeout:
    case ApiErrorCode.sendTimeout:
    case ApiErrorCode.receiveTimeout:
      return const Failure(FailureCode.networkTimeout);

    case ApiErrorCode.connectionError:
      return const Failure(FailureCode.networkConnection);

    case ApiErrorCode.cancel:
      return const Failure(FailureCode.requestCancelled);

    case ApiErrorCode.badResponse:
      final sc = e.statusCode;
      final raw = api.extractServerMessage(e.data);

      if (sc == 401) {
        return Failure(
          FailureCode.unauthorized,
          statusCode: sc,
          rawMessage: raw,
        );
      }
      if (sc == 403) {
        return Failure(FailureCode.forbidden, statusCode: sc, rawMessage: raw);
      }
      if (sc == 404) {
        return Failure(FailureCode.notFound, statusCode: sc, rawMessage: raw);
      }
      if (sc == 422) {
        return Failure(FailureCode.validation, statusCode: sc, rawMessage: raw);
      }
      if (sc != null && sc >= 500) {
        return Failure(FailureCode.server, statusCode: sc, rawMessage: raw);
      }

      return Failure(
        FailureCode.unknown,
        statusCode: sc,
        args: [sc?.toString() ?? ''],
        rawMessage: raw,
      );

    case ApiErrorCode.badCertificate:
    case ApiErrorCode.unknown:
      return Failure(FailureCode.unknown, rawMessage: e.message);
  }
}
