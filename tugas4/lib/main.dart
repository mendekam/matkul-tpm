import 'package:flutter/material.dart';

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
      title: 'Tugas 4 TPM',
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
