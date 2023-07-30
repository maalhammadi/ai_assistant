import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA8e64B0QvoOhXdMvZmNWjnFq2hV1XsKNU",
            authDomain: "xyzaiassistant.firebaseapp.com",
            projectId: "xyzaiassistant",
            storageBucket: "xyzaiassistant.appspot.com",
            messagingSenderId: "472328531781",
            appId: "1:472328531781:web:0acb00eb1484a465d4182c",
            measurementId: "G-X9DP13GGV8"));
  } else {
    await Firebase.initializeApp();
  }
}
