import 'package:json_annotation/json_annotation.dart';

import '../../domain/models/user.dart';
import 'request.dart';

part 'user.g.dart';

@JsonSerializable()
class UserEntity {
  @JsonKey(defaultValue: 0)
  int id;
  @JsonKey(defaultValue: '')
  String name;
  @JsonKey(defaultValue: '')
  String email;
  @JsonKey(defaultValue: '')
  String phoneNumber;
  @JsonKey(defaultValue: [])
  List<RequestEntity> requests;

  UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.requests,
  });

  User toUser() => User(id, name);

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}