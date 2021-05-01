import 'package:flutter/material.dart';
import 'package:medhouse/widget/button.dart';

class BusinessAccount extends StatefulWidget {
  @override
  _BusinessAccountState createState() => _BusinessAccountState();
}

class _BusinessAccountState extends State<BusinessAccount> {
  TextEditingController fullName = new TextEditingController();
  TextEditingController passward = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController location = new TextEditingController();
  TextEditingController specialist = new TextEditingController();
  String getFullName;
  String getPassward;
  String getEmail;
  String getLocation;
  String getSpecialist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0FB8B3),
      ),
      body: buildContent(context),
      backgroundColor: Color(0xFF0FB8B3),
    );
  }

  Widget buildContent(context) {
    return Container(
      padding: EdgeInsets.all(60.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Create an Account',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Wrap(children: [
              Text(
                'MedHouse helps you to show your pharmaceutical  products online.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ]),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Full Name',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              obscureText: false,
              controller: fullName,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'John Doe',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Email',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              obscureText: false,
              controller: email,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Phone or Email',
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Passward',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              obscureText: true,
              controller: passward,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: '********',
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Personal Information',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Location',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              obscureText: false,
              controller: location,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Bolkly,Alex,Egypt',
              ),
            ),
            Text(
              'Specialist',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              obscureText: false,
              controller: specialist,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Dentist',
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            CustomRaisedButton(
              child: Text(
                'CONTINUE',
                style: TextStyle(color: Color(0xFF0FB8B3), fontSize: 15),
              ),
              onPressed: () {
                setState(() {
                  getFullName = fullName.text;
                  getPassward = passward.text;
                  getEmail = email.text;
                  getSpecialist = specialist.text;
                  getLocation = location.text;
                });
              },
            ),           
             Text('$getFullName'),
          ],
        ),
      ),
    );
  }
}
