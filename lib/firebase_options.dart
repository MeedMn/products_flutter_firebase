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
    apiKey: 'AIzaSyBwvA68qEQWQ4tJ_xw3rB82Q0ohWKgJvEU',
    appId: '1:546874159595:web:5af488cff26086c9e2a9ae',
    messagingSenderId: '546874159595',
    projectId: 'atelier4-m-menfalouti-iir5g4',
    authDomain: 'atelier4-m-menfalouti-iir5g4.firebaseapp.com',
    storageBucket: 'atelier4-m-menfalouti-iir5g4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCebCVRX7417u7QkkC7I-UQ0gR0y-Je0-k',
    appId: '1:546874159595:android:2454e4035eeec1c5e2a9ae',
    messagingSenderId: '546874159595',
    projectId: 'atelier4-m-menfalouti-iir5g4',
    storageBucket: 'atelier4-m-menfalouti-iir5g4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA0GqwHmGWz5WktFu4VhmxvnJGkcJiirfw',
    appId: '1:546874159595:ios:21d17a214214ae0be2a9ae',
    messagingSenderId: '546874159595',
    projectId: 'atelier4-m-menfalouti-iir5g4',
    storageBucket: 'atelier4-m-menfalouti-iir5g4.appspot.com',
    iosBundleId: 'com.example.atelier4MMenfaloutiIir5g4',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA0GqwHmGWz5WktFu4VhmxvnJGkcJiirfw',
    appId: '1:546874159595:ios:5be8138c443e1d65e2a9ae',
    messagingSenderId: '546874159595',
    projectId: 'atelier4-m-menfalouti-iir5g4',
    storageBucket: 'atelier4-m-menfalouti-iir5g4.appspot.com',
    iosBundleId: 'com.example.atelier4MMenfaloutiIir5g4.RunnerTests',
  );
}