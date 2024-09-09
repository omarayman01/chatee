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
    apiKey: 'AIzaSyCdcpNnN-klvXFGN7v1G49G4XH8X29X6n0',
    appId: '1:452536977741:web:5fcac9bf4042ddcb624f04',
    messagingSenderId: '452536977741',
    projectId: 'chatee-603d8',
    authDomain: 'chatee-603d8.firebaseapp.com',
    storageBucket: 'chatee-603d8.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDf40zdFfBDHfa1RJYhSrpaNX0fDJ5Mm3w',
    appId: '1:452536977741:android:29b9d63ec4e04649624f04',
    messagingSenderId: '452536977741',
    projectId: 'chatee-603d8',
    storageBucket: 'chatee-603d8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAcJHhDGoMCnmTyqy6oSy3Hs-RXhn0DizI',
    appId: '1:452536977741:ios:7360d110616ab644624f04',
    messagingSenderId: '452536977741',
    projectId: 'chatee-603d8',
    storageBucket: 'chatee-603d8.appspot.com',
    iosBundleId: 'com.example.chatee',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAcJHhDGoMCnmTyqy6oSy3Hs-RXhn0DizI',
    appId: '1:452536977741:ios:7360d110616ab644624f04',
    messagingSenderId: '452536977741',
    projectId: 'chatee-603d8',
    storageBucket: 'chatee-603d8.appspot.com',
    iosBundleId: 'com.example.chatee',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCdcpNnN-klvXFGN7v1G49G4XH8X29X6n0',
    appId: '1:452536977741:web:c2544fdf710b1cf0624f04',
    messagingSenderId: '452536977741',
    projectId: 'chatee-603d8',
    authDomain: 'chatee-603d8.firebaseapp.com',
    storageBucket: 'chatee-603d8.appspot.com',
  );
}
