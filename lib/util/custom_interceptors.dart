import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';

class ConnectivityInterceptorsCastException implements Exception {
  final message =
      'No internet connection, please check internet connection and try again';
  @override
  String toString() => message;
}

class CustomInterceptors extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    final isConnected = connectivityResult != ConnectivityResult.none;
    if (isConnected) {
      print(
          "REQUEST [${' '}${options?.method}${' '}] ${' '} URL: ${options?.baseUrl + options?.path} ${options.data}");
      return super.onRequest(options);
    } else
      throw ConnectivityInterceptorsCastException();
  }

  @override
  Future onResponse(Response response) {
    print(
        "RESPONSE [${' '}${response?.statusCode}${' '}]${'\n'}${response?.data}");
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    print(
        "ERROR [${' '}${err?.response?.statusCode}${' '}]${'\n'} error meesage =>"
        " ${err.response.data} ${'\n'} error header => ${err.response.headers.map.toString()}");
    return super.onError(err);
  }
}
