
import 'package:freezed_annotation/freezed_annotation.dart';
part 'doctor.g.dart';
part 'doctor.freezed.dart';

@freezed
class Doctor with _$Doctor{
  const factory Doctor({
    required String address,
    required String avatar,
    required DateTime dateOfBirth,
    required String department,
    required String description,
    required String fullName,
    required String gender,
    required String id,
    required String phoneNumber
  }) = _Doctor;

  factory Doctor.fromJson(Map<String, Object?> json) => _$DoctorFromJson(json);
}