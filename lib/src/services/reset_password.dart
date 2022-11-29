import 'package:firebase_auth/firebase_auth.dart';

class ResetPassword{
  static FirebaseAuth auth = FirebaseAuth.instance;

  static Future<void> resetPassword({required String email}) async {
    auth.sendPasswordResetEmail(email: email);

  }
}