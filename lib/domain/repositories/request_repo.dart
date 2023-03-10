import '../models/request_model.dart';

abstract class RequestRepo {
  Future<void> createRequest({
    required RequestModel request,
  });
  Future<List<RequestModel>> getAvailableRequests();
}
