import 'package:flutter/material.dart';
class SplashWidget{

  SafeArea aboutView(){

    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/splashicon.jpg")
          ],
        ),
      ),

    );

  }
}