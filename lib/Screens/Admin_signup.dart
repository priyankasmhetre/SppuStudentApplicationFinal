import 'package:flutter/material.dart';
class Admin_signup extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_Admin_signup();


}

class _Admin_signup extends State <Admin_signup> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title:Text("Admin Signup"),
   ),
    body: Center(
   child: Column(
    children : <Widget>[
      Text("SignUp"),
    RaisedButton(
    child: Text("Submit"),
    onPressed: (){
      Navigator.pop(context);
       }
      )
     ]
     )
    )
   );
  }
}