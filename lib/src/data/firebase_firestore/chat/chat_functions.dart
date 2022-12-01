import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:my_health_assistant/src/models/chat_model/chat.dart';
import 'package:my_health_assistant/src/pages/global_var.dart';

class ChatFunctions {
  static var logger = Logger();
  static final db = FirebaseFirestore.instance;
  static void addMessage(Map<String, dynamic> json, String id) {
    db.collection('conversations').doc(id).set(json);
  }

  static Stream<List<ConversationModel>> getAllConversation() {
    return FirebaseFirestore.instance
        .collection('conversations')
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => ConversationModel.fromJson(doc.data()))
            .toList());
  }

  static ConversationModel? getConversationByCon(
      List<ConversationModel> appointments, String condition) {
    List<ConversationModel> appointmentList = [];
    for (var element in appointments) {
      if (element.conversationId == '${auth.currentUser?.uid}$condition') {
        return element;
      }
    }
    return null;
  }
}
