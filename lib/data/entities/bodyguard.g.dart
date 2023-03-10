// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bodyguard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BodyguardEntity _$BodyguardEntityFromJson(Map<String, dynamic> json) =>
    BodyguardEntity(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      isDriver: json['isDriver'] as bool? ?? false,
      isGuard: json['isGuard'] as bool? ?? false,
      hasGun: json['hasGun'] as bool? ?? false,
    );

Map<String, dynamic> _$BodyguardEntityToJson(BodyguardEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'isDriver': instance.isDriver,
      'isGuard': instance.isGuard,
      'hasGun': instance.hasGun,
    };
