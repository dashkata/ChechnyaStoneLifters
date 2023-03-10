import 'package:json_annotation/json_annotation.dart';

import '../../domain/models/request_model.dart';
import '../../domain/models/user.dart';
import 'bodyguard.dart';
import 'user.dart';

part 'request.g.dart';

@JsonSerializable()
class RequestEntity {
  @JsonKey(defaultValue: 0)
  int id;
  @JsonKey(defaultValue: '')
  String description;
  @JsonKey(defaultValue: false)
  bool isDriver;
  @JsonKey(defaultValue: false)
  bool hasGun;
  @JsonKey(defaultValue: false)
  bool isGuard;
  @JsonKey(defaultValue: false)
  bool isTaken;
  UserEntity? user;
  BodyguardEntity? guard;
  @JsonKey(defaultValue: '')
  String startingAddress;
  String? endingAddress;
  @JsonKey(defaultValue: true)
  bool isActive;

  RequestEntity({
    required this.id,
    required this.description,
    required this.isDriver,
    required this.hasGun,
    required this.isGuard,
    required this.isTaken,
    required this.startingAddress,
    required this.isActive,
    this.user,
    this.guard,
    this.endingAddress,
  });

  RequestModel toRequest() => RequestModel(
        id: id,
        startingAddress: startingAddress,
        date: DateTime(1914),
        user: User(1, 'MaikaMu'),
        description: description,
        skills: ['driver', 'hasGun'],
      );

  factory RequestEntity.fromJson(Map<String, dynamic> json) =>
      _$RequestEntityFromJson(json);

  Map<String, dynamic> toJson() => _$RequestEntityToJson(this);
}
