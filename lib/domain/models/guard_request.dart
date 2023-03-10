import 'user.dart';

class RequestModel {
  final int id;
  final String startingAddress;
  final String? endAddress;
  final String description;
  final List<String> skills;
  final DateTime date;
  final User user;

  RequestModel({
    required this.id,
    required this.startingAddress,
    required this.date,
    required this.user,
    required this.description,
    required this.skills,
    this.endAddress,
  });
}
