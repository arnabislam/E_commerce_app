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
    apiKey: 'AIzaSyAzqUa5Kaho0ZNO8Gh69QQAW-BBbxJbjOs',
    appId: '1:205811706507:web:5becfe20fa2002331a428e',
    messagingSenderId: '205811706507',
    projectId: 'new-ecommerce-d3df4',
    authDomain: 'new-ecommerce-d3df4.firebaseapp.com',
    storageBucket: 'new-ecommerce-d3df4.appspot.com',
    measurementId: 'G-0C6TJBEEJC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD7v-FOWD5uzpeauI8QIPJhvZqAwtN-UiQ',
    appId: '1:205811706507:android:080efa95117a62f31a428e',
    messagingSenderId: '205811706507',
    projectId: 'new-ecommerce-d3df4',
    storageBucket: 'new-ecommerce-d3df4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAcjhgDLjGzXI4OG9TT1ZGpvzFhAfrel_c',
    appId: '1:205811706507:ios:b21ddf30944a42421a428e',
    messagingSenderId: '205811706507',
    projectId: 'new-ecommerce-d3df4',
    storageBucket: 'new-ecommerce-d3df4.appspot.com',
    androidClientId: '205811706507-daeq50abtstca1sncimr9na43a6shtbo.apps.googleusercontent.com',
    iosClientId: '205811706507-0tlqgn0902jhdn0vkdh4m735kqaidbi5.apps.googleusercontent.com',
    iosBundleId: 'sheikhit.net.eCommerce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAcjhgDLjGzXI4OG9TT1ZGpvzFhAfrel_c',
    appId: '1:205811706507:ios:b21ddf30944a42421a428e',
    messagingSenderId: '205811706507',
    projectId: 'new-ecommerce-d3df4',
    storageBucket: 'new-ecommerce-d3df4.appspot.com',
    androidClientId: '205811706507-daeq50abtstca1sncimr9na43a6shtbo.apps.googleusercontent.com',
    iosClientId: '205811706507-0tlqgn0902jhdn0vkdh4m735kqaidbi5.apps.googleusercontent.com',
    iosBundleId: 'sheikhit.net.eCommerce',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAzqUa5Kaho0ZNO8Gh69QQAW-BBbxJbjOs',
    appId: '1:205811706507:web:69d726858e2b09141a428e',
    messagingSenderId: '205811706507',
    projectId: 'new-ecommerce-d3df4',
    authDomain: 'new-ecommerce-d3df4.firebaseapp.com',
    storageBucket: 'new-ecommerce-d3df4.appspot.com',
    measurementId: 'G-0H0MXBKF9V',
  );

}