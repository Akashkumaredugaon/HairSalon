import 'package:flutter/material.dart';
import 'package:hairsalon/view/screen/landing/discover/notification/notification_widget.dart';
import 'package:hairsalon/view/screen/landing/home_screen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var view=NotificationWidget();
    return Scaffold(
      appBar: AppBar(
        title:Text("Notification"),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));

          }, icon:Icon(Icons.close))
        ],
      ),
      body: SafeArea(
         child: ListView(
           children: [

             view.notificationDetails(context)

           ],
         ),
      ),

    );
  }
}
