import 'package:flutter/material.dart';

class CategoryDetailes extends StatefulWidget {
  @override
  _CategoryDetailesState createState() => _CategoryDetailesState();
}

class _CategoryDetailesState extends State<CategoryDetailes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Center(
      child: Text('Welcome in CategoryDetailes screen'),
      ),
    );
  }
}