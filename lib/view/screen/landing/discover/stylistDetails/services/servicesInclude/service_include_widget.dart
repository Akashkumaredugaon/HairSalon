import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hairsalon/view/screen/landing/discover/stylistDetails/services/servicesInclude/service_include_screen.dart';
import 'package:hairsalon/view/screen/landing/discover/stylistDetails/services/services_screen.dart';
import 'package:hairsalon/view/utils/colors.dart';
import 'package:hairsalon/view/utils/size.dart';


class ServiceIncludeWidget {

  Container view() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: primaryColor,
      child: Image.asset(
        "assets/images/hairstylist1.jpg",fit: BoxFit.fill, // Adjust the height as needed
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
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("personlity Girl Event",style: TextStyle(fontWeight:FontWeight.bold,fontSize: semiBoldFontSize ),),

                Text("100 89"),

              ],

            ),

            Divider(thickness: 2,),
            SizedBox(height: AppSizes(context: context).getHeight/30,),
            Text("Time of Event",style: TextStyle(fontWeight:FontWeight.bold,fontSize: semiBoldFontSize )),
            SizedBox(height: AppSizes(context: context).getHeight/30,),
            Row(
              children: [
                Text("From"),
                Text("7:30 Am -june 10,2020"),

              ],
            ),
            SizedBox(height: AppSizes(context: context).getHeight/30,),
            Row(
              children: [
                Text("To"),
                Text("5:30 Am -june 25,2020"),

              ],
            ),
            SizedBox(height: AppSizes(context: context).getHeight/30,),
            Text("Services Include ",style: TextStyle(fontWeight:FontWeight.bold,fontSize: semiBoldFontSize )),


            LayoutBuilder(

              builder: (context, constraints) {
                double height = constraints.maxHeight;
                return ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: height
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 20,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Card(
                        child:Row(
                          children: [
                          ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                              child: Image.asset("assets/images/hairstylist.jpg",fit: BoxFit.fill,height: 80,)),

                            SizedBox(width: AppSizes(context: context).getWidth/25,),

                            Column(
                              children: [
                                Text("hair cutting",style: TextStyle(fontWeight:FontWeight.bold,fontSize: semiBoldFontSize )),
                                SizedBox(height: 10,),
                                Text("60 min 70")
                              ],
                            )
                          ],
                        ),
                      );
                  
                    },),
                );

              },

            ),

            SizedBox(
              height: AppSizes(context: context).getHeight/12,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ServicesScreen(),));

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor, // Button color
                // Minimum width and height
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                ),
                child: Text("Bokk Appontment", style: TextStyle(fontSize: semiBoldFontSize,color: Colors.white)),

              ),
            )



          ],
        ),
      ),
    );
  }
}