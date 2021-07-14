import"package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sppu_student_application/Screens/FetchSub_teacher.dart';
import 'package:sppu_student_application/Screens/FetchSubject.dart';
import 'package:sppu_student_application/Screens/HomeScreen.dart';
import 'package:sppu_student_application/Screens/TeacherHomeScreen.dart';
import 'package:sppu_student_application/Screens/teacher_login.dart';
class studentkey extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return student_State();
  }
}

class student_State extends State<studentkey> {
  final TextEditingController _displayName = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  PickedFile imageFile;
  ImagePicker _picker = ImagePicker();
  String key;
  String sub1;


  
  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      //title: Text("My title"),
      content: Text("Sign in Successfully"),
      actions: [

      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  showAlertDialog1(BuildContext context) {
    AlertDialog alert = AlertDialog(
      //title: Text("My title"),
      content: Text("Unable to sign in,Please Cheke Email and Password"),
      actions: [

      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery
        .of(context)
        .size;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white,

            ),
            onPressed: () {
              Navigator.of(context)
                  .push(
                  MaterialPageRoute(
                    builder: (context) => FetchSubject(),)
              );


            },
          ),
          title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 115,vertical: 80),
                child: Image.asset("assets/Images/logo.jpeg",
                  height: 30,alignment: Alignment.center,),
              ),

            ],

          ),

          backgroundColor:   Color(0xcc5ac18e),



        ),

        body: SingleChildScrollView(

            child: Container(
                height: _screenSize.height * 2.0,
                child: GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
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
                          // physics: AlwaysScrollableScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 120,
                          ),
                          child: Column(

                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(22.0),
                                child: Text(
                                  "Add Key",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,

                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 10,
                              ),
                              buildName(),



                              SizedBox(
                                  height: 10
                              ),
                            //  forgotbutton(),



                              Loginbutton(),


                            ],
                          ),

                        ),
                      ),
                    ],
                  ),
                )
            )


        ));
  }


  Widget buildName() {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        SizedBox(height: 10,),
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

            onChanged: (value) => setState(() {
              key=value;
            }),
            //   keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12,),
              hintText: "Enter Access Key",
              hintStyle: TextStyle(
                color: Colors.black,

              ),
            ),
          ),

        ),

      ],

    );
  }









  Widget Loginbutton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        elevation: 5,
        onPressed: (){

          Navigator.of(context)
              .push(
              MaterialPageRoute(
                  builder: (context) => HomeScreen())
          );
        },
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.white,

        child: Text(
          "Save",
          style: TextStyle(
            color: Color(0xff5ac18e),
            fontSize: 18,
            fontWeight: FontWeight.bold,

          ),

        ),
      ),

    );
  }
  Widget forgotbutton() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () =>
        {
          Navigator.of(context)
              .push(
              MaterialPageRoute(
                builder: (context) => TeacherHomeScreen(),)
          ),
        },


        padding: EdgeInsets.only(right: 0),

        child: Text(
          "Already add key? Go Homepage",

          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),

        ),

      ),

    );
  }

}

