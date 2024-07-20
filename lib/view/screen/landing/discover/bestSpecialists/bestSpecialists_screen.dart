import 'package:flutter/material.dart';
import 'package:hairsalon/modals/hairStylistDetails/hair_stylist_details_modals.dart';
import 'package:hairsalon/view/screen/landing/discover/discover_screen.dart';
import 'package:hairsalon/view/screen/landing/home_screen.dart';
import 'package:hairsalon/view/utils/size.dart';

class BestSpecialistScreen extends StatefulWidget {
  const BestSpecialistScreen({super.key});

  @override
  State<BestSpecialistScreen> createState() => _BestSpecialistScreenState();
}

class _BestSpecialistScreenState extends State<BestSpecialistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Best Specialists"),
         leading: IconButton(
            icon: Icon(Icons.arrow_back),
           onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
           },),
        

      ),
      body: SafeArea(
        child: GridView.builder(
          itemCount: HairStylistDetailsModals.stylists.length,
          itemBuilder: (context, index) {
            var stylist = HairStylistDetailsModals.stylists[index];
            return Card(
              color: Colors.white,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)), // Adjust the radius as needed
                    child: Image.asset(
                      stylist.imageUrl,
                      width: double.infinity, // Adjust the width as needed
                      height: AppSizes(context: context).getHeight/10, // Adjust the height as needed
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
                    style: TextStyle(fontSize: semiBoldFontSize),
                  ),
                ],
              ),
            );

          }, gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

         ),
      ),
    );
  }
}
