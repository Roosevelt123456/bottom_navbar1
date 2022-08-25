



import 'package:bottom_navbar1/Pages/Message.dart';
import 'package:bottom_navbar1/Pages/Person.dart';
import 'package:bottom_navbar1/Pages/Setting.dart';
import 'package:bottom_navbar1/Pages/UserHome.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //1.create an integer
  int _selectedIndex=0;

  //2.create method and pass the function
  void _navigateButtonBar(int index){
setState(() {
  _selectedIndex=index;
});
  }

  //create a list  for page changing

  final List<Widget>_pages=[
UserHome(),
    message(),
    setting(),
    person(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        //1. create the currentIdex and call the current integer here [currentIndex: _selectedIndex, or currentIndex: 0 or 1,2,3]
        currentIndex: _selectedIndex,
        //2.call the method here
        onTap: _navigateButtonBar,

        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Person'),

        ],
      ),
    );
  }
}
