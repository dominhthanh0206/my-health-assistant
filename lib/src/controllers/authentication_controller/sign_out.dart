import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class SignOutController {
  static FirebaseAuth auth = FirebaseAuth.instance;

  static Future<FirebaseApp> initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  static Future<void> signOut() async {
    await auth.signOut();
  }
}
