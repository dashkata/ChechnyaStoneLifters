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

  Map<String, dynamic> toJson() => {
        'description': description,
        'userId': user.id,
        'startingAddress': startingAddress,
        'endingAddress': endAddress,
        'isGuard': true,
        'isDriver': skills.contains('Driver'),
        'hasGun': skills.contains('hasGun'),
        'isActive': true,
      };
}
