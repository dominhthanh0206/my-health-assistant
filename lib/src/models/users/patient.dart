
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
    required int gender,
    required String phoneNumber,
    required String address
  }) = _Patient;

  factory Patient.fromJson(Map<String, Object?> json) => _$PatientFromJson(json);
}