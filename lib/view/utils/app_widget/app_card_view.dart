import 'package:flutter/material.dart';

class AppCardView{

 Card appCardView(Widget? child,ShapeBorder? shape){
    return Card(
      shape: shape,
      child:child ,
    );
  }
}