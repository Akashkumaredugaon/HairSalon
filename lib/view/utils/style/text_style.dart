import 'package:flutter/material.dart';
import 'package:hairsalon/view/utils/colors.dart';
class AppTextStyles {
  normalTextStyle() =>
      TextStyle(color: normalTextColor, fontSize:2.0 );

  TextStyle ?boldTextStyle({Color textColor = boldTextColor, double fontSize = 20.0}) =>
      TextStyle(color: textColor, fontSize: fontSize);
}