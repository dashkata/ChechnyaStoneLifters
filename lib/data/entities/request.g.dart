// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestEntity _$RequestEntityFromJson(Map<String, dynamic> json) =>
    RequestEntity(
      id: json['id'] as int? ?? 0,
      description: json['description'] as String? ?? '',
      isDriver: json['isDriver'] as bool? ?? false,
      hasGun: json['hasGun'] as bool? ?? false,
      isGuard: json['isGuard'] as bool? ?? false,
      isTaken: json['isTaken'] as bool? ?? false,
      startingAddress: json['startingAddress'] as String? ?? '',
      isActive: json['isActive'] as bool? ?? true,
      user: json['user'] == null
          ? null
          : UserEntity.fromJson(json['user'] as Map<String, dynamic>),
      guard: json['guard'] == null
          ? null
          : BodyguardEntity.fromJson(json['guard'] as Map<String, dynamic>),
      endingAddress: json['endingAddress'] as String?,
      hasVehicle: json['hasVehicle'] as bool? ?? false,
      totalCost: json['totalCost'] as int? ?? 0,
      rentHours: json['rentHours'] as int? ?? 0,
      date: json['startingTime'] as String? ?? '',
    );

Map<String, dynamic> _$RequestEntityToJson(RequestEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'isDriver': instance.isDriver,
      'hasGun': instance.hasGun,
      'isGuard': instance.isGuard,
      'isTaken': instance.isTaken,
      'user': instance.user,
      'guard': instance.guard,
      'startingAddress': instance.startingAddress,
      'endingAddress': instance.endingAddress,
      'isActive': instance.isActive,
      'totalCost': instance.totalCost,
      'startingTime': instance.date,
      'rentHours': instance.rentHours,
    };
