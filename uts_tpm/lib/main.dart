import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'config/colors.dart';
import 'pages/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: SplashScreen(
        seconds: 4,
        navigateAfterSeconds: const LoginPage(),
        title: Text(
          'Teknologi Pemrograman Mobile',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: base),
        ),
        backgroundColor: primary,
      ),
    );
  }
}
