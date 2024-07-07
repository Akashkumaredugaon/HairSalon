import 'package:flutter/material.dart';
import 'package:hairsalon/view/utils/colors.dart';

class AppTextField{

 TextField appTextField(String? hintText){
  return TextField(
      decoration: InputDecoration(hintText: hintText),
  );
  }

}