import 'dart:async';

import 'package:app_core/src/bootstrap.dart';
import 'package:app_core/src/network/models/network_exception.dart';
import 'package:app_core/src/network/models/request_operation.dart';
import 'package:app_core/src/network/models/result.dart';
import 'package:dio/dio.dart';

mixin BaseRepository {
  String _getCallerName() {
    final frames = StackTrace.current.toString().split('\n');
    // Get the third frame as the first is this method,
    // second is handleOperation
    final callerFrame = frames[2];
    // Extract method name using regex
    final methodName = RegExp(
      r'([^\.]+)(?=\s+\()',
    ).firstMatch(callerFrame)?.group(1);
    return methodName ?? 'unknown';
  }

  RequestOperation<T> handleOperation<T>({
    required Future<T> Function() operation,
  }) async {
    final operationName = _getCallerName();
    try {
      final result = await operation();
      return Result.success(result);
    } on DioException catch (err, st) {
      talker.error('$operationName failed', err, st);
      return Result.failure(NetworkException.request(error: err));
    } on Object catch (err, st) {
      talker.error('$operationName failed with an unknown error', err, st);
      // unawaited(Sentry.captureException(err, stackTrace: st));
      return Result.failure(NetworkException.type(error: err.toString()));
    }
  }
}
