import 'package:checheneca/data/data_sources/api.dart';

import '../../domain/models/request_model.dart';
import '../../domain/repositories/request_repo.dart';
import '../entities/request.dart';

class APIRepository implements RequestRepo {
  APIRepository({required API api}) : _api = api;
  final API _api;

  @override
  Future<void> createRequest({
    required RequestModel request,
  }) async {
    await _api.createRequest(request: request);
  }

  @override
  Future<List<RequestModel>> getAvailableRequests() async {
    try {
      final data = await _api.getAvailableRequests();
      final List<RequestEntity> requests = (data.data as List<dynamic>)
          .map((e) => RequestEntity.fromJson(e as Map<String, dynamic>))
          .toList();
      final List<RequestModel> modelRequests =
          requests.map((e) => e.toRequest()).toList();
      return modelRequests;
    } on Exception {
      return [];
    }
  }

  @override
  Future<void> acceptRequest({
    required int requestId,
    required int guardId,
  }) async =>
      _api.acceptRequest(
        requestId,
        guardId,
      );

  @override
  Future<void> cancelRequest({
    required int requestId,
  }) async =>
      _api.cancelRequest(
        requestId,
      );

  @override
  Future<List<RequestModel>> fetchUserRequests({required int userId}) async {
    try {
      final data = await _api.getAvailableRequests();
      final List<RequestEntity> requests = (data.data as List<dynamic>)
          .map((e) => RequestEntity.fromJson(e as Map<String, dynamic>))
          .toList();
      final List<RequestModel> modelRequests =
          requests.map((e) => e.toRequest()).toList();
      return modelRequests;
    } on Exception {
      return [];
    }
  }
}
