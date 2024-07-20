import 'package:flutter/material.dart';
import 'package:hairsalon/view/screen/auth/signIn/signin_screen.dart';
import 'package:hairsalon/view/screen/landing/home_screen.dart';
import 'package:hairsalon/view/utils/app_widget/app_text_field.dart';
import 'package:hairsalon/view/utils/colors.dart';

import '../../../utils/size.dart';


class SignUpWidget {
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
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            AppTextField().appTextField("Full Name"),
            SizedBox(height:AppSizes(context: context).getHeight/60),
            AppTextField().appTextField("Password",icon: Icons.remove_red_eye_outlined,),
            SizedBox(height:AppSizes(context: context).getHeight/50),
            AppTextField().appTextField("Email"),
            SizedBox(height:AppSizes(context: context).getHeight/50),
            AppTextField().appTextField("Date of Birth",icon: Icons.date_range,),
            SizedBox(height:AppSizes(context: context).getHeight/50),
            AppTextField().appTextField("Your Address",icon: Icons.location_on,),
            SizedBox(height:AppSizes(context: context).getHeight/30),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor, // Button color
                minimumSize: Size(AppSizes(context: context).getWidth/2.5, AppSizes(context: context).getWidth/15), // Minimum width and height
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
              },
              child: Text("Sign Up", style: TextStyle(fontSize: semiBoldFontSize,color: Colors.white)),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have account! ?"),
                TextButton(onPressed: () {

                }, child: Text("Sign In",style: TextStyle(color:primaryColor ),))

              ],
            )
            // SizedBox(height:AppSizes(context: context).getHeight/40),
            // Row(
            //   children: [
            //     Expanded(child: Divider(thickness: 1,)),
            //     Expanded(child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Text("Or sign In With"),
            //     )),
            //     Expanded(child: Divider(thickness: 1,)),
            //   ],
            // ),
            //
            // SizedBox(height:AppSizes(context: context).getHeight/40),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     Image.asset("assets/images/twitter.png",height: 40,),
            //     Image.asset("assets/images/twitter.png",height: 40),
            //     Image.asset("assets/images/twitter.png",height: 40)
            //
            //   ],
            // ),
            // SizedBox(height:AppSizes(context: context).getHeight/40),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text("You don't have account !"),
            //     TextButton(onPressed: () {
            //
            //     }, child: Text("Sign Up",style: TextStyle(color:primaryColor ),))
            //
            //   ],
            // )

          ],
        ),
      ),
    );
  }
}