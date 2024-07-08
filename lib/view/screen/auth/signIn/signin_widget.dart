import 'package:flutter/material.dart';
import 'package:hairsalon/view/screen/auth/signUp/signup_screen.dart';
import 'package:hairsalon/view/utils/app_widget/app_text_field.dart';
import 'package:hairsalon/view/utils/colors.dart';

import '../../../utils/size.dart';


class SignInWidget {

  Container view() {
    return Container(
      height: double.infinity,
      color: primaryColor,
      child: Stack(
        children: [
          Positioned(
            top: 80, // Adjust this value to position the image as needed
            left: 0, // Adjust this value to position the image as needed
            right: 0, // Adjust this value to position the image as needed
            child: Image.asset(
              "assets/images/splashicon.jpg",color: Colors.white,
              height: 150, // Adjust the height as needed
            ),
          ),
        ],
      ),
    );
  }

  Container aboutView(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            AppTextField().appTextField("Enter the email"),
            SizedBox(height:AppSizes(context: context).getHeight/40),
            AppTextField().appTextField("Enter the password",icon: Icons.remove_red_eye_outlined),
            SizedBox(height:AppSizes(context: context).getHeight/40),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("forgote Password ?")
              ],

            ),
            SizedBox(height:AppSizes(context: context).getHeight/40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor, // Button color
                minimumSize: Size(AppSizes(context: context).getWidth/2.5, AppSizes(context: context).getWidth/15), // Minimum width and height
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen(),));
              },
              child: Text("Sign Up", style: TextStyle(fontSize: semiBoldFontSize,color: Colors.white)),

            ),
            SizedBox(height:AppSizes(context: context).getHeight/40),
            Row(
              children: [
                Expanded(child: Divider(thickness: 1,)),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Or sign In With"),
                )),
                Expanded(
                    child: Divider(thickness: 1,)),
              ],
            ),

            SizedBox(height:AppSizes(context: context).getHeight/40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/twitter.png",height: 40,),
                Image.asset("assets/images/twitter.png",height: 40),
                Image.asset("assets/images/twitter.png",height: 40)

              ],
            ),
            SizedBox(height:AppSizes(context: context).getHeight/40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You don't have account !"),
                TextButton(onPressed: () {

                }, child: Text("Sign Up",style: TextStyle(color:primaryColor ),))

              ],
            )

          ],
        ),
      ),
    );
  }
}