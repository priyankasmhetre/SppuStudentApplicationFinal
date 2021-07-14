import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sppu_student_application/Screens/Admin_Registration.dart';
import 'package:sppu_student_application/Screens/HomeScreen.dart';
import 'package:sppu_student_application/Screens/HomeScreenAdmin.dart';
import 'package:sppu_student_application/Screens/PasswordResetAdmin.dart';
import 'package:sppu_student_application/Screens/PasswordReset_Teacher.dart';
import 'package:sppu_student_application/Screens/PasswordReset_student.dart';
import 'package:sppu_student_application/Screens/TeacherHomeScreen.dart';
import 'package:sppu_student_application/Screens/register.dart';
import 'package:sppu_student_application/Screens/teacher_Registration.dart';

class login_admin extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return admin_State();
  }
}






class admin_State extends State<login_admin> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _displayName = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isSuccess;
  String _userEmail;
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
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
                    builder: (context) => admin_Register())
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
          backgroundColor :  Color(0xcc5ac18e),
        ),
        body: Form(
          key: _formKey,
          child: AnnotatedRegion <SystemUiOverlayStyle>(
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
                                "Admin Login",
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
                            // buildName(),
                            SizedBox(
                              height: 20,
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
          ),
        )



    );






  }
  void _signin() async {
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      ))
          .user;

      if(user!=null){
        showAlertDialog(context);
      }
      /* if (user.emailVerified) {
        //await user.sendEmailVerification();
        print("unable to sign in");
      } else {
        print("sign in successfully");
      }*/
      Navigator.of(context)
          .push(
          MaterialPageRoute(
            builder: (context) => HomeScreenAdmin(),)
      );



      /*  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return HomeScreen(
          user: user,
        );
      }));*/
    } catch (e) {
      // Scaffold.of(context).showSnackBar(SnackBar(
      //  content: Text("Failed to sign in with Email & Password"),
      //));
      print(e);
      _emailController.text;
      _passwordController.text;
      showAlertDialog1(context);

    }
  }
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
  Widget  buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Email",
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
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(

              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12, top: 14),
              prefixIcon: Icon(
                Icons.email,
                color:  Color(0xff5ac18e),
              ),
              hintText: "Email",
              hintStyle: TextStyle(
                color: Colors.black,

              ),
            ),
          ),

        ),

      ],

    );
  }
  Widget  buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Name",
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
            controller:_displayName,
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
          child: TextFormField(
            controller: _passwordController,
            // keyboardType: TextInputType.emailAddress,

            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(

              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left:12,top:14),
              prefixIcon: Icon(
                Icons.lock,
                color:  Color(0xff5ac18e),

              ),

              hintText: "Password",
              hintStyle: TextStyle(
                color: Colors.black,

              ),
            ),
            obscureText: true,
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

        onPressed: () =>_pushPage(context, PasswordResetadmin()),
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
        onPressed: () async {
          if (_formKey.currentState.validate()) {
            _signin();
          }
        },
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
  void _pushPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => page),
    );
  }



}