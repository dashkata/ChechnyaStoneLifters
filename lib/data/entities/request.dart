import '../../domain/models/guard_request.dart';

class RequestEntity {
  final int userId;
  final String description;
  final String startingAddress;
  final List<String> skills;

  RequestEntity({
    required this.userId,
    required this.description,
    required this.startingAddress,
    required this.skills,
  });

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'description': description,
        'startingAddress': startingAddress,
        'skills': skills,
      };

  factory RequestEntity.fromRequest(GuardRequest request) => RequestEntity(
        userId: request.id,
        description: request.description,
        startingAddress: request.startAddress,
        skills: request.skills,
      );
}
