import 'package:flutter/material.dart';
import 'package:hairsalon/view/screen/auth/signin_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var signInClass = SignInWidget();
    return Scaffold(
      body: Stack(
        children: [
          signInClass.view(),
          Positioned(
            top: 230, // Adjust this value to move the second container up or down
            left: 0,
            right: 0,
            child: signInClass.aboutView(context),
          ),
        ],
      ),
    );
  }
}


