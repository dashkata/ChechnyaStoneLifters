import 'package:dio/dio.dart';

import '../../domain/models/request_model.dart';
import 'endpoints.dart';

class API {
  API({required Dio dio}) : _dio = dio;
  final Dio _dio;

  Future<void> createRequest({
    required RequestModel request,
  }) async {
    final response = await _dio.post(Endpoint.requests, data: request.toJson());
    print(response);
  }

  Future<Response> getAvailableRequests() async {
    try {
      final response = await _dio.get(
        Endpoint.requests,
      );
      return response;
    } on Exception catch (e) {
      rethrow;
    }
  }
}
