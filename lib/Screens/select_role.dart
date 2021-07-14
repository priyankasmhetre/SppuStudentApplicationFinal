import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sppu_student_application/Screens/Admin_Registration.dart';
import 'package:sppu_student_application/Screens/HomeScreen.dart';

import 'package:sppu_student_application/Screens/login.dart';

import 'package:sppu_student_application/Screens/register.dart';
import 'package:sppu_student_application/Screens/teacher_Registration.dart';
import 'package:sppu_student_application/Screens/teacher_login.dart';
class select_role extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Selectrole();
  }
}

class _Selectrole extends State<select_role > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: new DecorationImage(
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.dstATop),
            image: AssetImage("assets/Images/Home_Page.jpeg"),

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
                  " Select Your Role",
                  style: GoogleFonts.aclonica(
                    color: Colors.black87,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
             buildadmin(),
              SizedBox(
                height: 20,
              ),
              buildteacher(),
              SizedBox(
                height: 20,
              ),
              buildstudent(),
              SizedBox(
                height: 20,
              ),
            //  buildguest(),


            ],
          ),

        ),
      ),

    );
  }
  Widget buildadmin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        SizedBox(height: 10,),

        Padding(
            padding: EdgeInsets.all(10.0),
            // ignore: deprecated_member_use

              child: FlatButton(
                onPressed: () => _pushPage(context,admin_Register()),
                padding: EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 10.0,
                ),
                color: Color(0xcc5ac18e),
                textColor: Colors.black,
                child: Text(
                  "Admin",
                  style: GoogleFonts.aclonica(
                    fontSize: 20.0,
                  ),
                ),

              ),
            )



      ],

    );
  }





  Widget buildstudent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        SizedBox(height: 10,),

        Padding(
            padding: EdgeInsets.all(10.0),
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () => _pushPage(context,register()),
              padding: EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 10.0,
              ),
              color: Color(0xcc5ac18e),
              textColor: Colors.black,
              child: Text(
                "Student",
                style: GoogleFonts.aclonica(
                  fontSize: 20.0,
                ),
              ),

            )

        )

      ],

    );
  }

  Widget buildteacher() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        SizedBox(height: 10,),

        Padding(
            padding: EdgeInsets.all(10.0),
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () => _pushPage(context, teacher_Register()),
              padding: EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 10.0,
              ),
              color: Color(0xcc5ac18e),
              textColor: Colors.black,
              child: Text(
                "Teacher",
                style: GoogleFonts.aclonica(
                  fontSize: 20.0,
                ),
              ),

            )

        )

      ],

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
              onPressed: () => _pushPage(context,login()),
               padding: EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 10.0,
            ),
              color:Color(0xcc5ac18e) ,
              textColor: Colors.black,
              child: Text(
                "Guest",
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






