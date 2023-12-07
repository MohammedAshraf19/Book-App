import 'package:dio/dio.dart';

class ApiServices
{
  static late Dio _dio;

  static init() {
    _dio = Dio(
        BaseOptions(
          baseUrl: 'https://www.googleapis.com/books/v1/',
          receiveDataWhenStatusError: true,
        ));
  }

  static Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? query,
  }) async {
    return await _dio.get(
      endPoint,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String endPoint,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
  }) async {
    return await _dio.post(
      endPoint,
      data: data,
      queryParameters: query,
    );
  }

  static Future<Response> putData({
    required String endPoint,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
  }) async {
    return await _dio.put(
      endPoint,
      data: data,
      queryParameters: query,
    );
  }
}