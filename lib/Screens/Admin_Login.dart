import 'package:flutter/material.dart';
import 'Admin_signup.dart';
 class AdminLogin extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_AdminLogin();
 }

class _AdminLogin extends State<AdminLogin>{
   String _email;
   String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Login Page"),
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              Text(" Admin Login"),
              // ignore: deprecated_member_use
              RaisedButton(
                  child: Text("Create Account"),
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>Admin_signup(),
                        )
                    );
                  },
              )
            ]
          ),
        ),
     );
  }
}
