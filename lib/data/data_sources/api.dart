import 'package:dio/dio.dart';

import '../entities/request.dart';
import 'endpoints.dart';

class API {
  API({required Dio dio}) : _dio = dio;
  final Dio _dio;

  Future<void> createRequest({
    required RequestEntity request,
  }) async {
    final response = await _dio.post(
      Endpoint.requests,
      data: {
        'userId': 1,
        'description': request.description,
        'skills': request.skills,
        'status': 'ne ',
        'startingAddress': request.startingAddress,
      },
    );
    print(response);
  }
}
