
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUp {
  static final FirebaseAuth auth = FirebaseAuth.instance;

  static Future<FirebaseApp> initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  static Future<void> createNewAccount(
      {required String email,
      required String password,
      required BuildContext context}) async {
    // try {
    //   await auth.createUserWithEmailAndPassword(email: email, password: password);
    // } catch (e) {
    //   log(e.toString());
    // }
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (signUpError) {
      if (signUpError is PlatformException) {
        if (signUpError.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
          log('error');
        }
      }
    }
  }
}
