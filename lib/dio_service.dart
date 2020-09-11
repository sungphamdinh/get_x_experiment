import 'package:dio/dio.dart';

class DioService {
  static DioService _dioService;
  Dio _dio;

  factory DioService() {
    return _dioService ??= DioService._();
  }

  Dio get dio => _dio;

  DioService._() {
    final options = BaseOptions(
        baseUrl: "https://api.thecatapi.com/v1/",
        connectTimeout: 5000,
        receiveTimeout: 3000,
        contentType: "application/json");
    _dio = Dio(options);
  }
}
