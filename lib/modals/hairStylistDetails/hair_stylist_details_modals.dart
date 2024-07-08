import 'package:flutter/material.dart';

// Enum to represent different types of stylist work
enum StylistType {
  Haircut,
  Coloring,
  Styling,
  Extensions,
  Barber,
  Other,
}

class HairStylistDetailsModals {
  String name;
  Icon icon;
  String imageUrl;
  StylistType stylistType;

  HairStylistDetailsModals(this.icon, this.name, this.stylistType, {required this.imageUrl});


  static List<HairStylistDetailsModals> stylists = [
    HairStylistDetailsModals(
      Icon(Icons.person),
      'John Doe',
      StylistType.Haircut,
      imageUrl: 'https://example.com/john_doe_profile_pic.jpg',
    ),
    HairStylistDetailsModals(
      Icon(Icons.person_outline),
      'Jane Smith',
      StylistType.Coloring,
      imageUrl: 'https://example.com/jane_smith_profile_pic.jpg',
    ),
  ];
}
