import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hairsalon/view/utils/app_widget/app_size_box.dart';
import 'package:hairsalon/view/utils/colors.dart';
import 'package:hairsalon/view/utils/size.dart';

class AboutWidget{

  Widget aboutDetails(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          SizedBox(
            height: AppSizes(context: context).getHeight/4,
            child:Card(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [

                   Text("Information",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: semiBoldFontSize),),
                   Text("Time to stop imagining and take advatange of the unique proprties of aphhene Parage of the deelop and deliver game changing commerciale quility graphene based electronic device using contamination free technology Read more ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: normalFontSize),),

                 ],
              ),
            ),),
          ),
          SizedBox(height: AppSizes(context: context).getHeight/20,),
          SizedBox(
            height:AppSizes(context: context).getHeight/6,
            child:Card(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: semiBoldFontSize),),
                  Expanded(
                    child: Row(
                      children: [
                    
                        IconButton(onPressed: () {
                    
                        }, icon: Icon(Icons.call)),
                        Text("+1(325)1256 7592")
                    
                      ],
                    
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                    
                        IconButton(onPressed: () {
                    
                        }, icon: Icon(Icons.width_wide_outlined)),
                        Text("www.salon.com")
                    
                      ],
                    
                    ),
                  ),


                ],
              ),
            ),),
          ),
          SizedBox(height: AppSizes(context: context).getHeight/20,),
          SizedBox(
            height:AppSizes(context: context).getHeight/4,
            child:Card(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    'Opening Time',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Monday - Friday   7:30 - 11:30 AM'),
                  Text('Saturday         7:30 - 11:30 AM'),
                  Text('Sunday           7:30 - 11:30 AM'),

                ],
              ),
            ),),
          ),
          SizedBox(height: AppSizes(context: context).getHeight/20,),
          SizedBox(
            height:AppSizes(context: context).getHeight/8,
            child:Card(child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Address",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: semiBoldFontSize),),
                  Text("301 Dorthy Walk,chicago,us.",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold,fontSize: semiBoldFontSize),),
                ],
              ),
            ),),
          ),

        ],
      ),
    );

  }
}