import 'package:flutter/material.dart';
import 'package:my_port/portfolios/homePage.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDS2jRKKJdnOLSthsZpotL0V_JIoKz1Bto",
      authDomain: "ct---pro.firebaseapp.com",
      projectId: "ct---pro",
      storageBucket: "ct---pro.appspot.com",
      messagingSenderId: "1009818783243",
      appId: "1:1009818783243:web:e9856bc8e66c50da87410e",
      measurementId: "G-VERKFMXHX8",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gokul Krishna',
      home:  MyHomePage(),
    );
  }
}
