import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  Auth({Key key}) : super(key: key);
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  UserCredential userCredential;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Auth'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: "mmmmhegazysmart@gmail.com",
                          password: "mime@@##15ovbh!"
                      );
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        print('The password provided is too weak.');
                      } else if (e.code == 'email-already-in-use') {
                        print('The account already exists for that email.');
                      }
                    } catch (e) {
                      print(e);
                    }
                    print(userCredential.user);
                    User user = FirebaseAuth.instance.currentUser;
                    if (!user.emailVerified) {
                      await user.sendEmailVerification();
                      print('verify your mail, please!');
                    }
                    else{
                      signIn();
                    }
                  },
                  child: Text("Register Demo"),
                ))
          ],
        ));
  }
  signIn(){
    print('signed in');
  }
}





