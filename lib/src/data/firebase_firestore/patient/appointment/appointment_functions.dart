import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:my_health_assistant/src/models/appointment/appointment.dart';
import 'package:my_health_assistant/src/pages/global_var.dart';

class AppointmentFunctions {
  static var logger = Logger();
  static final db = FirebaseFirestore.instance;

  static void addAppointment(Map<String, dynamic> json, String id) {
    db.collection('appointments').doc(id).set(json);
  }

  // static Stream<List<Appointment>> getAllAppointment() {
  //   Logger().e(FirebaseFirestore.instance.collection('appointments').snapshots().map(
  //     (snapshot) =>
  //         snapshot.docs.map((doc) => Appointment.fromJson(doc.data())).toList()).length.toString());
  //   return FirebaseFirestore.instance.collection('appointments').snapshots().map(
  //     (snapshot) =>
  //         snapshot.docs.map((doc) => Appointment.fromJson(doc.data())).toList());
  // }

  static List<Appointment> getAppointmentByCon(
      List<Appointment> appointments, String condition) {
    List<Appointment> appointmentList = [];
    for (var element in appointments) {
      if (element.status == condition &&
          element.patientId == auth.currentUser!.uid) {
        appointmentList.add(element);
      }
    }
    return appointmentList;
  }

  static void cancelAppointment(String appointmentId, String reason) {
    db.collection('appointments').doc(appointmentId).update({
      'status': 'Cancelled',
      'reason': reason,
    });
  }

  static List<Appointment> getAppointmentOfDoctor(
      List<Appointment> appointments, String condition) {
    List<Appointment> appointmentList = [];
    for (var element in appointments) {
      if (element.status == condition &&
          element.patientId == auth.currentUser!.uid) {
        appointmentList.add(element);
      }
    }
    return appointmentList;
  }

  static Stream<List<Appointment>> getAllAppointment() {
    Logger().e(FirebaseFirestore.instance
        .collection('appointments')
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Appointment.fromJson(doc.data()))
            .toList())
        .length
        .toString());
    return FirebaseFirestore.instance
        .collection('appointments')
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Appointment.fromJson(doc.data()))
            .toList());
  }
}
