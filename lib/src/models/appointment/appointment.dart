import 'package:freezed_annotation/freezed_annotation.dart';
part 'appointment.g.dart';
part 'appointment.freezed.dart';

@freezed
class Appointment with _$Appointment{
  const factory Appointment({
    required String? id,
    required String? date,
    required String? doctorId,
    required String? doctorName,
    required String? patientId,
    required String? status,
    required String? reason,
    required String? time,
  }) = _Appointment;

  factory Appointment.fromJson(Map<String, dynamic> json) => _$AppointmentFromJson(json);
}