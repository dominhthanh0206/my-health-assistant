// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Doctor _$$_DoctorFromJson(Map<String, dynamic> json) => _$_Doctor(
      address: json['address'] as String,
      avatar: json['avatar'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      department: json['department'] as String,
      description: json['description'] as String,
      fullName: json['fullName'] as String,
      gender: json['gender'] as String,
      id: json['id'] as String,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$$_DoctorToJson(_$_Doctor instance) => <String, dynamic>{
      'address': instance.address,
      'avatar': instance.avatar,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'department': instance.department,
      'description': instance.description,
      'fullName': instance.fullName,
      'gender': instance.gender,
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
    };
