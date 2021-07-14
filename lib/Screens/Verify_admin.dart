import"package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:email_auth/email_auth.dart';
import 'package:sppu_student_application/Screens/Admin_Profile.dart';
import 'package:sppu_student_application/Screens/Admin_Registration.dart';
import 'package:sppu_student_application/Screens/HomeScreen.dart';
import 'package:sppu_student_application/Screens/PasswordReset_student.dart';
import 'package:sppu_student_application/Screens/TeacherHomeScreen.dart';
import 'package:sppu_student_application/Screens/register.dart';
import 'package:sppu_student_application/Screens/teacher_Registration.dart';

class Verify_admin extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Verifyadmin();
  }
}

class _Verifyadmin extends State<Verify_admin> {
  final TextEditingController _emailController1=TextEditingController();
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _otpController=TextEditingController();
  void sendOTP() async{
    EmailAuth.sessionName="Text Session";
    var res=await EmailAuth.sendOtp(receiverMail:_emailController1.text);
    if(res) {
      showAlertDialog(context);
    }


  }
  void verifyOTP() async{
    var res= await EmailAuth.validate(receiverMail: _emailController1.text, userOTP:_otpController.text);
    if(res){
      showAlertDialog1(context);

      Navigator.of(context)
          .push(
          MaterialPageRoute(
              builder: (context) => adminProfile())
      );
    } else {
      showAlertDialog2(context);
    }

  }
  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      //title: Text("My title"),
      content: Text("OTP Send Successfully"),
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
      content: Text("Verified OTP Succeessfully"),
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




  showAlertDialog2(BuildContext context){
    AlertDialog alert = AlertDialog(
      //title: Text("My title"),
      content: Text("InValid OTP !!!  Reset OTP again, Please Tap on Below Reset Button"),
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
  showAlertDialog3(BuildContext context){
    AlertDialog alert = AlertDialog(
      //title: Text("My title"),
      content: Text("Please Enter Valid Email"),
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
            ), onPressed: () {
            Navigator.of(context)
                .push(
                MaterialPageRoute(
                    builder: (context) =>admin_Register())
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
                                  "Verify Admin",
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
                              SizedBox(
                                  height: 10
                              ),

                              SizedBox(
                                height: 10,
                              ),
                              buildEmail(),
                              SizedBox(
                                height: 10,
                              ),
                              buildOtp(),
                              SizedBox(
                                height: 10,
                              ),
                              Loginbutton(),
                              SizedBox(
                                height: 10,
                              ),ResetButtonInputElement()



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

  Widget buildEmail() {
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
            controller: _emailController1,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10.0),
              hintText: "Email Adress",
              suffixIcon: TextButton(

                child: Text("Send OTP",

                  style: TextStyle(
                    color: Colors.black87,
                  ),

                ),
                onPressed: ()=>{
                  sendOTP(),
                },
              ),
              hintStyle: TextStyle(
                color: Colors.black,

              ),
            ),
          ),

        ),

      ],

    );
  }

  Widget buildOtp() {
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
            controller: _otpController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12,),
              hintText: "Enter OTP",
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
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,

      // ignore: deprecated_member_use
      child: RaisedButton(
        elevation: 5,
        onPressed: () => {
          verifyOTP(),



        },
        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.white,
        child: Text(
          "Verify OTP",
          style: TextStyle(
            color: Color(0xff5ac18e),
            fontSize: 18,
            fontWeight: FontWeight.bold,

          ),

        ),


      ),

    );
  }

  Widget ResetButtonInputElement() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,

      // ignore: deprecated_member_use
      child: RaisedButton(
        elevation: 5,
        onPressed: () => {
          //sendOTP(),
          Navigator.of(context)
              .push(
              MaterialPageRoute(
                  builder: (context) =>Verify_admin())
          ),
        },
        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.white,
        child: Text(
          "Reset OTP",
          style: TextStyle(
            color: Color(0xff5ac18e),
            fontSize: 18,
            fontWeight: FontWeight.bold,

          ),

        ),
      ),

    );
  }

}



