import '../../domain/models/guard_request.dart';

class RequestEntity {
  final int id;
  final int userId;
  final String description;
  final String startingAddress;
  final List<String> skills;

  RequestEntity({
    required this.id,
    required this.userId,
    required this.description,
    required this.startingAddress,
    required this.skills,
  });

  // RequestModel toRequest() => RequestModel(id: id, startingAddress: startingAddress, date: date, user: user, description: description, skills: skills)

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'description': description,
        'startingAddress': startingAddress,
        'skills': skills,
      };

  factory RequestEntity.fromRequest(RequestModel request) => RequestEntity(
        id: request.user.id,
        userId: request.user.id,
        description: request.description,
        startingAddress: request.startingAddress,
        skills: request.skills,
      );
}
