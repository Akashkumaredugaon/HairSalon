import 'package:flutter/material.dart';
import 'package:hairsalon/modals/hairStylistDetails/hair_stylist_details_modals.dart';
import 'package:hairsalon/view/screen/landing/discover/bestSpecialists/bestSpecialists_screen.dart';
import 'package:hairsalon/view/screen/landing/discover/notification/notification_screen.dart';
import 'package:hairsalon/view/screen/landing/discover/stylistDetails/stylistDetails_screen.dart';
import 'package:hairsalon/view/utils/colors.dart';
import 'package:hairsalon/view/utils/size.dart'; // Importing custom colors if defined

class DiscoverWidget {
  Widget aboutsDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hi Rohit, how are you?",
                style: TextStyle(
                  fontSize:semiBoldFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen(),));
                },
                icon: Icon(Icons.notification_important_rounded),
                color: primaryColor, // Assuming primaryColor is defined in your colors.dart
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [

              Icon(Icons.location_on),
              Text(
                "301 Dorty walks,chicago,Us.",
                style: TextStyle(fontSize: 16),
              ),

            ],
          ),

          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Find Salon specialist",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search_rounded),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(Icons.menu),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
         height: 240,
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Best Specialist",style: TextStyle(fontSize: semiBoldFontSize,fontWeight: FontWeight.bold),),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BestSpecialistScreen(),));
                  },
                    child: Text("View all",style: TextStyle(color:primaryColor,fontSize: normalFontSize,fontWeight: FontWeight.bold),)),

              ],
            ),
            SizedBox(
              height: 200,
              width: double.infinity,// Height for horizontal list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: HairStylistDetailsModals.stylists.length,
                itemBuilder: (context, index) {
                  var stylist = HairStylistDetailsModals.stylists[index];
                  return SizedBox(
                    width: 150,
                      height: 20,
                      child:Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)), // Adjust the radius as needed
                              child: Image.asset(
                                stylist.imageUrl,
                                width: double.infinity, // Adjust the width as needed
                                height: 100, // Adjust the height as needed
                                fit: BoxFit.cover, // Ensure the image covers the entire space
                              ),
                            ),
                            SizedBox(height: 8), // Add spacing between image and text
                            Text(
                              stylist.name,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                             ),
                            SizedBox(height: 4), // Add additional spacing if needed
                            Text(
                              stylist.stylistType.name,
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      )
                  );
                },
              ),
            ),
            // Add more widgets as needed
          ],
        ),
      ),
          SizedBox(height: 10),
          SizedBox(
            height: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Specile Offers",style: TextStyle(fontSize: semiBoldFontSize,fontWeight: FontWeight.bold),),
                    InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BestSpecialistScreen(),));
                        },
                        child: Text("View all",style: TextStyle(color:primaryColor,fontSize: normalFontSize,fontWeight: FontWeight.bold),)),

                  ],
                ),
                SizedBox(
                  height: 200,
                  width: double.infinity,// Height for horizontal list
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: HairStylistDetailsModals.stylists.length,
                    itemBuilder: (context, index) {
                      var stylist = HairStylistDetailsModals.stylists[index];
                      return SizedBox(
                          width: 200,
                          height: 20,
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)), // Adjust the radius as needed
                                  child: Image.asset(
                                    stylist.imageUrl,
                                    width: double.infinity, // Adjust the width as needed
                                    height: 100, // Adjust the height as needed
                                    fit: BoxFit.cover, // Ensure the image covers the entire space
                                  ),
                                ),
                                SizedBox(height: 8), // Add spacing between image and text
                                Text(
                                  stylist.name,
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 4), // Add additional spacing if needed
                                Text(
                                  stylist.stylistType.name,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          )

                      );
                    },
                  ),
                ),
                // Add more widgets as needed
              ],
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 240,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Salon Servieces",style: TextStyle(fontSize: semiBoldFontSize,fontWeight: FontWeight.bold),),
                    InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BestSpecialistScreen(),));
                        },
                        child: Text("View all",style: TextStyle(color:primaryColor,fontSize: normalFontSize,fontWeight: FontWeight.bold),)),

                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  width: double.infinity,// Height for horizontal list
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: HairStylistDetailsModals.stylists.length,
                    itemBuilder: (context, index) {
                      var stylist = HairStylistDetailsModals.stylists[index];
                      return SizedBox(
                          width: 150,
                          height: 20,
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),// Adjust the radius as needed
                                  child: Image.asset(
                                   stylist.imageUrl,
                                    width: double.infinity, // Adjust the width as needed
                                    height: 100, // Adjust the height as needed
                                    fit: BoxFit.cover, // Ensure the image covers the entire space
                                  ),
                                ),
                                SizedBox(height: 8), // Add spacing between image and text
                                Text(
                                  stylist.name,
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 4), // Add additional spacing if needed
                                Text(
                                  stylist.stylistType.name,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          )
                      );
                    },
                  ),
                ),
                // Add more widgets as needed
              ],
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Specile Offers",style: TextStyle(fontSize: semiBoldFontSize,fontWeight: FontWeight.bold),),
                    InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BestSpecialistScreen(),));
                        },
                        child: Text("View all",style: TextStyle(color:primaryColor,fontSize: normalFontSize,fontWeight: FontWeight.bold),)),

                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  width: double.infinity,// Height for horizontal list
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: HairStylistDetailsModals.stylists.length,
                    itemBuilder: (context, index) {
                      var stylist = HairStylistDetailsModals.stylists[index];
                      return SizedBox(
                          width: 200,
                          height: 20,
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                InkWell(
                                 onTap:(){
                                   Navigator.push(context,MaterialPageRoute(builder: (context) => StylistDetailsScreen(),));
                                 },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)), // Adjust the radius as needed
                                    child: Image.asset(
                                      stylist.imageUrl,
                                      width: double.infinity, // Adjust the width as needed
                                      height: 100, // Adjust the height as needed
                                      fit: BoxFit.cover, // Ensure the image covers the entire space
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8), // Add spacing between image and text
                                Text(
                                  stylist.name,
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 4), // Add additional spacing if needed
                                Text(
                                  stylist.stylistType.name,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          )

                      );
                    },
                  ),
                ),
                // Add more widgets as needed
              ],
            ),
          ),


      ],
      ),
    );
  }
}
