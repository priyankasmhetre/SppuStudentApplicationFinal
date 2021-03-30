import 'package:flutter/material.dart';
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
              buildAdmin(),
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
Widget buildAdmin() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      SizedBox(height: 10,),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Color(0x665ac18e),
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
          //   keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 12,),
            hintText: "Admin",
            hintStyle: TextStyle(
              color: Colors.black,

            ),
          ),
        ),

      ),

    ],

  );
}
Widget buildstudent() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      SizedBox(height: 10,),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Color(0x665ac18e),
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
          //   keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 12,),
            hintText: "Student",
            hintStyle: TextStyle(
              color: Colors.black,

            ),
          ),
        ),

      ),

    ],

  );
}
Widget buildteacher() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      SizedBox(height: 10,),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Color(0x665ac18e),
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
          //   keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 12,),
            hintText: "Teacher",
            hintStyle: TextStyle(
              color: Colors.black,

            ),
          ),
        ),

      ),

    ],

  );
}
Widget buildguest() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      SizedBox(height: 10,),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Color(0x665ac18e),
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
          //   keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 12,),
            hintText: "Guest",
            hintStyle: TextStyle(
              color: Colors.black,

            ),
          ),
        ),

      ),

    ],

  );
}





