import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hairsalon/view/utils/app_widget/app_size_box.dart';
import 'package:hairsalon/view/utils/app_widget/app_text.dart';
import 'package:hairsalon/view/utils/size.dart';

import '../../utils/colors.dart';
import '../splash/splash_screen.dart';

class IntroWidget{

    PageController  pageController;
     int _currentIndex;
    BuildContext context;



    IntroWidget(this.context,this._currentIndex,this.pageController);



  void _onNext() {
    if (_currentIndex < 2) {
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      _navigateToHome();
    }
  }

  void _onSkip() {
    _navigateToHome();
  }

  void _navigateToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SplashScreen()),
    );
  }

  Widget buildPage({String? title, String? description, String? imagePath}) {
    return Column(
      children: [
        Container(
          height: AppSizes(context: context).getHeight/1.5,
          width: double.infinity,
          color: Colors.redAccent,
          child: Image.asset(imagePath!,fit: BoxFit.fill,),
        ),
        SizedBox(height:AppSizes(context: context).getHeight/40),
        Text(
          title.toString(), style: TextStyle(fontSize: boldFontSize, fontWeight: FontWeight.bold),
        ),
        SizedBox(height:AppSizes(context: context).getHeight/50),
        Text(
          description.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: semiBoldFontSize),
        ),
        SizedBox(height:AppSizes(context: context).getHeight/30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return buildDotIndicator(index == _currentIndex);
          }),
        ),
      ],
    );
  }

  Widget buildBottomSheet() {
    return Container(
      color: Colors.white,
      height: 50,
      // padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: _onSkip,
            child: Text("Skip",style: TextStyle(color: secondaryColor)),
          ),

          TextButton(
            onPressed: _onNext,
            child: Text("Next",style: TextStyle(color: secondaryColor),),
          ),
        ],
      ),
    );
  }
  Widget buildDotIndicator(bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      width: isActive ? 12.0 : 8.0,
      height: isActive ? 12.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? appbarColor : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
  Widget buildGetStartedButton() {
    return Container(
      color: Colors.white,
      height: 80,
      width: double.infinity,
      child: Center(
        child: ElevatedButton(
          onPressed: _navigateToHome,
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor, // Button color
            minimumSize: Size(AppSizes(context: context).getWidth/2.5, AppSizes(context: context).getWidth/15), // Minimum width and height
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
          ),
          child: Text("Get Started", style: TextStyle(fontSize: semiBoldFontSize,color: Colors.white)),

        ),
      ),
    );
  }
}