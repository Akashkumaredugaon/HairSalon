import 'package:flutter/material.dart';
import 'package:hairsalon/view/utils/colors.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 1: Business', style: optionStyle,),
    Text('Index 1: Business', style: optionStyle,),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(

        // Color of selected item
        unselectedItemColor: Colors.grey, // Color of unselected items
        showUnselectedLabels: true,


        items: <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Notify',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            label: 'Apponitment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),


        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}