import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../models/users/doctor.dart';

Stream<List<Doctor>> getAllDoctor() {
  return FirebaseFirestore.instance.collection('doctors').snapshots().map(
      (snapshot) =>
          snapshot.docs.map((doc) => Doctor.fromJson(doc.data())).toList());
}