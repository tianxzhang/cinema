import 'package:cinema/api/rest_client.dart';
import 'package:cinema/constants/api_constants.dart';
import 'package:dio/dio.dart';

class AppApi {
  final Dio _dio = Dio();
  final Duration timeout;

  AppApi({this.timeout = const Duration(seconds: 30)}) {
    _dio.options.baseUrl = TMDB_API_BASE_URL;
    _dio.options.connectTimeout = 60 * 1000;
    _dio.options.connectTimeout = 60 * 1000;
    _dio.interceptors.add(interceptorWrapper());
  }

  RestClient getRestClient({Dio? dio}) {
    dio ??= _dio;
    return RestClient(dio,);
  }

  InterceptorsWrapper interceptorWrapper() {
    return InterceptorsWrapper(onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
      options.queryParameters['api_key'] = TMDB_API_KEY;
      return handler.next(options);
    },onResponse: (response, handler) {
      print(response.data.toString());
      return handler.resolve(response);
    });
  }
}
