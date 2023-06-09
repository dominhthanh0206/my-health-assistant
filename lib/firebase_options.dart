// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAnz975bwDpLQZcXL7iXLwuq2Qm5VRutxg',
    appId: '1:101025279:web:4fe46a6739f0531c45d3ca',
    messagingSenderId: '101025279',
    projectId: 'my-health-assistant-98df0',
    authDomain: 'my-health-assistant-98df0.firebaseapp.com',
    storageBucket: 'my-health-assistant-98df0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBBlV5wym6V7B8w8srY2WSq9Goo50qySXM',
    appId: '1:101025279:android:3538aa45aae0cfcd45d3ca',
    messagingSenderId: '101025279',
    projectId: 'my-health-assistant-98df0',
    storageBucket: 'my-health-assistant-98df0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBcQ5EfzwtSIea3TF4CJD15-9be2NbNqP0',
    appId: '1:101025279:ios:6c8363426666396645d3ca',
    messagingSenderId: '101025279',
    projectId: 'my-health-assistant-98df0',
    storageBucket: 'my-health-assistant-98df0.appspot.com',
    iosClientId: '101025279-72hvlofkv4i4rlicrjj7hvjrtbpbd3ie.apps.googleusercontent.com',
    iosBundleId: 'com.example.myHealthAssistant',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBcQ5EfzwtSIea3TF4CJD15-9be2NbNqP0',
    appId: '1:101025279:ios:6c8363426666396645d3ca',
    messagingSenderId: '101025279',
    projectId: 'my-health-assistant-98df0',
    storageBucket: 'my-health-assistant-98df0.appspot.com',
    iosClientId: '101025279-72hvlofkv4i4rlicrjj7hvjrtbpbd3ie.apps.googleusercontent.com',
    iosBundleId: 'com.example.myHealthAssistant',
  );
}
