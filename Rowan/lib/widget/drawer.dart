import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medhouse/screen/Consultation_screen.dart';
import 'package:medhouse/screen/Vouchers_screen.dart';
import 'package:medhouse/screen/explore_screen.dart';
import 'package:medhouse/screen/favourite_item.dart';
import 'package:medhouse/screen/help_screen.dart';
import 'package:medhouse/screen/notification_screen.dart';
import 'package:medhouse/screen/taps_screen.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  String fullName;
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 25,
        color: Color(0xFF0FB8B3),
      ),
      title: Text(
        title,
        style: TextStyle(
            // fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    // String userName;
    //i define userName here to conver the erroe whitch occer when i but var in top ..variable must be final in stf ?? and we need

    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Color(0xFF0FB8B3),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'MedHouse',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                CloseButton(
                  color: Colors.white,
                ),
              ]),
              SizedBox(
                height: 20.0,
              ),
              Row(children: [
                Icon(
                  Icons.person,
                  size: 50.0,
                  color: Colors.white,
                ),
                Text(
                  '$fullName',
                  style: TextStyle(fontSize: 30.0, color: Colors.white),
                ),
                // Text(userName),
              ])
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Home', Icons.home, () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Taps()));
          }),
          buildListTile('Explore', Icons.search, () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ExploreScreen()));
          }),
          buildListTile('Notification', Icons.notification_important, () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => NotificationScreen()));
          }),
          buildListTile('favourite Item', Icons.star, () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => FavouriteScreen()));
          }),
          buildListTile('My Vouchers', Icons.card_giftcard, () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => VouchersScreen()));
          }),
          buildListTile('Consultation', Icons.admin_panel_settings_outlined,
              () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ConsultationScreen()));
          }),
          buildListTile('Help Center', Icons.help_center, () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HelpScreen()));
          }),
        ],
      ),
    );
  }
}
