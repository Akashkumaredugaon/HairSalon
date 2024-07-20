import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hairsalon/view/screen/landing/discover/stylistDetails/services/servicesInclude/service_include_screen.dart';
import 'package:hairsalon/view/utils/colors.dart';
import 'package:hairsalon/view/utils/size.dart';
import '../../../../../../modals/hairStylistDetails/hair_stylist_details_modals.dart';
import '../stylistDetails_screen.dart';

class ServicesWidget{

  Widget skinCareItem(BuildContext context){

    return Container(
      height:AppSizes(context: context).getHeight/10,
      width:AppSizes(context: context).getWidth ,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset("assets/images/cosmetics.png",height:AppSizes(context: context).getHeight/25 ,),
                  Text("All"),
                ],
              ),
              SizedBox(width: AppSizes(context: context).getWidth/20,),
              Column(
                children: [
                Image.asset("assets/images/cosmetics.png",height:AppSizes(context: context).getHeight/25 ,),
                  Text("Skin Care"),
                ],
              ),
              SizedBox(width: AppSizes(context: context).getWidth/20,),
              Column(
                children: [
                  Image.asset("assets/images/cosmetics.png",height:AppSizes(context: context).getHeight/25 ,),
                  Text("Make Up"),
                ],
              ),
              SizedBox(width: AppSizes(context: context).getWidth/20,),
              Column(
                children: [
                  Image.asset("assets/images/cosmetics2.png",height:AppSizes(context: context).getHeight/25 ,),
                  Text("Hair Color"),
                ],
              ),
              SizedBox(width: AppSizes(context: context).getWidth/20,),
              Column(
                children: [
                  Image.asset("assets/images/hair-dye-brush.png",height:AppSizes(context: context).getHeight/25 ,),
                  Text("Skin Care"),
                ],
              ),
              SizedBox(width: AppSizes(context: context).getWidth/20,),
              Column(
                children: [
                  Image.asset("assets/images/cosmetics.png",height:AppSizes(context: context).getHeight/25 ,),
                  Text("Skin Care"),
                ],
              ),
              SizedBox(width: AppSizes(context: context).getWidth/20,),
              Column(
                children: [
                  Image.asset("assets/images/cosmetics.png",height:AppSizes(context: context).getHeight/25 ,),
                  Text("Skin Care"),
                ],
              ),
            ],
          )


        ],
      ),
    );

  }

  Widget offersPackageDetails(BuildContext context){

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height:AppSizes(context: context).getHeight/2.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Package & Offers",style: TextStyle(fontSize: semiBoldFontSize,fontWeight: FontWeight.bold),),

              ],
            ),
            SizedBox(height: 10),
            Container(

              height:AppSizes(context: context).getHeight/3,
              width:double.infinity,// Height for horizontal list
              child: ListView.builder(
                shrinkWrap: false,
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
                              "Personality Girl Evant",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),

                             Padding(
                               padding: const EdgeInsets.all(5.0),
                               child: Row(
                                children: [
                                  Text(
                                    "June 10 -jun 26",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    "  100",
                                    style: TextStyle(fontSize: 16),
                                  ),Text(
                                    "  89",
                                    style: TextStyle(fontSize: 16,color: primaryColor),
                                  ),
                                ],
                                                           ),
                             )// Add additional spacing if needed

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
    );

  }
  Widget popularServicesDetails(BuildContext context){

    return  SizedBox(
      height: AppSizes(context: context).getHeight/3,
      child:  ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) {
          return SizedBox(
            height:AppSizes(context: context).getHeight/7,
            child: Card(
              child: Row(

                 children: [
                   Expanded(
                     child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Image.asset("assets/images/hairstylist1.jpg",height: AppSizes(context: context).getHeight/10),
                         )
                       ],
                     ),
                   ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("hair Stylist"),
                           Text("45 Min 50"),
                         ],
                       ),
                     ),
                   ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                          Radio(
                              value: 2, groupValue: 3, onChanged: (value) {

                              },
                          )
                         ],
                       ),
                     ),
                   ),
                 ],
              ),
            ),
          );

        },),

    ) ;

  }

  Widget bookAppointment(BuildContext context){

    return  Container(
      height: 80,
      width: double.infinity,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceIncludeScreen(),));


          },
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor, // Button color
            minimumSize: Size(double.infinity, AppSizes(context: context).getHeight/12), // Minimum width and height
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
          ),
          child: Text("Bokk Appontment", style: TextStyle(fontSize: semiBoldFontSize,color: Colors.white)),

        ),
      ),
    );

    

  }



  // Widget choiceChipButton(){
  //
  //   List<String> options = ['Option 1', 'Option 2', 'Option 3'];
  //   int selectedOptionIndex = 0; // Initialize with the index of the default selected option
  //
  //     return  SizedBox(
  //       child: StatefulBuilder(
  //          builder: (context, setState) {
  //            return Wrap(
  //              children: List.generate(options.length, (index) {
  //                return ChoiceChip(
  //                    label: Text(options[index].toString()),
  //                    selected: selectedOptionIndex==options,
  //                    onSelected: (selected) {
  //                      setState(() {
  //                        selectedOptionIndex = selected ? index : -1;
  //
  //                      },);
  //
  //                  },
  //                );
  //
  //              },),
  //            );
  //
  //          },
  //        ),
  //     );
  //
  // }
}