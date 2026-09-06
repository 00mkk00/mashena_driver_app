import 'dart:async';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/constants/endpoints.dart';
import 'package:mashena_driver_app/core/network/token_manager.dart';
import 'package:mashena_driver_app/core/storage/local_storage.dart';
import 'package:mashena_driver_app/feature/home/data/services/socket_service.dart';

import 'api_exception.dart';

final class ApiClient {
  ApiClient({
    required TokenManager tokenManager,
    Dio? dio,
    required String baseUrl,
  }) : _tokenManager = tokenManager,
       _dio = dio ?? Dio() {
    _setup(baseUrl);
  }

  final Dio _dio;
  final TokenManager _tokenManager;
  bool _isRefreshing = false;
  final List<Completer<String>> _refreshQueue = [];

  void _setup(String baseUrl) {
    _dio.options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      headers: const {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final path = options.path;
          final isNoAuthPath =
              path.contains(Endpoints.login) ||
              path.contains(Endpoints.signup) ||
              path.contains(Endpoints.sendOtp) ||
              path.contains(Endpoints.verifyOtp) ||
              path.contains(Endpoints.uploadDocs);

          final isExplicitNoAuth =
              options.extra['requiresToken'] == false ||
              options.headers['noAuth'] == true;

          if (!isNoAuthPath && !isExplicitNoAuth) {
            final token = await _tokenManager.getAccessToken();
            if (token != null && token.isNotEmpty) {
              options.headers['Authorization'] = 'Bearer $token';
            }
          }
          options.headers.remove('noAuth');

          if (!options.headers.containsKey('Accept-Language')) {
            final savedLocale = getIt<LocalStorage>().getString('app_locale');
            options.headers['Accept-Language'] =
                (savedLocale != null && savedLocale.isNotEmpty)
                ? savedLocale
                : PlatformDispatcher.instance.locale.languageCode;
          }

          handler.next(options);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == 401) {
            final requestOptions = error.requestOptions;

            final refreshToken = await _tokenManager.getRefreshToken();
            if (refreshToken == null || refreshToken.isEmpty) {
              await _tokenManager.clearTokens();
              return handler.next(error);
            }

            if (_isRefreshing) {
              final completer = Completer<String>();
              _refreshQueue.add(completer);
              try {
                final newToken = await completer.future;
                requestOptions.headers['Authorization'] = 'Bearer $newToken';
                final response = await _dio.fetch(requestOptions);
                return handler.resolve(response);
              } catch (e) {
                return handler.next(error);
              }
            }

            _isRefreshing = true;

            try {
              // Create a clean Dio instance to avoid interceptor recursion
              final refreshDio = Dio(
                BaseOptions(baseUrl: _dio.options.baseUrl),
              );

              final response = await refreshDio.post(
                Endpoints.refresh,
                data: {'refreshToken': refreshToken},
              );
              final data = response.data;
              final newAccessToken = data['accessToken'] as String;
              final newRefreshToken = data['refreshToken'] as String?;

              await _tokenManager.saveTokens(
                accessToken: newAccessToken,
                refreshToken: newRefreshToken,
              );

              try {
                getIt<SocketService>().reconnect(accessToken: newAccessToken);
              } catch (_) {}

              // Complete all pending requests in the queue
              for (final completer in _refreshQueue) {
                completer.complete(newAccessToken);
              }
              _refreshQueue.clear();

              // Retry the original request
              requestOptions.headers['Authorization'] =
                  'Bearer $newAccessToken';
              final retryResponse = await _dio.fetch(requestOptions);
              return handler.resolve(retryResponse);
            } catch (refreshError) {
              await _tokenManager.clearTokens();
              for (final completer in _refreshQueue) {
                completer.completeError(refreshError);
              }
              _refreshQueue.clear();
              return handler.next(error);
            } finally {
              _isRefreshing = false;
            }
          }
          handler.next(error);
        },
      ),
    );

    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
          logPrint: (obj) => log(obj.toString()),
        ),
      );
    }
  }

  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? query,
    Options? options,
  }) async {
    try {
      final res = await _dio.get(
        path,
        queryParameters: query,
        options: options,
      );
      return _handle(res);
    } on DioException catch (e) {
      throw _map(e);
    }
  }

  Future<dynamic> post(
    String path, {
    dynamic body,
    Map<String, dynamic>? query,
    Options? options,
  }) async {
    try {
      final res = await _dio.post(
        path,
        data: body,
        queryParameters: query,
        options: options,
      );
      return _handle(res);
    } on DioException catch (e) {
      throw _map(e);
    }
  }

  Future<dynamic> put(
    String path, {
    dynamic body,
    Map<String, dynamic>? query,
    Options? options,
  }) async {
    try {
      final res = await _dio.put(
        path,
        data: body,
        queryParameters: query,
        options: options,
      );
      return _handle(res);
    } on DioException catch (e) {
      throw _map(e);
    }
  }

  Future<dynamic> patch(
    String path, {
    dynamic body,
    Map<String, dynamic>? query,
    Options? options,
  }) async {
    try {
      final res = await _dio.patch(
        path,
        data: body,
        queryParameters: query,
        options: options,
      );
      return _handle(res);
    } on DioException catch (e) {
      throw _map(e);
    }
  }

  Future<dynamic> delete(
    String path, {
    dynamic body,
    Map<String, dynamic>? query,
    Options? options,
  }) async {
    try {
      final res = await _dio.delete(
        path,
        data: body,
        queryParameters: query,
        options: options,
      );
      return _handle(res);
    } on DioException catch (e) {
      throw _map(e);
    }
  }

  Future<dynamic> postFormData(
    String path, {
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
  }) async {
    try {
      final form = FormData.fromMap(data);
      final res = await _dio.post(
        path,
        data: form,
        queryParameters: query,
        options: Options(
          headers: const {'Content-Type': 'multipart/form-data'},
        ),
      );
      return _handle(res);
    } on DioException catch (e) {
      throw _map(e);
    }
  }

  dynamic _handle(Response response) {
    final code = response.statusCode ?? 0;
    if (code >= 200 && code < 300) return response.data;

    throw ApiException(
      ApiErrorCode.badResponse,
      statusCode: code,
      data: response.data,
      message: 'Non-2xx response',
    );
  }

  ApiException _map(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return const ApiException(ApiErrorCode.connectionTimeout);
      case DioExceptionType.sendTimeout:
        return const ApiException(ApiErrorCode.sendTimeout);
      case DioExceptionType.receiveTimeout:
        return const ApiException(ApiErrorCode.receiveTimeout);
      case DioExceptionType.cancel:
        return const ApiException(ApiErrorCode.cancel);
      case DioExceptionType.connectionError:
        return const ApiException(ApiErrorCode.connectionError);
      case DioExceptionType.badCertificate:
        return const ApiException(ApiErrorCode.badCertificate);
      case DioExceptionType.badResponse:
        return ApiException(
          ApiErrorCode.badResponse,
          statusCode: e.response?.statusCode,
          data: e.response?.data,
          message: e.message,
        );
      case DioExceptionType.unknown:
        return ApiException(ApiErrorCode.unknown, message: e.message);
    }
  }

  String? extractServerMessage(dynamic data) {
    if (data == null) return null;

    try {
      if (data is Map<String, dynamic>) {
        const keys = ['message', 'error', 'msg', 'detail', 'details'];
        for (final k in keys) {
          final v = data[k];
          if (v is String && v.isNotEmpty) return v;
          if (v is List && v.isNotEmpty) return v.first.toString();
        }
      }
      return data.toString();
    } catch (_) {
      return null;
    }
  }
}
