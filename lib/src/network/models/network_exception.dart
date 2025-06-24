import 'dart:io';

import 'package:app_core/src/bootstrap.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exception.freezed.dart';

@freezed
class NetworkException with _$NetworkException implements Exception {
  const NetworkException._() : super();

  /// Вызывается если случился [DioException]
  const factory NetworkException.request({required DioException error}) =
      _ResponseError;

  /// Вызывается при общих ошибках
  const factory NetworkException.type({String? error}) = _DecodingError;

  /// Вызывается если нету доступа в интернет
  const factory NetworkException.connectivity({
    @Default('No internet access!') String message,
  }) = _Connectivity;

  /// Вызывается при тайм ауте запроса
  const factory NetworkException.timeOut({
    @Default('The request time has expired!') String message,
  }) = _TimeOut;

  /// Сообщение ошибки
  String get msg => when<String>(
        type: (error) => error ?? 'Unknown error',
        connectivity: (message) => message,
        timeOut: (message) => message,
        request: _parseDioError,
      );

  /// Возвращаем тексты в зависимости от статус кода
  String _parseDioError(DioException error) {
    const defaultError =
        'Something is wrong with our servers, the problem will be solved soon!';

    switch (error.response?.statusCode) {
      case HttpStatus.unauthorized:
        return 'You are not authorized!';
      case HttpStatus.notFound:
        return 'The content you are looking for has not been found!';
      case HttpStatus.requestEntityTooLarge:
        return 'Request Entity Too Large';
      case HttpStatus.networkConnectTimeoutError:
        return 'Network connection timed out. Please try again.';
      default:
        try {
          final data = error.response?.data;

          if (data is Map<String, dynamic>) {
            final message = data['message'];
            if (message is String) return message;

            final error = data['error'];
            if (error is String) return error;

            return defaultError;
          } else if (data is String) {
            return data;
          }
          return defaultError;
        } on Object catch (e) {
          if (kDebugMode) talker.error('Unknown - $e');
          return 'Unknown - $e';
        }
    }
  }
}
