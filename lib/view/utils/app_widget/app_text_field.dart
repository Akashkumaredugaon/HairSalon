import 'package:flutter/material.dart';
import 'package:hairsalon/view/utils/colors.dart';

class AppTextField{

 TextField appTextField(String? hintText, {IconData? icon}){
 return  TextField(
     decoration: InputDecoration(
       fillColor: primaryColor,
       hintText: hintText,
       suffixIcon: Icon(icon,color: primaryColor,),
       enabledBorder: UnderlineInputBorder(
         borderSide: BorderSide(color: secondaryColor), // Line color when enabled
       ),
        focusedBorder: UnderlineInputBorder(
         borderSide: BorderSide(color: primaryColor, width: 2.0), // Line color when focused
       ),
     ),
   );
  }

}