import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyClJa_q_Cr7bAIyyQsBRvSfRdKRJrm-05Y",
            authDomain: "k2board.firebaseapp.com",
            projectId: "k2board",
            storageBucket: "k2board.appspot.com",
            messagingSenderId: "610848321920",
            appId: "1:610848321920:web:9a4cae54a2221c1b279165"));
  } else {
    await Firebase.initializeApp();
  }
}
