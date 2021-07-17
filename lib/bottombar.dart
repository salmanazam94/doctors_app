import 'package:flutter/material.dart';
import 'package:city_wide/finddoctor.dart';
import 'package:city_wide/profile.dart';



/// This is the stateful widget that the main application instantiates.
class bottombar extends StatefulWidget {

  @override
  State<bottombar> createState() => _bottombarState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _bottombarState extends State<bottombar> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    doctorfull(),
    doctorfull(),
    profilfull(),
    // mainscreen(),
    // ingredientpage(),
    // mainscreen(),
    // mainscreen(),
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined,color: Colors.black,),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded,color: Colors.black,),
            label: '',
            backgroundColor: Colors.white,
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}