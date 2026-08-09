import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:isp_mobile_app/core/env/app_environment.dart';
import 'package:isp_mobile_app/core/env/env.dart';
import 'package:isp_mobile_app/data/data_source/base/backend_error_interceptor.dart';
import 'package:isp_mobile_app/domain/enum/dio_client_type.dart';

@module
abstract class NetworkModule {
  final baseURL = Env.shared.baseUrl;

  Dio _createBaseDio(String baseURL) {
    final dio = Dio()..options.baseUrl = baseURL;
    dio.options.connectTimeout = const Duration(seconds: 12);
    dio.options.receiveTimeout = const Duration(seconds: 12);
    dio.options.contentType = 'application/json';
    dio.interceptors.add(BackendErrorInterceptor());
    return dio;
  }

  @Environment(AppEnvironment.production)
  @Named(DioClientType.unauthenticated)
  @singleton
  Dio get unAuthenticatedProdDio => _createBaseDio(baseURL);

  @Environment(AppEnvironment.development)
  @Named(DioClientType.unauthenticated)
  @singleton
  Dio get unAuthenticatedDevDio => _createBaseDio(baseURL);

  @Environment(AppEnvironment.staging)
  @Named(DioClientType.unauthenticated)
  @singleton
  Dio get unAuthenticatedStgDio => _createBaseDio(baseURL);

  @Named(DioClientType.authenticated)
  @singleton
  Dio get authenticatedDio => _createBaseDio(baseURL);
}

@module
abstract class StorageModule {
  @lazySingleton
  FlutterSecureStorage get secureStorage =>
      const FlutterSecureStorage(aOptions: AndroidOptions());

  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
}

@module
abstract class LoggerModule {
  @lazySingleton
  Logger get logger => Logger();
}
