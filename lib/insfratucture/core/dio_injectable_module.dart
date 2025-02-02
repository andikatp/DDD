import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_injectable_module.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final dioLogger = ref.watch(dioLoggerProvider);
  final delayedRequest = ref.watch(delayedRequestProvider);
  final dio = Dio()..interceptors.addAll([dioLogger, delayedRequest]);
  return dio;
}

class DioLogger extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('request sent to server', name: 'DioLogger');
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    log('data fetched from server', name: 'DioLogger');
    handler.resolve(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.type == DioExceptionType.cancel) {
      log('request cancelled by user', name: 'DioLogger');
    }
    super.onError(err, handler);
  }
}

@riverpod
DioLogger dioLogger(DioLoggerRef ref) => DioLogger();

class DelayedRequest extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    /// if the request is from [PostDetailsPage], delay the request 2 seconds
    /// (just to demonstrate the cache mechanism better)
    if (options.path.contains('/')) {
      Future.delayed(
        const Duration(seconds: 2),
        () => handler.next(options),
      );
    } else {
      handler.next(options);
    }
  }
}

@riverpod
DelayedRequest delayedRequest(DelayedRequestRef ref) => DelayedRequest();
