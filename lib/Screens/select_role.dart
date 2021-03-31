import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sppu_student_application/Screens/Admin_Login.dart';
import 'package:sppu_student_application/Screens/login_student.dart';
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
            image: new NetworkImage(
              'Assets/Images/uni_image.jpeg',
            ),
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
                  style: TextStyle(
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
            buildguest(),




            ],
          ),

        ),
      ),

    );
  }
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
       onPressed: ()
  {
  BuildContext context;
  Navigator.push(context, MaterialPageRoute(
  builder: (context) => AdminLogin(),
  ),
  );
  },
         padding: EdgeInsets.symmetric(
           horizontal: 25.0,
           vertical: 10.0,
       ),
       color:Colors.greenAccent ,
      textColor: Colors.black,
       child: Text(
     "Admin",
      style: TextStyle(
     fontSize: 20.0,
  ),
  ),

         )

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
            onPressed: ()
            {
              BuildContext context;
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => login_student(),
              ),
              );
            },
            padding: EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 10.0,
            ),
            color:Colors.greenAccent ,
            textColor: Colors.black,
            child: Text(
              "Student",
              style: TextStyle(
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
            onPressed: ()
            {
              BuildContext context;
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>login_teacher(),
              ),
              );
            },
            padding: EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 10.0,
            ),
            color:Colors.greenAccent ,
            textColor: Colors.black,
            child: Text(
              "Teacher",
              style: TextStyle(
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
            onPressed: ()
            {
              BuildContext context;
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => login_student(),
              ),
              );
            },
            padding: EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 10.0,
            ),
            color:Colors.greenAccent ,
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






