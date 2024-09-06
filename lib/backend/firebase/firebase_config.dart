import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyACxLRGaatAcmkOa0bMey56zsW61YQ4akM",
            authDomain: "financeme-b9c9e.firebaseapp.com",
            projectId: "financeme-b9c9e",
            storageBucket: "financeme-b9c9e.appspot.com",
            messagingSenderId: "940364794223",
            appId: "1:940364794223:web:33eeecd9f17e403fa3c09a"));
  } else {
    await Firebase.initializeApp();
  }
}
