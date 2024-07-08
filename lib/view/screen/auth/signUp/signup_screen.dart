import 'package:flutter/material.dart';
import 'package:hairsalon/view/screen/auth/signUp/signup_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    var signUpClass = SignUpWidget();
    return Scaffold(
      body: Stack(
        children: [
          signUpClass.view(),
          Positioned(
            top: 260, // Adjust this value to move the second container up or down
            left: 0,
            right: 0,
            child: signUpClass.aboutView(context),
          ),
        ],
      ),
    );
  }
}
