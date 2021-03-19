import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";
import 'package:flutter/services.dart';
class login_student extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return student_State();
  }
}
Widget  buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Elligibillity No",
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
            hintText: "Elligibillity No",
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
      onPressed: ()=>print("forgot password pressed"),
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



class student_State extends State<login_student> {
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
                             "Login Page",
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