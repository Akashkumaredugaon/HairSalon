import 'package:flutter/material.dart';

// intro_screens.dart
import 'package:flutter/material.dart';
import 'package:hairsalon/view/screen/intro/intro_widget.dart';
import 'package:hairsalon/view/screen/splash/splash_screen.dart';
import 'package:hairsalon/view/utils/app_widget/app_size_box.dart';
import 'package:hairsalon/view/utils/colors.dart';
import 'package:hairsalon/view/utils/shape/app_shape.dart';
import 'package:hairsalon/view/utils/style/button_style.dart';

import '../../utils/size.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    var view=IntroWidget(context, _currentIndex, _pageController);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              children: [
               view.buildPage(
                  title: "Find barbershop nearby",
                  description: "Choose your hair style Choose your hair style Choose your hair style ",
                  imagePath: "assets/images/introimage.jpg",
                ),
                view.buildPage(
                  title: "Attractive Promotions",
                  description: "Choose your hair style Choose your hair style Choose your hair style",
                  imagePath: "assets/images/introimage.jpg",
                ),
                view.buildPage(
                  title: "The Professional Specialists",
                  description: "Choose your hair style Choose your hair style Choose your hair style",
                  imagePath: "assets/images/introimage.jpg",
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0), // Adjust padding as needed
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(3, (index) {
                          return view.buildDotIndicator(index == _currentIndex);
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ),

        ],
      ),
      bottomSheet: _currentIndex < 2 ? view.buildBottomSheet() : view.buildGetStartedButton(),
    );
  }



}






