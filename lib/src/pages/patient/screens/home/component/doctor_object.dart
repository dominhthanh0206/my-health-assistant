class DoctorObject {
  final String doctorName;
  String? department;
  String? imgUrl;
  double? feedback;
  String? hospital;
  double? review;
  DoctorObject(
      {required this.doctorName,
      this.department,
      this.imgUrl,
      this.hospital,
      this.feedback,
      this.review});
}

List<DoctorObject> listDoctor = [
  DoctorObject(
      doctorName: 'Dr. Jenny Watson',
      department: 'General',
      imgUrl: 'assets/images/schedule_page/doctor.png',
      hospital: 'Christ Hospital',
      feedback: 4.4,
      review: 4.942),
  DoctorObject(
      doctorName: 'Dr. Jenny Baranick',
      department: 'Dentist',
      imgUrl: 'assets/images/schedule_page/doctor.png',
      hospital: 'Christ Hospital',
      feedback: 4.4,
      review: 4.942),
  DoctorObject(
      doctorName: 'Dr. David Beckham',
      department: 'Ophthalmologist',
      imgUrl: 'assets/images/schedule_page/doctor.png',
      hospital: 'Christ Hospital',
      feedback: 4.4,
      review: 4.942),
  DoctorObject(
      doctorName: 'Dr. Drake Boeson',
      department: 'Nutritionist',
      imgUrl: 'assets/images/schedule_page/doctor.png',
      hospital: 'Christ Hospital',
      feedback: 4.4,
      review: 4.942),
  DoctorObject(
      doctorName: 'Dr. Adian Allende',
      department: 'Neurologist',
      imgUrl: 'assets/images/schedule_page/doctor.png',
      hospital: 'Christ Hospital',
      feedback: 4.4,
      review: 4.942),
  DoctorObject(
      doctorName: 'Dr. Salvatore Heredia',
      department: 'Pediatric',
      imgUrl: 'assets/images/schedule_page/doctor.png',
      hospital: 'Christ Hospital',
      feedback: 4.4,
      review: 4.942),
  DoctorObject(
      doctorName: 'Dr. Delaney Magino',
      department: 'Radiology',
      imgUrl: 'assets/images/schedule_page/doctor.png',
      hospital: 'Christ Hospital',
      feedback: 4.4,
      review: 4.942),
  DoctorObject(
      doctorName: 'Dr. Beckett Calget',
      department: 'Dentist',
      imgUrl: 'assets/images/schedule_page/doctor.png',
      hospital: 'Christ Hospital',
      feedback: 4.4,
      review: 4.942),
  DoctorObject(
      doctorName: 'Dr. Bernard Bliss',
      department: 'Pediatric',
      imgUrl: 'assets/images/schedule_page/doctor.png',
      hospital: 'Christ Hospital',
      feedback: 4.4,
      review: 4.942),
  DoctorObject(
      doctorName: 'Dr. Jada Srnsky',
      department: 'Pediatric',
      imgUrl: 'assets/images/schedule_page/doctor.png',
      hospital: 'Christ Hospital',
      feedback: 4.4,
      review: 4.942),
  DoctorObject(
      doctorName: 'Dr. Randy Wigham',
      department: 'General',
      imgUrl: 'assets/images/schedule_page/doctor.png',
      hospital: 'Christ Hospital',
      feedback: 4.4,
      review: 4.942),
];
