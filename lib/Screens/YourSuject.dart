import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sppu_student_application/Screens/FetchSubject.dart';
import 'package:sppu_student_application/Screens/HomeScreen.dart';
import 'package:sppu_student_application/Screens/finalFetchSubject.dart';
import 'package:sppu_student_application/Screens/login.dart';

class YourSubject extends StatefulWidget {
  // final doc;
  // SubCategoery(this.doc);

  @override
  _SubCategoryClassState createState() => _SubCategoryClassState();
}

class _SubCategoryClassState extends State<YourSubject> {
  final db = FirebaseFirestore.instance;
  User user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,
          ), onPressed: () {
          Navigator.of(context)
              .push(
              MaterialPageRoute(
                  builder: (context) => FetchSubject())
          );
        },
        ),

        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              child: Text("My Subjects", style: GoogleFonts.aclonica(
                fontSize: 15.0,
              ),),
            ),
          ],
        ),


        backgroundColor: Color(0xcc5ac18e),
      ),
      body: Container(
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
                    "Your Subject",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight:FontWeight.bold,

                    ),
                  ),
                ),

           buildguest(),

              ],
            ),

          )

        ),
      );




  }
  Widget buildguest() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        SizedBox(height: 10,),

        Padding(
            padding: EdgeInsets.all(10.0),
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () => _pushPage(context,FetchSubject()),
              padding: EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 10.0,
              ),
              color:Color(0xcc5ac18e) ,
              textColor: Colors.black,
              child: Text(
                "Clik Here",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),

            )

        )

      ],

    );
  }
  void _pushPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => page),
    );
  }
}
