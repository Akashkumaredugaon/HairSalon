import 'package:flutter/material.dart';
import 'package:hairsalon/view/screen/landing/discover/discover_widget.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context)  {
    var view=DiscoverWidget();
    return Scaffold(
      body: SafeArea(
        child: ListView(
            children: [
              view.aboutsDetails(context)

            ],
        ),
      ),
    );
  }
}
