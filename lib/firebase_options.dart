// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCx3tuIeiDMBwYSGCuFYaNpGVI2lMutzVs',
    appId: '1:568718028839:web:58b73fe9adc1d1ae309e02',
    messagingSenderId: '568718028839',
    projectId: 'todolistapp-f0ab2',
    authDomain: 'todolistapp-f0ab2.firebaseapp.com',
    storageBucket: 'todolistapp-f0ab2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXkXiIhV-1gIBENExATjuv7Zf6yvQc_iY',
    appId: '1:568718028839:android:c258d53b4d61e2a6309e02',
    messagingSenderId: '568718028839',
    projectId: 'todolistapp-f0ab2',
    storageBucket: 'todolistapp-f0ab2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB_AR58Qyi_JMoAHs9wb9ZzFaJvdlQEfhY',
    appId: '1:568718028839:ios:a6884426321b0c58309e02',
    messagingSenderId: '568718028839',
    projectId: 'todolistapp-f0ab2',
    storageBucket: 'todolistapp-f0ab2.appspot.com',
    iosBundleId: 'com.example.todolistApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB_AR58Qyi_JMoAHs9wb9ZzFaJvdlQEfhY',
    appId: '1:568718028839:ios:a6884426321b0c58309e02',
    messagingSenderId: '568718028839',
    projectId: 'todolistapp-f0ab2',
    storageBucket: 'todolistapp-f0ab2.appspot.com',
    iosBundleId: 'com.example.todolistApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCx3tuIeiDMBwYSGCuFYaNpGVI2lMutzVs',
    appId: '1:568718028839:web:df4c2ac80b1fc792309e02',
    messagingSenderId: '568718028839',
    projectId: 'todolistapp-f0ab2',
    authDomain: 'todolistapp-f0ab2.firebaseapp.com',
    storageBucket: 'todolistapp-f0ab2.appspot.com',
  );
}
