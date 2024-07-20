import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hairsalon/view/utils/app_widget/app_size_box.dart';
import 'package:hairsalon/view/utils/colors.dart';
import 'package:hairsalon/view/utils/size.dart';

class NotificationWidget{

 Widget notificationDetails(BuildContext context){

   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: SizedBox(
       height: AppSizes(context: context).getHeight, // Use the height of the screen
       child: ListView.builder(
         shrinkWrap: true, // Allows the ListView to wrap its content
         physics: AlwaysScrollableScrollPhysics(), // Makes the ListView scrollable
         itemCount: 4,
         itemBuilder: (context, index) {
           return SizedBox(
             height: AppSizes(context: context).getHeight/6,
             child: Card(
                 child: Column(
                   children: [
                     Row(
                       children: [

                         Expanded(child: Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Image.asset("assets/images/hairstylist3.jpg"),
                         )),
                         Expanded(child: Column(children: [
                           Text("Sharma Shop"),
                           Text("Hi jackson.."),
                         ],)),
                         Expanded(child: Column(children: [
                           Text("Just"),
                          IconButton(onPressed: () {

                          }, icon: Icon(Icons.call,color: primaryColor,)),
                         ],))

                       ],
                     )
                   ],


              )
             ),
           );
         },
       ),
     ),
   );


 }
}