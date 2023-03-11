import 'user.dart';

class RequestModel {
  final int id;
  final String startingAddress;
  final String? endAddress;
  final String description;
  final DateTime date;
  final UserModel user;
  final bool isDriver;
  final int? totalCost;
  final bool hasGun;
  final bool isGuard;
  final bool hasVehicle;
  final int rentHours;

  RequestModel({
    required this.isDriver,
    required this.hasGun,
    required this.isGuard,
    required this.hasVehicle,
    required this.id,
    required this.startingAddress,
    required this.date,
    required this.rentHours,
    this.totalCost,
    required this.user,
    required this.description,
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
        'rentHours': rentHours,
        'startingTime': date.toString(),
      };
}
