import 'package:flutter/material.dart';
import 'package:medhouse/screen/category_screen.dart';
import 'package:medhouse/screen/taps_screen.dart';
import 'package:medhouse/screen/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MedHouse',
      theme: new ThemeData(
      scaffoldBackgroundColor: const Color(0xFF0FB8B3),
      primaryColor: Color(0xFF0FB8B3),
      accentColor: Colors.white
      ),
          
      home: WelcomeScreen(),
    );
  }
}

