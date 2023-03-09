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
        creator: user1,
      ),
      GuardRequest(
        id: 2,
        startAddress: 'Bankya, st. Samo Sinite',
        date: DateTime(2),
        creator: user2,
      ),
      GuardRequest(
        id: 3,
        startAddress: 'Bankya, st. Samo Sinite',
        date: DateTime(1111),
        creator: user1,
      ),
    ];
    _isLoading = false;
    notifyListeners();
  }
}
