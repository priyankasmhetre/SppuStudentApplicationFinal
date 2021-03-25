import"package:flutter/material.dart";
import 'package:flutter/services.dart';

class Verify_student extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Verifystudent();
  }
}

class _Verifystudent extends State<Verify_student> {

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
            ), onPressed: () {  },
          ),
          title: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
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
                                  " Student Verify Page",
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
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12,),
              hintText: "Mail Address Register To University",
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
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12,),
              hintText: "Verify Otp which sent on mail address",
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
        onPressed: () => print("Submit"),
        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.white,
        child: Text(
          "Verify",
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
        onPressed: () => print("Reset"),
        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.white,
        child: Text(
          "Reset",
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



