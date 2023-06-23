import 'package:dio/dio.dart';

import '../constant/api.dart';

abstract class DioHelper {
  Future<Response> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? extraHeaders,
    bool auth = true,
  });

  Future<Response> post({
    required String path,
    FormData? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? extraHeaders,
    bool auth = true,
  });
  Future<Response> update({
    required String path,
    FormData? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? extraHeaders,
    bool auth = true,
  });
  Future<Response> delete({
    required String path,
    FormData? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? extraHeaders,
    bool auth = true,
  });
}

class DioHelperImpl extends DioHelper {
  final Dio client;

  DioHelperImpl({
    required this.client,
  });

  @override
  Future<Response> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? extraHeaders,
    bool auth = true,
  }) async {
    final response = await client.get(
      baseURL + path,
      queryParameters: queryParameters,
      options:
          Options(headers: getHeaders(extraHeaders: extraHeaders, auth: auth)),
    );
    return response;
  }

  @override
  Future<Response> post({
    required String path,
    FormData? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? extraHeaders,
    bool auth = true,
  }) async {
    final response = await client.post(
      baseURL + path,
      data: body,
      queryParameters: queryParameters,
      options:
          Options(headers: getHeaders(extraHeaders: extraHeaders, auth: auth)),
    );
    return response;
  }

  @override
  Future<Response> update(
      {required String path,
      FormData? body,
      Map<String, dynamic>? queryParameters,
      Map<String, String>? extraHeaders,
      bool auth = true}) async {
    final response = await client.put(
      baseURL + path,
      data: body,
      queryParameters: queryParameters,
      options:
          Options(headers: getHeaders(extraHeaders: extraHeaders, auth: auth)),
    );
    return response;
  }

  @override
  Future<Response> delete(
      {required String path,
      FormData? body,
      Map<String, dynamic>? queryParameters,
      Map<String, String>? extraHeaders,
      bool auth = true}) async {
    final response = await client.delete(
      baseURL + path,
      data: body,
      queryParameters: queryParameters,
      options:
          Options(headers: getHeaders(extraHeaders: extraHeaders, auth: auth)),
    );
    return response;
  }

  Map<String, String> getHeaders(
      {Map? extraHeaders, bool auth = false, bool hasImages = false}) {
    return {
      "Accept": hasImages ? "multipart/form-data" : "application/json",
      if (auth) "Authorization": "Bearer $token",
      ...?extraHeaders,
    };
  }

  String get baseURL {
    return api;
  }

  String get token {
    try {
      return "";
    } catch (e) {
      return "";
    }
  }
}
