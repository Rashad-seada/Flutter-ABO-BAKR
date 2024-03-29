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
    apiKey: 'AIzaSyBih1AtR6SqrvfvX5R9WHPiQdPTPrrkMmI',
    appId: '1:970704007603:web:0e5299af95ff7b9c82dbc6',
    messagingSenderId: '970704007603',
    projectId: 'naturix-e6bf7',
    authDomain: 'naturix-e6bf7.firebaseapp.com',
    databaseURL: 'https://naturix-e6bf7-default-rtdb.firebaseio.com',
    storageBucket: 'naturix-e6bf7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDnAn63GlwVWYzhAzYObLQPfjmi_hP1SEI',
    appId: '1:970704007603:android:ae85661c512b9c7182dbc6',
    messagingSenderId: '970704007603',
    projectId: 'naturix-e6bf7',
    databaseURL: 'https://naturix-e6bf7-default-rtdb.firebaseio.com',
    storageBucket: 'naturix-e6bf7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCKFUVU5UenUJpGngWI17B4nRCs8xhQEWQ',
    appId: '1:970704007603:ios:cb9ddb33ed4093b082dbc6',
    messagingSenderId: '970704007603',
    projectId: 'naturix-e6bf7',
    databaseURL: 'https://naturix-e6bf7-default-rtdb.firebaseio.com',
    storageBucket: 'naturix-e6bf7.appspot.com',
    iosClientId: '970704007603-38h7lanr3soku18e4k3tcmce7lj6arg9.apps.googleusercontent.com',
    iosBundleId: 'com.example.smartSoft',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCKFUVU5UenUJpGngWI17B4nRCs8xhQEWQ',
    appId: '1:970704007603:ios:34219b657029e95d82dbc6',
    messagingSenderId: '970704007603',
    projectId: 'naturix-e6bf7',
    databaseURL: 'https://naturix-e6bf7-default-rtdb.firebaseio.com',
    storageBucket: 'naturix-e6bf7.appspot.com',
    iosClientId: '970704007603-f1fpmkkl57de9bk0s7r5jcis6l1g7tdj.apps.googleusercontent.com',
    iosBundleId: 'com.example.smartSoft.RunnerTests',
  );
}
