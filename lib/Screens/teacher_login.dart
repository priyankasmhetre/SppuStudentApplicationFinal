import 'dart:js';

import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:sppu_student_application/Screens/PasswordReset_student.dart';
import 'package:sppu_student_application/Screens/Registration_student.dart';
import 'package:sppu_student_application/Screens/teacher_Registration.dart';
class login_teacher extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return teacher_state();
  }
}
Widget  buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Mail Address Register To University",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,

          ),
        ),
      ),
      SizedBox(height: 15,),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                offset: Offset(0, 2),
              )
            ]
        ),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 12, top: 14),
            hintText: "Mail Address Register To University",
            hintStyle: TextStyle(
              color: Colors.black,

            ),
          ),
        ),

      ),

    ],

  );
}
Widget  buildPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Password",
          style: TextStyle(
            color: Colors.white,
            fontSize:20,
            fontWeight:FontWeight.bold,

          ),
        ),
      ),
      SizedBox(height: 15,),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                offset: Offset(0,2),
              )
            ]
        ),
        height: 60,
        child: TextField(
          // keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left:12,top:14),
            hintText: "Password",
            hintStyle: TextStyle(
              color: Colors.black,

            ),
          ),
        ),

      ),

    ],

  );

}
Widget forgotbutton()
{
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(






      padding: EdgeInsets.only(right: 0),

      child: Text(
        "forgot password",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight:FontWeight.bold,
        ),
      ),
    ),

  );
}

Widget Loginbutton()
{
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,

    child: RaisedButton(
      elevation: 5,
      onPressed: ()=>print("Login"),
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
      color: Colors.white,
      child: Text(
        "Login",
        style: TextStyle(
          color: Color(0xff5ac18e),
          fontSize: 18,
          fontWeight:FontWeight.bold,

        ),

      ),
    ),

  );
}



class teacher_state extends State<login_teacher> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white,
            ), onPressed: () {
            Navigator.of(context)
                .push(
                MaterialPageRoute(
                  builder: (context) => teacher_Registration(),)
            );

          },
          ),
          title: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                child: Image.asset("assets/Images/logo.jpeg",
                  height: 30,alignment: Alignment.center,),
              ),
            ],
          ),
          backgroundColor :  Color(0xcc5ac18e),
        ),
        body: AnnotatedRegion <SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
              child: Stack(
                children:<Widget> [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin:Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0x665ac18e),
                            Color(0x995ac18e),
                            Color(0xcc5ac18e),
                            Color(0xff5ac18e),
                          ]
                      ),
                    ),
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),

                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 120,
                      ),
                      child: Column(

                        children:<Widget> [
                          Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Text(
                              " Teacher Login Page",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight:FontWeight.bold,

                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          buildEmail(),
                          SizedBox(
                            height: 20,
                          ),
                          buildPassword(),
                          forgotbutton(),
                          SizedBox(
                            height: 10,
                          ),
                          Loginbutton(),
                        ],
                      ),

                    ),
                  ),
                ],
              ),
            )
        )



    );






  }
}