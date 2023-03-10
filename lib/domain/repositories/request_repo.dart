import '../models/guard_request.dart';

abstract class RequestRepo {
  Future<void> createRequest({
    required RequestModel request,
  });
}
