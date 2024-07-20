import 'package:flutter/material.dart';
import 'package:hairsalon/view/screen/landing/discover/stylistDetails/services/servicesInclude/service_include_widget.dart';

class ServiceIncludeScreen extends StatelessWidget {
  const ServiceIncludeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var view=ServiceIncludeWidget();
    return Scaffold(
      body:  Stack(
        children: [
          view.view(),
          Positioned(
            top: 260, // Adjust this value to move the second container up or down
            left: 0,
            right: 0,
            child: view.aboutView(context),
          ),
        ],
      ),
    );
  }
}
