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
    apiKey: 'AIzaSyBnvWv57AsuD4pX27uzzNEuohWvpwEKU6s',
    appId: '1:210231298458:web:2671525358755ce850d223',
    messagingSenderId: '210231298458',
    projectId: 'bookswap-efd1c',
    authDomain: 'bookswap-efd1c.firebaseapp.com',
    storageBucket: 'bookswap-efd1c.appspot.com',
    measurementId: 'G-MHYR7R53SG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDgbq3L_3Jddva9VCYme3voDyJwm5pIcR8',
    appId: '1:210231298458:android:afe5d5dda5cc7a0e50d223',
    messagingSenderId: '210231298458',
    projectId: 'bookswap-efd1c',
    storageBucket: 'bookswap-efd1c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-ZSGXOQtBpz8fHEDxJZ1Xj5C_6Cb4x_c',
    appId: '1:210231298458:ios:f52b3ddbf9f122c550d223',
    messagingSenderId: '210231298458',
    projectId: 'bookswap-efd1c',
    storageBucket: 'bookswap-efd1c.appspot.com',
    androidClientId: '210231298458-mmij44r6rbvvhqhorpit98rmjuo2ov04.apps.googleusercontent.com',
    iosClientId: '210231298458-51i77njbqktu1p655dj9be69atei6gjp.apps.googleusercontent.com',
    iosBundleId: 'com.example.bookswa',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA-ZSGXOQtBpz8fHEDxJZ1Xj5C_6Cb4x_c',
    appId: '1:210231298458:ios:f52b3ddbf9f122c550d223',
    messagingSenderId: '210231298458',
    projectId: 'bookswap-efd1c',
    storageBucket: 'bookswap-efd1c.appspot.com',
    androidClientId: '210231298458-mmij44r6rbvvhqhorpit98rmjuo2ov04.apps.googleusercontent.com',
    iosClientId: '210231298458-51i77njbqktu1p655dj9be69atei6gjp.apps.googleusercontent.com',
    iosBundleId: 'com.example.bookswa',
  );
}
