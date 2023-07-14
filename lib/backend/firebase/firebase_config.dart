import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBfAmSr_sZeoXIqsyIrFf6qwDyaH4oSk9o",
            authDomain: "uniapplyforme-aps.firebaseapp.com",
            projectId: "uniapplyforme-aps",
            storageBucket: "uniapplyforme-aps.appspot.com",
            messagingSenderId: "138796713868",
            appId: "1:138796713868:web:60c78d93d4f7b2c0b3b8a9",
            measurementId: "G-D5CR4QRE8L"));
  } else {
    await Firebase.initializeApp();
  }
}
