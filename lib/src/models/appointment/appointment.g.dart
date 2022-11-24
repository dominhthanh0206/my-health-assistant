// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Appointment _$$_AppointmentFromJson(Map<String, dynamic> json) =>
    _$_Appointment(
      id: json['id'] as String?,
      date: json['date'] as String?,
      doctorId: json['doctorId'] as String?,
      doctorName: json['doctorName'] as String?,
      doctorGender: json['doctorGender'] as String?,
      patientId: json['patientId'] as String?,
      patientName: json['patientName'] as String?,
      patientGender: json['patientGender'] as String?,
      status: json['status'] as String?,
      reason: json['reason'] as String?,
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$_AppointmentToJson(_$_Appointment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'doctorId': instance.doctorId,
      'doctorName': instance.doctorName,
      'doctorGender': instance.doctorGender,
      'patientId': instance.patientId,
      'patientName': instance.patientName,
      'patientGender': instance.patientGender,
      'status': instance.status,
      'reason': instance.reason,
      'time': instance.time,
    };
