
import 'package:freezed_annotation/freezed_annotation.dart';
part 'patient.g.dart';
part 'patient.freezed.dart';

@freezed
class Patient with _$Patient{
  const factory Patient({
    required String id,
    required String fullName,
    required String nickname,
    required DateTime dateOfBirth,
    required String gender,
    required String phoneNumber,
    required String address
  }) = _Patient;

  factory Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);
}