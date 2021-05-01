import 'package:flutter/material.dart';
import 'package:medhouse/screen/Consultation_screen.dart';
import 'package:medhouse/screen/category_screen.dart';
import 'package:medhouse/screen/explore_screen.dart';
import 'package:medhouse/screen/offers_screen.dart';
import 'package:medhouse/widget/drawer.dart';


class Taps extends StatefulWidget {
  @override
  _TapsState createState() => _TapsState();
}

class _TapsState extends State<Taps> {
  
  final List<Map<String, Object>> _pages = [
    {
      'page':CategoryScreen(),
      'title':'Category',
    },
    {
      'page':ExploreScreen(),
      'title':'Explore',
    },
    {
      'page':OfferScreen(),
      'title':'Offers',
    },
    
    
  ];
  int _selectPageIndex = 0;

  void _selectPage(int value) {
    setState(() {
      _selectPageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart_rounded,color: Colors.white,), onPressed: () {  },
           )
            ],
        title: Text(_pages[_selectPageIndex]['title'],
        style: TextStyle(color: Colors.white),),
        backgroundColor:Color(0xFF0FB8B3),
      ),
      
      body: _pages[_selectPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(  
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Category"),            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Explore"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome),
            title: Text("Offers"),
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
