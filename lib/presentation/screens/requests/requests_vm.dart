import 'package:flutter/cupertino.dart';

import '../../../domain/models/guard_request.dart';
import '../../../main.dart';

class RequestsViewModel extends ChangeNotifier {
  bool _isLoading = true;

  bool get isLoading => _isLoading;
  late List<GuardRequest> requests;

  Future<void> init() async {
    requests = [
      GuardRequest(
        id: 1,
        startAddress: 'Bankya, st. Samo Sinite',
        date: DateTime(1),
        creator: user1, description: '', skills: [],
      ),

    ];
    _isLoading = false;
    notifyListeners();
  }
}
