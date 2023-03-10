import 'user.dart';

class RequestModel {
  final int id;
  final String startingAddress;
  final String? endingAddress;
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
    this.endingAddress,
  });

  Map<String, dynamic> toJson() => {
        'description': description,
        'userId': 1,
        'startingAddress': startingAddress,
        'endingAddress': endingAddress,
        'isGuard': true,
        'isDriver': skills.contains('Driver'),
        'hasGun': skills.contains('hasGun'),
        'isActive': true,
      };
}
