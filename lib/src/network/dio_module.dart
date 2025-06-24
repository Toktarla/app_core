import 'package:app_core/src/bootstrap.dart';
import 'package:app_core/src/common/constants/app_constants.dart';
import 'package:app_core/src/database/preferences/secure_storage_manager.dart';
import 'package:app_core/src/network/models/token_pair.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

/// Creates new `Dio` instance
@sealed
class DioModule {
  DioModule._();

  /// Конфигурация Dio
  static Future<Dio> configureDio({
    required String baseUrl,
    required DeviceInfoPlugin deviceInfo,
    Map<String, dynamic>? headers,
  }) async {
    final dioHeaders = <String, dynamic>{
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    }..addAll(headers ?? {});

    final dio = Dio()
      ..options.baseUrl = baseUrl
      ..options.headers = dioHeaders;

    dio.interceptors.addAll([
      _AuthDioInterceptor(dio: dio),
      TalkerDioLogger(
        talker: talker,
        settings: TalkerDioLoggerSettings(
          printResponseTime: true,
          printErrorHeaders: false,
          responseFilter: (response) {
            if (response.statusCode == 200 && response.data is List<int>) {
              return false;
            }
            return true;
          },
        ),
      ),
    ]);

    return dio;
  }
}

class _AuthDioInterceptor extends Interceptor {
  _AuthDioInterceptor({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final tokenModel = await SecureStorageManager.getToken();
    if (tokenModel != null) {
      talker
        ..debug('Access token: ${tokenModel.access}')
        ..debug('Refresh token: ${tokenModel.refresh}');
      options.headers['Authorization'] = 'Bearer ${tokenModel.access}';
    }

    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
    DioException e,
    ErrorInterceptorHandler handler,
  ) async {
    if (e.response?.statusCode == 401) {
      try {
        // If a 401 response is received, refresh the access token
        final oldToken = await SecureStorageManager.getToken();

        if (oldToken == null) {
          return handler.next(e);
        }

        talker.debug('Refreshing token...');

        final newDio = Dio(
          BaseOptions(
            baseUrl: AppConstants.baseUrl,
            sendTimeout: const Duration(milliseconds: 30000),
            receiveTimeout: const Duration(milliseconds: 60000),
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            },
          ),
        );

        final newToken = await newDio.get<dynamic>(
          '/v1/auth/refresh',
          data: {
            'refresh_token': oldToken.refresh,
          },
        ).then(
          (value) {
            if (value.data == null) {
              return null;
            }
            return TokenPair.fromJson(value.data as Map<String, dynamic>);
          },
        );

        if (newToken != null) {
          // Update the request header with the new access token
          e.requestOptions.headers['Authorization'] =
              'Bearer ${newToken.access}';
          await SecureStorageManager.setToken(value: newToken);

          // Repeat the request with the updated header
          return handler.resolve(await dio.fetch(e.requestOptions));
        } else {
          await SecureStorageManager.setToken(value: null);
          return handler.reject(
            DioException(
              requestOptions: e.requestOptions,
              response: e.response,
              error: 'Failed to refresh token',
            ),
          );
        }
      } on Object catch (_) {
        // Propagate the error from the refresh token request
        await SecureStorageManager.setToken(value: null);
        return handler.reject(
          DioException(
            requestOptions: e.requestOptions,
            response: e.response,
            error: 'Failed to refresh token',
          ),
        );
      }
    } else if (e.response == null) {
      return handler.reject(e);
    }
    return handler.next(e);
  }
}
