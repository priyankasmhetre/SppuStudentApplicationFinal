import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Admin_signup extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_Admin_signup();


}

// ignore: camel_case_types
class _Admin_signup extends State <Admin_signup> {
  final _firestore = Firestore.instance;
  String email;
  String password;
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
     child: Text("Register"),
    onPressed: (){
    FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email, password: password).
    then((signedInUser) {
    _firestore.collection("Users")
        .add({'email' : email, 'password' :password ,})
        .then((value){
    if(signedInUser != null){
    Navigator.pushNamed(context, '/Admin_signup');
    }
    })
        .catchError((e){
    print(e);
    });
    }
    )
        .catchError((e){
    print(e);
    });
    },
    ),

      FlatButton(
          child: Text("Logout"),
    onPressed: (){
            FirebaseAuth.instance.signOut()
    .then((value){

    })
    .catchError((e){
      print(e);
    });
    },
      ),
    ],
    ),
    );
    }
}

class Firestore {
  static var instance;
}
