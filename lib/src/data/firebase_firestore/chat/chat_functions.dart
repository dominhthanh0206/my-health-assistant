import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';

class ChatFunctions{
  static var logger = Logger();
  static final db = FirebaseFirestore.instance;
  static void addMessage(Map<String, dynamic> json, String id) {
    db.collection('conversations').doc(id).set(json);
  }
}