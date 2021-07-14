import"package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sppu_student_application/Screens/FetchSub_teacher.dart';
import 'package:sppu_student_application/Screens/FetchSubject.dart';
import 'package:sppu_student_application/Screens/TeacherHomeScreen.dart';
import 'package:sppu_student_application/Screens/teacher_login.dart';
import 'package:flutter_sms/flutter_sms.dart';
class sendMassage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return student_State();
  }
}

class student_State extends State<sendMassage> {

  String key;
  String sub1;
  final  db = FirebaseFirestore.instance;
  User user=FirebaseAuth.instance.currentUser;
List<String> recipents = ["7385592853","8412037908"];






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
                    builder: (context) => TeacherHomeScreen(),)
              );
            },
          ),
          title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 115, vertical: 80),
                child: Image.asset("assets/Images/logo.jpeg",
                  height: 30, alignment: Alignment.center,),
              ),

            ],

          ),

          backgroundColor: Color(0xcc5ac18e),


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
                          child: RaisedButton(

                           color:Color(0xff5ac18e),
                           /* color: Theme
                                .of(context)
                                .accentColor,*/
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Text("Send Sms",
                                style: Theme
                                    .of(context)
                                    .accentTextTheme
                                    .button),
                            onPressed: () {
                              _sendSMS("This is a test message!", recipents);
                            },
                             /*  onPressed:() async {
                        var result = await FirebaseFirestore.instance
                            .collection("Profile")
                            .where("MobNO")
                            .get();
                           print(result);
                        }*/


                          ),

                        ),
                      ),
                    ],
                  ),
                )
            )


        ));
  }

  void _sendSMS(String message, List<String> recipents) async {


    String _result = await sendSMS(message: message, recipients: recipents)
        .catchError((onError) {
      print(onError);
    });
    print(_result);
  }





}

