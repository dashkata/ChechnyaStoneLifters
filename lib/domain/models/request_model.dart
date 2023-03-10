import 'user.dart';

class RequestModel {
  final int id;
  final String startingAddress;
  final String? endAddress;
  final String description;
  final Map<String, bool> skills;
  final DateTime date;
  final UserModel user;
  final bool isDriver;
  final bool hasGun;
  final bool isGuard;
  final bool hasVehicle;

  RequestModel({
    required this.isDriver,
    required this.hasGun,
    required this.isGuard,
    required this.hasVehicle,
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
        'isGuard': isGuard,
        'isDriver': isDriver,
        'hasGun': hasGun,
        'hasVehicle': hasVehicle,
        'isActive': true,
      };
}
