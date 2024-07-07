import 'package:flutter/material.dart';
import 'package:hairsalon/view/utils/colors.dart';


class AppButtonStyles {
  ButtonStyle appButton({Color bgColor = primaryColor}) =>
      ElevatedButton.styleFrom(backgroundColor: bgColor);
}