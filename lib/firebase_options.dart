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
    apiKey: 'AIzaSyDBCIFQGL1z9jpvS83nNgZET60u378Y5zI',
    appId: '1:204696312608:web:21e22ae4c3e60c378f5545',
    messagingSenderId: '204696312608',
    projectId: 'userlocation-67584',
    authDomain: 'userlocation-67584.firebaseapp.com',
    storageBucket: 'userlocation-67584.firebasestorage.app',
    measurementId: 'G-H0LCNEPKD5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDxfOAg5m_FBIEY-vwx2TTfnkLVhBWsCNU',
    appId: '1:204696312608:android:14f46695810624108f5545',
    messagingSenderId: '204696312608',
    projectId: 'userlocation-67584',
    storageBucket: 'userlocation-67584.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDPJpYQagairET5vZuOxlGKTksApbL2DL4',
    appId: '1:204696312608:ios:31fee1071cded8688f5545',
    messagingSenderId: '204696312608',
    projectId: 'userlocation-67584',
    storageBucket: 'userlocation-67584.firebasestorage.app',
    iosClientId: '204696312608-tuckglvhnt32j0gdjocc1qvtvqqf8rng.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDPJpYQagairET5vZuOxlGKTksApbL2DL4',
    appId: '1:204696312608:ios:31fee1071cded8688f5545',
    messagingSenderId: '204696312608',
    projectId: 'userlocation-67584',
    storageBucket: 'userlocation-67584.firebasestorage.app',
    iosClientId: '204696312608-tuckglvhnt32j0gdjocc1qvtvqqf8rng.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDBCIFQGL1z9jpvS83nNgZET60u378Y5zI',
    appId: '1:204696312608:web:9306bc4ac84538e58f5545',
    messagingSenderId: '204696312608',
    projectId: 'userlocation-67584',
    authDomain: 'userlocation-67584.firebaseapp.com',
    storageBucket: 'userlocation-67584.firebasestorage.app',
    measurementId: 'G-TVD5Q6SF4H',
  );

}