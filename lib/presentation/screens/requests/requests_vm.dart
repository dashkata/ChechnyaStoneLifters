import 'package:flutter/cupertino.dart';

import '../../../domain/models/request_model.dart';

class RequestsViewModel extends ChangeNotifier {
  bool _isLoading = true;

  bool get isLoading => _isLoading;
  late List<RequestModel> requests;

  Future<void> init() async {
    requests = [];
    _isLoading = false;
    notifyListeners();
  }
}
