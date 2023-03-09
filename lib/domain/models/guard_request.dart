import 'user.dart';

class GuardRequest {
  final int id;
  final String startAddress;
  final String? endAddress;
  final DateTime date;
  final User creator;

  GuardRequest({
    required this.id,
    required this.startAddress,
    required this.date,
    required this.creator,
    this.endAddress,
  });
}
