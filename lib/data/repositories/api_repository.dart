import 'package:checheneca/data/data_sources/api.dart';

import '../../domain/models/guard_request.dart';
import '../../domain/repositories/request_repo.dart';
import '../entities/request.dart';

class APIRepository implements RequestRepo {
  APIRepository({required API api}) : _api = api;
  final API _api;

  @override
  Future<void> createRequest({
    required GuardRequest request,
  }) async {
    await _api.createRequest(
      request: RequestEntity.fromRequest(request),
    );
  }
}
