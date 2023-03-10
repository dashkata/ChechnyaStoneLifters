import 'package:json_annotation/json_annotation.dart';

part 'bodyguard.g.dart';

@JsonSerializable()
class BodyguardEntity {
  @JsonKey(defaultValue: 0)
  int id;
  @JsonKey(defaultValue: '')
  String name;
  @JsonKey(defaultValue: '')
  String email;
  @JsonKey(defaultValue: '')
  String phoneNumber;
  @JsonKey(defaultValue: false)
  bool isDriver;
  @JsonKey(defaultValue: false)
  bool isGuard;
  @JsonKey(defaultValue: false)
  bool hasGun;

  BodyguardEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.isDriver,
    required this.isGuard,
    required this.hasGun,
  });

  factory BodyguardEntity.fromJson(Map<String, dynamic> json) =>
      _$BodyguardEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BodyguardEntityToJson(this);
}
