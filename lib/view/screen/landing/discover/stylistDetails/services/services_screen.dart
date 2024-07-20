import 'package:flutter/material.dart';
import 'package:hairsalon/view/screen/landing/discover/stylistDetails/services/services_widget.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var view=ServicesWidget();
    return Scaffold(
       body: SafeArea(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: ListView(
              children: [
                view.skinCareItem(context),
                view.offersPackageDetails(context),
                 view.popularServicesDetails(context),
                 view.bookAppointment(context),

              ],
           ),
         ),
       ),
    );
  }
}
