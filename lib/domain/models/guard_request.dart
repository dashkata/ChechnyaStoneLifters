import 'user.dart';

class GuardRequest {
  final int id;
  final String startAddress;
  final String? endAddress;
  final String description;
  final List<String> skills;
  final DateTime date;
  final User creator;

  GuardRequest({
    required this.id,
    required this.startAddress,
    required this.date,
    required this.creator,
    required this.description,
    required this.skills,
    this.endAddress,
  });
}
