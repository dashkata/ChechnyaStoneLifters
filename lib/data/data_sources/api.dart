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
  }

  Future<Response> getAvailableRequests() async {
    try {
      final response = await _dio.get(
        Endpoint.activeRequest,
      );
      return response;
    } on Exception catch (e) {
      rethrow;
    }
  }

  Future<void> acceptRequest(
    int requestId,
    int guardId,
  ) async {
    try {
      await _dio.patch(
        Endpoint.acceptRequest(
          requestId.toString(),
          guardId.toString(),
        ),
      );
    } on Exception catch (e) {
      rethrow;
    }
  }

  Future<void> cancelRequest(
    int requestId,
  ) async {
    try {
      await _dio.patch(
        Endpoint.cancelRequest(
          requestId.toString(),
        ),
      );
    } on Exception catch (e) {
      rethrow;
    }
  }
}
