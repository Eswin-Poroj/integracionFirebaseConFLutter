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
    apiKey: 'AIzaSyDP1APAc24Qiz_R9swD-QhRdsU_Fz2Ksos',
    appId: '1:636514201124:web:9dad9088273720a966f2b1',
    messagingSenderId: '636514201124',
    projectId: 'pruebaintecap-5be09',
    authDomain: 'pruebaintecap-5be09.firebaseapp.com',
    storageBucket: 'pruebaintecap-5be09.appspot.com',
    measurementId: 'G-146DNTQG9K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCnZEWw4yml5KhvzSHebCUs5O6ABFXD8sI',
    appId: '1:636514201124:android:d1d21ad7da08610966f2b1',
    messagingSenderId: '636514201124',
    projectId: 'pruebaintecap-5be09',
    storageBucket: 'pruebaintecap-5be09.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBr2aBAiEAz4HhmOEhxChIDOwaHwmlp0SM',
    appId: '1:636514201124:ios:4d8a859dbc32d85566f2b1',
    messagingSenderId: '636514201124',
    projectId: 'pruebaintecap-5be09',
    storageBucket: 'pruebaintecap-5be09.appspot.com',
    iosBundleId: 'com.example.firebasePracticaIntecap',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBr2aBAiEAz4HhmOEhxChIDOwaHwmlp0SM',
    appId: '1:636514201124:ios:4d8a859dbc32d85566f2b1',
    messagingSenderId: '636514201124',
    projectId: 'pruebaintecap-5be09',
    storageBucket: 'pruebaintecap-5be09.appspot.com',
    iosBundleId: 'com.example.firebasePracticaIntecap',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDP1APAc24Qiz_R9swD-QhRdsU_Fz2Ksos',
    appId: '1:636514201124:web:9d05b912265d6a3c66f2b1',
    messagingSenderId: '636514201124',
    projectId: 'pruebaintecap-5be09',
    authDomain: 'pruebaintecap-5be09.firebaseapp.com',
    storageBucket: 'pruebaintecap-5be09.appspot.com',
    measurementId: 'G-H23SXL59JE',
  );
}
