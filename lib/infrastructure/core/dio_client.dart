import 'dart:io';
import 'package:agriterra/config/env/environment_config.dart';
import 'package:agriterra/infrastructure/auth/datasources/auth_local_data_source.dart';
import 'package:agriterra/presentation/core/widgets/app_widget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

const _defaultConnectTimeout = Duration.millisecondsPerMinute;
const _defaultReceiveTimeout = Duration.millisecondsPerMinute;

const List<String> SCOPES = <String>[
  "openid",
  "profile",
  "email",
  "offline_access",
  "api",
];

@lazySingleton
class DioClient {
  final Dio dio;
  final AuthLocalDataSource localDataSource;

  DioClient({
    @required this.dio,
    @required this.localDataSource,
  }) {
    dio
      ..options.baseUrl = EnvironmentConfig.instance.values.baseUrl
      ..options.connectTimeout = _defaultConnectTimeout
      ..options.receiveTimeout = _defaultReceiveTimeout
      ..options.headers.addAll({Headers.contentTypeHeader: "text/plain"})
      ..httpClientAdapter;
    dio.interceptors.add(
      AppInterceptors(
        dio: dio,
        localDataSource: localDataSource,
      ),
    );

    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor(
          responseBody: true,
          error: true,
          requestHeader: false,
          responseHeader: false,
          request: false,
          requestBody: false));
    }
  }

  Future<dynamic> get(
    String uri, {
    Map<String, dynamic> queryParameters,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onReceiveProgress,
  }) async {
    try {
      var response = await dio.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> post(
    String uri, {
    data,
    Map<String, dynamic> queryParameters,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    try {
      var response = await dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on FormatException catch (_) {
      throw FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> put(
    String uri, {
    data,
    Map<String, dynamic> queryParameters,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    try {
      var response = await dio.put(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on FormatException catch (_) {
      throw FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> patch(
    String uri, {
    data,
    Map<String, dynamic> queryParameters,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    try {
      var response = await dio.patch(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on FormatException catch (_) {
      throw FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> delete(
    String uri, {
    data,
    Map<String, dynamic> queryParameters,
    Options options,
    CancelToken cancelToken,
  }) async {
    try {
      var response = await dio.delete(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data;
    } on FormatException catch (_) {
      throw FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> download(
    String uri,
    String savePath,
  ) async {
    try {
      var response = await dio.download(uri, savePath);
      return response.data;
    } on FormatException catch (_) {
      throw FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }
}

class AppInterceptors extends InterceptorsWrapper {
  final Dio dio;
  final AuthLocalDataSource localDataSource;

  AppInterceptors({
    @required this.localDataSource,
    @required this.dio,
  });

  @override
  Future onRequest(RequestOptions options) async {
    if (options.headers.containsKey("no-auth")) {
      options.headers.remove("no-auth");
    } else {
      try {
        final token = await localDataSource.getToken();

        options.headers.addAll({"Access-Token": token});
      } catch (e) {
        rethrow;
      }
    }

    return options;
  }

  @override
  Future onError(DioError err) async {
    try {
      if (err.response?.statusCode == 401) {
        if (err.response.toString().contains("invalid_token")) {
          // Erase credentials
          await localDataSource.cacheToken(token: null);
          await localDataSource.cacheRefreshToken(refreshToken: null);
          await localDataSource.cacheUserId(userId: null);
          await localDataSource.cacheCompanyId(companyId: null);
          // Navigate to the Auth Page
          navigatorKey.currentState.pushNamedAndRemoveUntil(
            '/login-page',
            ModalRoute.withName('/login-page'),
          );
        }
        return err;
      } else {
        return err;
      }
    } on PlatformException catch (e) {
      rethrow;
    }
  }

  @override
  Future onResponse(Response response) async {
    return response;
  }
}
