// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_dev.dart';
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB58Ae9U2OzPOZ8P4IwaoruS_rVMtVf3S8',
    appId: '1:155270272585:web:fcb5195165c9aa300e1198',
    messagingSenderId: '155270272585',
    projectId: 'repkeeper-9e473',
    authDomain: 'repkeeper-9e473.firebaseapp.com',
    databaseURL: 'https://repkeeper-9e473.firebaseio.com',
    storageBucket: 'repkeeper-9e473.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDwGjkPJ7TWTQma8YKZRH7unvoowsYXY0',
    appId: '1:155270272585:android:a5e802ebf34224070e1198',
    messagingSenderId: '155270272585',
    projectId: 'repkeeper-9e473',
    databaseURL: 'https://repkeeper-9e473.firebaseio.com',
    storageBucket: 'repkeeper-9e473.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAitCLZQtZ4ygFA9nsu_z3No2T7eQLgaQg',
    appId: '1:155270272585:ios:86cd9d1a3c846f760e1198',
    messagingSenderId: '155270272585',
    projectId: 'repkeeper-9e473',
    databaseURL: 'https://repkeeper-9e473.firebaseio.com',
    storageBucket: 'repkeeper-9e473.appspot.com',
    androidClientId: '155270272585-6os95a2ldq5jlrfccee7ihlqgaoac4hs.apps.googleusercontent.com',
    iosClientId: '155270272585-qfhemhd3ooqc05vi0pm24p2gaioae8va.apps.googleusercontent.com',
    iosBundleId: 'com.repkeeper.app.repkeeper.dev',
  );
}
