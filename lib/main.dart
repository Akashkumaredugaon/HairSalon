import 'package:flutter/material.dart';
import 'package:hairsalon/view/screen/intro/intro_screen.dart';
import 'package:hairsalon/view/screen/splash/splash_screen.dart';

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
      home: IntroScreen(),
    );
  }
}


