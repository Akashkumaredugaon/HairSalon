import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hairsalon/view/screen/splash/splash_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 4), () {

    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var view=SplashWidget();
    return Scaffold(
      body: view.aboutView(),
    );
  }
}
