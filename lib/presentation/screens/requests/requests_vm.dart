import 'package:flutter/cupertino.dart';

import '../../../domain/models/request_model.dart';
import '../../../domain/repositories/request_repo.dart';
import '../../../main.dart';

class RequestsViewModel extends ChangeNotifier {
  RequestsViewModel({required RequestRepo requestRepo})
      : _requestRepo = requestRepo;
  final RequestRepo _requestRepo;

  bool _isLoading = true;

  bool get isLoading => _isLoading;
  late List<RequestModel> requests;

  Future<void> init() async {
    _isLoading = false;
    notifyListeners();
  }
}
