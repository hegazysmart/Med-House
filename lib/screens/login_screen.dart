import 'package:flutter/material.dart';
import 'package:medhouse/screen/signup_choose_account.dart';
import 'package:medhouse/screen/taps_screen.dart';
import 'package:medhouse/widget/button.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController passward = new TextEditingController();
  TextEditingController email = new TextEditingController();
  String getPassward;
  String getEmail;

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
              'LOG IN',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'WELCOME TO  ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'MedHouse',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ]),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Email',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20.0,
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
              height: 20.0,
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
              cursorColor: Colors.white,
              controller: passward,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: '**********',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            CustomRaisedButton(
              child: Text(
                'CONTINUE',
                style: TextStyle(color: Color(0xFF0FB8B3), fontSize: 15),
              ),
              onPressed: () {
                setState(() {
                  getPassward = passward.text;
                  getEmail = email.text;
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Taps()));
                });
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: 60,
            ),
            TextButton(
            child: const Text('Forget Passward ? Click here ',
            style: TextStyle(color: Colors.red, fontSize: 15),),
            onPressed: () {/* ... */},
            ),
            CustomRaisedButton(
              child: Text(
                'Create New Account',
                style: TextStyle(color: Color(0xFF0FB8B3), fontSize: 15),
              ),
              color: Colors.blue[900],
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
            ),
            Text('$getEmail'),
          ],
        ),
      ),
    );
  }
}
