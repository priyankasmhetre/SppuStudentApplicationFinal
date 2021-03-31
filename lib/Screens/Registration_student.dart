import"package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:sppu_student_application/Screens/login_student.dart';

class Registration_student extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return student_State();
  }
}

class student_State extends State<Registration_student> {
  String valueChoose;
  String valueChoosen;

  List listitem = [''
      'Department of Electronic Science',
    'Department of Instrumentation Science',
    'Department Of Mathematics',
    'Department of Environmental Sciences',
    'Department of Zoology',
    'Department of Biotechnology',
    'Department of Geography',
    'Department of Geology',
    'Department of Physics',
    'Department of Chemistry',
    'Department of Botany',
    'Department of Atmospheric and Space Sciences',
    'Department of Statistics',
    'Department of Computer Science',
    'Department of Media and Communication Studies',
    'Department of Microbiology',
    'Interdisciplinary School of Health Sciences',
    'School of Energy Studies',
    'Interdisciplinary School of Scientific Computing',
    'Institute of Bioinformatics Biotechnology IBB',
    'Bioinformatics Centre',
    'Centre for Information and Network Security CINS',
    'Centre for Modeling and Simulation',
    'School of Basic Medical Sciences',
    'Department of Technology',
    'Department of Commerce & Research Centre',
    'Department of Management Science',
    'Department Of Marathi',
    'Department of Hindi',
    'Department of English',
    'Department of Sanskrit and Prakrit Languages',
    'Department of Pali',
    'Department of Dr. Babasaheb Ambedkar Studies',
    'Centre for Advanced Studies in Sanskrit',
    'Department of Economics',
    'Department of History',
    'Department of Philosophy',
    'Department of Anthropology',
    'Department of Psychology',
    'Department of Politics and Public Administration',
    'Department of Sociology',
    'Department of Defence & Strategic Studies',
    'Interdisciplinary School (Humanities and Social Science)',
    'Krantijyoti Savitribai Phule Womens Studies Centre',
    'Department of Lifelong Learning & Extension',
    'Department of Law',
    'Centre for Social Sciences and Humanities (CSSH)',
    'Department of Education & Extension',
    'Department of Physical Education',
    'Centre for Performing Arts',
    'Jayakar Library of Library & Information Science',
    'Department of Library & Information Science',
    'Department of Communication and Journalism',
    'Skill Development Centre'];

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
                                  "Registration Page",
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

  Widget buildDepartment() {

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
      ), */

          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(left: 12,),
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
            child: DropdownButton(
              hint: Text("Select the Department",
                style: TextStyle(
                  color: Colors.black87,
                ),),

              icon: Icon(Icons.arrow_drop_down),
              isExpanded: true,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
              value: valueChoose,
              onChanged: (newValue) {
                setState(() {
                  valueChoose = newValue;
                });
              },
              items: listitem.map((valueitem) {
                return DropdownMenuItem(
                  value: valueitem,
                  child: Text(valueitem),
                );
              }).toList(),
            ),
          ),
        ]
    );
  }


  Widget buildCourse() {
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

  Widget Loginbutton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,

      // ignore: deprecated_member_use
      child: RaisedButton(
        elevation: 5,
        onPressed: () => print("Submit"),
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
            fontWeight: FontWeight.bold,

          ),

        ),
      ),

    );
  }

  Widget forgotbutton() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () =>
      {
          Navigator.of(context)
          .push(
          MaterialPageRoute(
            builder: (context) => login_student(),)
      ),
    },

        
        padding: EdgeInsets.only(right: 0),

        child: Text(
          "Already Register? Login Here",

          style: TextStyle(
            color: Colors.white,
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
