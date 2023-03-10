import 'package:flutter/cupertino.dart';

import '../../../domain/models/guard_request.dart';
import '../../../main.dart';

class RequestsViewModel extends ChangeNotifier {
  bool _isLoading = true;

  bool get isLoading => _isLoading;
  late List<RequestModel> requests;

  Future<void> init() async {
    requests = [
      RequestModel(
        id: 1,
        startingAddress: 'Bankya, st. Samo Sinite',
        date: DateTime(1),
        user: user1, description: '', skills: [],
      ),

    ];
    _isLoading = false;
    notifyListeners();
  }
}
