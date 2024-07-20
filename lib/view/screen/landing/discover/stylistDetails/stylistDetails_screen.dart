import 'package:flutter/material.dart';
import 'package:hairsalon/view/screen/landing/discover/discover_screen.dart';
import 'package:hairsalon/view/screen/landing/discover/stylistDetails/about/about_screen.dart';
import 'package:hairsalon/view/screen/landing/discover/stylistDetails/gallery/gallery_screen.dart';
import 'package:hairsalon/view/screen/landing/discover/stylistDetails/services/services_screen.dart';
import 'package:hairsalon/view/utils/colors.dart';
import 'package:hairsalon/view/utils/size.dart';

class StylistDetailsScreen extends StatefulWidget {
  const StylistDetailsScreen({super.key});

  @override
  State<StylistDetailsScreen> createState() => _StylistDetailsScreenState();
}

class _StylistDetailsScreenState extends State<StylistDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

        length: 4,
        child:  Scaffold(
          backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: primaryColor,
            expandedHeight: AppSizes(context: context).getHeight/2,

            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/hairstylist4.jpg",fit: BoxFit.fill,),
            ),

            leading: IconButton(
              onPressed:() {

              },
              icon: Icon(Icons.arrow_back,color: Colors.white,),),

            actions: [

              IconButton(onPressed: () {

              }, icon:Icon(Icons.call,color: Colors.white,)),
              IconButton(onPressed: () {

              }, icon:Icon(Icons.message,color: Colors.white,))


            ],
            bottom:TabBar(
              labelColor: Colors.white,
              unselectedLabelStyle: TextStyle(color: Colors.white),
              indicatorColor: primaryColor,
              tabs: [
                Tab(
                  text: "About",

                ),
                Tab(
                  text: "Gallery",
                ),
                Tab(
                  text: "Service",
                ),
                Tab(
                  text: "Review",
                ),
              ],
            ),

          ),

          SliverFillRemaining(
            child:TabBarView(
               children: [
                 AboutScreen(),
                 GalleryScreen(),
                 ServicesScreen(),
                 Center(child: Text("Tab 4 Content")),
               ],
            ) ,
          )


        ],
      ),

    )
    );
  }
}


