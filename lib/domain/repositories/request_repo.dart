import '../models/request_model.dart';

abstract class RequestRepo {
  Future<void> createRequest({
    required RequestModel request,
  });

  Future<List<RequestModel>> getAvailableRequests();

  Future<void> acceptRequest({
    required int requestId,
    required int guardId,
  });

  Future<void> cancelRequest({
    required int requestId,
  });
  Future<List<RequestModel>> fetchUserRequests({
    required int userId,
  });
}
