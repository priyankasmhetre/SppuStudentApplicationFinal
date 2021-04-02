import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'Admin_signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
 class AdminLogin extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_AdminLogin();
 }

class _AdminLogin extends State<AdminLogin>{
   String email;
   String password;
   GoogleSignIn googleAuth = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children : <Widget>[
            TextField(
              decoration:InputDecoration(labelText: "Email"),
              onChanged : (value){
                setState(() {
                  email = value;
                });
              },
            ),
            TextField(
              decoration:InputDecoration(labelText: "Password"),
              onChanged : (value){
                setState(() {
                  password = value;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            // ignore: deprecated_member_use
              FlatButton(
    child:Text("Sign In"),
    onPressed: (){
    FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email, password: password)
        .then((FirebaseUser) {
    Navigator.of(context).pushNamed('/Admin_Signup');
    })
        .catchError((e){
    print(e);
    });
    },
    ),
    SizedBox(
    height: 10,
    ),
    FlatButton(
    child:Text("Sign Up"),
    onPressed: (){
    Navigator.pushNamed(context, '/Admin_signup');
    }),
    ],
    )
    );
  }
 }
