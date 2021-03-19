import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";
import 'package:flutter/services.dart';
class Registration_student extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return student_State();
  }
}
Widget  buildName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      /*Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Name",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,

          ),
        ),
      ),*/
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
       //   keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 12, top: 14),
            hintText: "Name",
            hintStyle: TextStyle(
              color: Colors.black,

            ),
          ),
        ),

      ),

    ],

  );
}
Widget  buildId(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
     /* Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "University Id Of Student",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight:FontWeight.bold,

          ),
        ),
      ),*/
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
                offset: Offset(0,2),
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
            contentPadding: EdgeInsets.only(left:12,top:14),
            hintText: "University Id Of Student",
            hintStyle: TextStyle(
              color: Colors.black,

            ),
          ),
        ),

      ),

    ],

  );

}
Widget buildEmail  (){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
     /* Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "University Mail Adress",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight:FontWeight.bold,

          ),
        ),
      ),*/
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
                offset: Offset(0,2),
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
            contentPadding: EdgeInsets.only(left:12,top:14),
            hintText: "University Mail Adress",
            hintStyle: TextStyle(
              color: Colors.black,

            ),
          ),
        ),

      ),

    ],

  );

}
Widget buildDepartment  (){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      /*Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "University Mail Adress",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight:FontWeight.bold,

          ),
        ),
      ),*/
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
                offset: Offset(0,2),
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
            contentPadding: EdgeInsets.only(left:12,top:14),
            hintText: "select Department",
            hintStyle: TextStyle(
              color: Colors.black,

            ),
          ),
        ),

      ),

    ],

  );

}
Widget buildCourse(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      /*Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "University Mail Adress",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight:FontWeight.bold,

          ),
        ),
      ),*/
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
                offset: Offset(0,2),
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
            contentPadding: EdgeInsets.only(left:12,top:14),
            hintText: "Select Course",
            hintStyle: TextStyle(
              color: Colors.black,

            ),
          ),
        ),

      ),

    ],

  );

}
Widget Loginbutton()
{
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,

    child: RaisedButton(
      elevation: 5,
      onPressed: ()=>print("Submit"),
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
      color: Colors.white,
      child: Text(
        "Submit",
        style: TextStyle(
          color: Color(0xff5ac18e),
          fontSize: 18,
          fontWeight:FontWeight.bold,

        ),

      ),
    ),

  );
}
Widget forgotbutton()
{
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
      onPressed: ()=>print("forgot password pressed"),
      padding: EdgeInsets.only(right: 0),

      child: Text(
        "Already Register? Login Here",

        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight:FontWeight.bold,
        ),

      ),

    ),

  );
}

class student_State extends State<Registration_student> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
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
                     // physics: AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 120,
                      ),
                      child: Column(

                        children:<Widget> [
                          Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Text(
                              "Registration Page",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight:FontWeight.bold,

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
                          buildId(),

                          SizedBox(
                            height: 10,
                          ),
                          buildEmail(),
                          SizedBox(
                            height: 10,
                          ),
                          buildDepartment(),
                          SizedBox(
                            height: 10,
                          ),
                          buildCourse(),
                          Loginbutton(),
                          forgotbutton(),
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