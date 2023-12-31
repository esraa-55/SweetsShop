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
    apiKey: 'AIzaSyC7Xn8kr8D-z5YYtjHJ0enCa7qhfp-wPVs',
    appId: '1:798909440357:web:33ff7e7ef5d885d7fb418c',
    messagingSenderId: '798909440357',
    projectId: 'sweetsshop-53501',
    authDomain: 'sweetsshop-53501.firebaseapp.com',
    storageBucket: 'sweetsshop-53501.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDwN_hRHcM0fWGJ1ZUea7jtJSz0PatZuWg',
    appId: '1:798909440357:android:d8d4b1dc29369163fb418c',
    messagingSenderId: '798909440357',
    projectId: 'sweetsshop-53501',
    storageBucket: 'sweetsshop-53501.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCwzrxlFO_MvlzM57ZYtYpdgN4lrDKQ1Tk',
    appId: '1:798909440357:ios:3b0c0a102f7ae432fb418c',
    messagingSenderId: '798909440357',
    projectId: 'sweetsshop-53501',
    storageBucket: 'sweetsshop-53501.appspot.com',
    iosClientId: '798909440357-ftan8mksdskjgjgkotdclhmauiklv743.apps.googleusercontent.com',
    iosBundleId: 'com.example.esraanewsweetmarket',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCwzrxlFO_MvlzM57ZYtYpdgN4lrDKQ1Tk',
    appId: '1:798909440357:ios:3b0c0a102f7ae432fb418c',
    messagingSenderId: '798909440357',
    projectId: 'sweetsshop-53501',
    storageBucket: 'sweetsshop-53501.appspot.com',
    iosClientId: '798909440357-ftan8mksdskjgjgkotdclhmauiklv743.apps.googleusercontent.com',
    iosBundleId: 'com.example.esraanewsweetmarket',
  );
}
