import 'package:flutter/material.dart';
import 'package:hairsalon/view/screen/landing/discover/stylistDetails/about/about_widget.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var view=AboutWidget();
    return Scaffold(
      body: view.aboutDetails(context),

    );
  }
}
