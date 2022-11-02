// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Appointment _$$_AppointmentFromJson(Map<String, dynamic> json) =>
    _$_Appointment(
      date: json['date'] as String?,
      doctorId: json['doctorId'] as String?,
      doctorName: json['doctorName'] as String?,
      patientId: json['patientId'] as String?,
      status: json['status'] as String?,
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$_AppointmentToJson(_$_Appointment instance) =>
    <String, dynamic>{
      'date': instance.date,
      'doctorId': instance.doctorId,
      'doctorName': instance.doctorName,
      'patientId': instance.patientId,
      'status': instance.status,
      'time': instance.time,
    };
