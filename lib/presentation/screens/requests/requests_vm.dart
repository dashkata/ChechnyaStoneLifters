import 'package:flutter/cupertino.dart';

class RequestsViewModel extends ChangeNotifier {
  bool _isLoading = true;

  bool get isLoading => _isLoading;
  late List<String> requests;

  Future<void> init() async {
    requests = ['kur'];
    _isLoading = false;
    notifyListeners();
  }
}
