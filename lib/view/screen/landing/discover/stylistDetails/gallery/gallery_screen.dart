import 'package:flutter/material.dart';

import '../../../../../../modals/hairStylistDetails/hair_stylist_details_modals.dart';
import '../../../../../utils/size.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: GridView.builder(
          itemCount: HairStylistDetailsModals.stylists.length,
          itemBuilder: (context, index) {
            var stylist = HairStylistDetailsModals.stylists[index];
            return Card(
              color: Colors.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                child: Image.asset(
                  stylist.imageUrl,
                  width: double.infinity, // Adjust the width as needed
                  height: AppSizes(context: context).getHeight/10, // Adjust the height as needed
                  fit: BoxFit.cover, // Ensure the image covers the entire space
                ),
              ),
            );

          }, gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

        ),
      ) ,
    );
  }
}
