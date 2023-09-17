import 'package:flutter/material.dart';
import 'package:flutter_application_11/screens/home_screen.dart';
import 'package:flutter_application_11/screens/profile.dart';
import 'package:flutter_application_11/screens/proudcts_screen.dart';
import 'package:flutter_application_11/screens/search_screen.dart';

class MainScreenState extends StatefulWidget {
  const MainScreenState({super.key});

  @override
  State<MainScreenState> createState() => __MainScreenStateState();
}

class __MainScreenStateState extends State<MainScreenState> {
  int index=0;
  List<Widget> screen=[HomeScreen(),
  ProfilScreen(),
  SearchScreen(),
  ProudctsScreen()
  
  ];

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: screen[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          index=value;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.category),label: "Product"),
      ]),
    );
  }
}