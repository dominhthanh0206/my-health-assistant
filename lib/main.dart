import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/app.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(app);
}