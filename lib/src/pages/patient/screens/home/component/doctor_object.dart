import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../models/users/doctor.dart';

class DoctorObject {
  final String doctorName;
  String? department;
  String? imgUrl;
  String? hospital;
  String? gender;
  String? phoneNumber;
  DoctorObject(
      {required this.doctorName,
      this.department,
      this.imgUrl,
      this.hospital,
      this.gender,
      this.phoneNumber});
}

Stream<List<Doctor>> getAllDoctor() {
  return FirebaseFirestore.instance.collection('doctors').snapshots().map(
      (snapshot) =>
          snapshot.docs.map((doc) => Doctor.fromJson(doc.data())).toList());
}

// List<DoctorObject> listDoctor = [
//   DoctorObject(
//       doctorName: 'Dr. Jenny Watson',
//       department: 'General',
//       imgUrl: 'assets/images/schedule_page/doctor.png',
//       hospital: 'Christ Hospital',
//       gender: 'Female'),
//   DoctorObject(
//       doctorName: 'Dr. Jenny Baranick',
//       department: 'Dentist',
//       imgUrl: 'assets/images/schedule_page/doctor.png',
//       hospital: 'Christ Hospital',
//       gender: 'Female'),
//   DoctorObject(
//       doctorName: 'Dr. David Beckham',
//       department: 'Ophthalmologist',
//       imgUrl: 'assets/images/schedule_page/doctor.png',
//       hospital: 'Christ Hospital',
//       gender: 'Male'),
//   DoctorObject(
//       doctorName: 'Dr. Drake Boeson',
//       department: 'Nutritionist',
//       imgUrl: 'assets/images/schedule_page/doctor.png',
//       hospital: 'Christ Hospital',
//       gender: 'Male'),
//   DoctorObject(
//       doctorName: 'Dr. Adian Allende',
//       department: 'Neurologist',
//       imgUrl: 'assets/images/schedule_page/doctor.png',
//       hospital: 'Christ Hospital',
//       gender: 'Female'),
//   DoctorObject(
//     doctorName: 'Dr. Salvatore Heredia',
//     department: 'Pediatric',
//     imgUrl: 'assets/images/schedule_page/doctor.png',
//     hospital: 'Christ Hospital',
//      gender: 'Female'
//   ),
//   DoctorObject(
//       doctorName: 'Dr. Delaney Magino',
//       department: 'Radiology',
//       imgUrl: 'assets/images/schedule_page/doctor.png',
//       hospital: 'Christ Hospital',
//       gender: 'Male'),
//   DoctorObject(
//       doctorName: 'Dr. Beckett Calget',
//       department: 'Dentist',
//       imgUrl: 'assets/images/schedule_page/doctor.png',
//       hospital: 'Christ Hospital',
//       gender: 'Male'),
//   DoctorObject(
//       doctorName: 'Dr. Bernard Bliss',
//       department: 'Pediatric',
//       imgUrl: 'assets/images/schedule_page/doctor.png',
//       hospital: 'Christ Hospital',
//       gender: 'Male'),
//   DoctorObject(
//       doctorName: 'Dr. Jada Srnsky',
//       department: 'Pediatric',
//       imgUrl: 'assets/images/schedule_page/doctor.png',
//       hospital: 'Christ Hospital',
//       gender: 'Female'),
//   DoctorObject(
//       doctorName: 'Dr. Randy Wigham',
//       department: 'General',
//       imgUrl: 'assets/images/schedule_page/doctor.png',
//       hospital: 'Christ Hospital',
//       gender: 'Male'),
// ];
