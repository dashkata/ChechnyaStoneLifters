import 'package:flutter/cupertino.dart';

import '../../../domain/models/request_model.dart';
import '../../../domain/repositories/request_repo.dart';

class AvailableRequestsVM extends ChangeNotifier {
  AvailableRequestsVM({required RequestRepo requestRepo})
      : _requestRepo = requestRepo;
  final RequestRepo _requestRepo;
  bool _isLoading = true;
  List<RequestModel> _requests = [];

  bool get isLoading => _isLoading;

  List<RequestModel> get requests => _requests;

  Future<void> init() async {
    _requests = await _requestRepo.getAvailableRequests();
    _isLoading = false;
    notifyListeners();
  }
}
