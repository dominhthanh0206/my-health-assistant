import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_health_assistant/src/models/users/doctor.dart';

Stream<List<Doctor>> getAllDoctor() {
  return FirebaseFirestore.instance.collection('doctors').snapshots().map(
      (snapshot) =>
          snapshot.docs.map((doc) => Doctor.fromJson(doc.data())).toList());
}

List<Doctor> getDoctorByDep(List<Doctor> allDoctors, String dep){
  List<Doctor> doctors = [];
  for (var element in allDoctors) {
    if(element.department.contains(dep.trim())){
      doctors.add(element);
    }
  }
  return doctors;
}