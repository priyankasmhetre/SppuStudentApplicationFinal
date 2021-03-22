import"package:flutter/material.dart";
import 'package:flutter/services.dart';

class teacherProfile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return student_State();
  }
}

class student_State extends State<teacherProfile> {

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
          ),
          title: Row(mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Image.asset("assets/images/logo.jpeg",
                height: 30,alignment: Alignment.center,),
            ],

          ),

          backgroundColor:   Color(0xcc5ac18e),



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
                                  "Profile details",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,

                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0,0,0,20),
                                child: Stack(
                                  children:<Widget> [
                                    CircleAvatar(
                                      radius: 50,
                                      backgroundColor:  Color(0xff5ac18e),

                                    ),
                                    Positioned(bottom: 1,right: 1,
                                        child:Container(
                                          height: 20,
                                          width: 20,
                                          child: Icon(Icons.add_a_photo,color: Colors.white,),
                                          decoration: BoxDecoration(
                                            color: Colors.redAccent,
                                            borderRadius: BorderRadius.circular(20),
                                          ),

                                        ))

                                  ],
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
                              build_MobNo(),
                              SizedBox(
                                height: 10,
                              ),
                              build_blood_group(),


                              Loginbutton(),


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


  Widget buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        /* Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Name",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,

          ),
        ),
      ),
        */
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
              contentPadding: EdgeInsets.only(left: 12,),
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





  Widget buildId() {
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
              hintText: "University teacher Id No",
              hintStyle: TextStyle(
                color: Colors.black,

              ),
            ),
          ),

        ),

      ],

    );
  }

  Widget buildEmail() {
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
              hintText: "Email Adress",
              hintStyle: TextStyle(
                color: Colors.black,

              ),
            ),
          ),

        ),

      ],

    );
  }

  Widget build_blood_group() {
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
              hintText: "Blood Group",
              hintStyle: TextStyle(
                color: Colors.black,

              ),
            ),
          ),

        ),

      ],

    );
  }


  Widget build_MobNo() {
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
              hintText: "Mobile No",
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
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,

      // ignore: deprecated_member_use
      child: RaisedButton(
        elevation: 5,
        onPressed: () => print("Save"),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.white,
        child: Text(
          "Save",
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

/*
class student_State extends State<Registration_student> {
  @override
  Widget build(BuildContext context){
    final _screenSize = MediaQuery.of(context).size;
    // TODO: implement build
    return  Scaffold(
      body:SingleChildScrollView(
          child: Container(
          height: _screenSize.height * 2.0,
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



    ));







  }
}
}*/
