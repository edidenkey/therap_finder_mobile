import 'dart:io';

import 'package:dio/dio.dart';

abstract class NetworkExceptions {
  static bool isSocketException(DioError err) {
    return err.type == DioErrorType.other &&
        err.error != null &&
        err.error is SocketException;
  }

  static bool isTimeoutException(DioError err) {
    return err.type == DioErrorType.connectTimeout ||
        err.type == DioErrorType.sendTimeout ||
        err.type == DioErrorType.receiveTimeout;
  }

  static bool isTokenException(DioError err) {
    return err.type == DioErrorType.response &&
        err.response?.statusCode == 401 &&
        err.response?.data['message'] == 'Unauthenticated.';
  }

  static bool isServerException(DioError err) {
    return err.type == DioErrorType.response &&
        err.response != null &&
        err.response!.statusCode! >= 500;
  }
}
