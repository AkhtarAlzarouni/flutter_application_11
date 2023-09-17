import 'package:flutter/material.dart';
import 'package:flutter_application_11/screens/main_screen.dart';

import 'package:flutter_application_11/screens/proudcts_screen.dart';



class AppRoot
 extends StatelessWidget {
  const AppRoot
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreenState(),
      
      
      

    );
  }
}