import 'package:flutter/cupertino.dart';

import '../../../domain/models/request_model.dart';
import '../../../domain/repositories/request_repo.dart';

class RequestsViewModel extends ChangeNotifier {
  RequestsViewModel({required RequestRepo requestRepo})
      : _requestRepo = requestRepo;
  final RequestRepo _requestRepo;

  bool _isLoading = true;

  bool get isLoading => _isLoading;
  List<RequestModel> _requests = [];

  List<RequestModel> get requests => _requests;

  Future<void> init() async {
    _requests = await _requestRepo.fetchUserRequests(userId: 1);
    _isLoading = false;
    notifyListeners();
  }
}
