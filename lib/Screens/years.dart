import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sppu_student_application/Screens/HomeScreenAdmin.dart';


class years extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return student_State1();
  }
}

class student_State1 extends State<years> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  User user=FirebaseAuth.instance.currentUser;

  String valueChoose;
  String valueChoosen;
  String value1;
  String value2;
  String key;
 String sub;
  String value3;
  String sub1;
  String sub2;
  String sub3;
  String sub4;
  String sub5;


  addData1() {
    User user1 = FirebaseAuth.instance.currentUser;
    FirebaseFirestore.instance.collection('AdminAdd').doc("123").set({
      "DepartmentName":value1,"CourseName":value2,"Year":valueChoose,"Semister":valueChoosen,

    }).then((value) {


      FirebaseFirestore.instance
          .collection("AdminAdd").doc("123")

          .collection("Subject")
          .add({
        "Subject": sub1,
      });
    });
  }
  addData() {
    User user1 = FirebaseAuth.instance.currentUser;
    FirebaseFirestore.instance.collection('AdminAdd').doc("123").set({
      "DepartmentName":value1,"CourseName":value2,"Year":valueChoose,"Semister":valueChoosen,

    }).then((value) {


      FirebaseFirestore.instance
          .collection("AdminAdd").doc("123")

          .collection("Subject")
          .add({
        "Subject": sub1,
      }).then((value) =>{
        FirebaseFirestore.instance.collection("AdminAdd").doc("123").
        collection("Subject").doc().collection("Key").add({"Key":key})
      });
    });
  }




  List listitem = [
    "year-I",
    "year-II",
    "year-III"
  ];

  List listitems = [
    "Sem-I",
    "Sem-II",
    "Sem-III",
    "Sem-IV",
    "Sem-V",
    "Sem-VI"
  ];
  List listitem1 = [
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
  List listitem2 = [
    'M.Sc.(Electronic Science)',
    'M.Sc.(Instrumentation Science)',
    'M.Sc.(Mathematics)',
    'M.Sc.(Industrial Mathematics With Computer Application)',
    'M.Sc.(Environmental Sciences)',
    'M.Sc.(Zoology)',
    'M.Sc.(Biotechnology)',
    'Master of Arts in Geography',
    'Master of Science in Geography',
    ' Master of Science in Geoinformatics',
    'PG Bachelor in Science (Applied) in GIS and Remote Sensing.',
    'M.Sc.(Geology)',
    'M.Sc.(Physics)',
    'M.Tech. in Atmospheric Physics',
    'M.Sc.(Chemistry)',
    'M.Sc.(Botany)',
    'M.Sc. (Atmospheric Science)',
    'M.Tech. (Atmospheric Science)',
    'M.Sc.(Stastics)',
    'M.Tech.(Computer Science)',
    'MCA (Computer Science)',
    'M.Sc.(Computer Science)',
    'M.Sc. (Media and Communication Studies)',
    'M.Sc. Microbiology',
    'MSc. Health Sciences',
    'M. Tech. (Energy)',
    'M.Sc (Interdisciplinary School of Scientific Computing)',
    'M.Sc.(Biotechnology)',
    'M.Sc. (Virology)',
    'M.Tech (Biotechnology)',
    'M.Sc (Bioinformatics)',
    'M.Tech(Electrical and Electronics)',
    'M.Tech(Mechanical and Materials)',
    'M.Tech(Chemical and BioTechnology)',
    'M.Tech(Computer and Information Technology)',
    ' M. Com ',
    'MBA',
    'MBA Pharma-Biotech',
    'Excutive MBA',
    'BBA (HFM)',
    'M.A.(Marathi)',
    'M.A. (Hindi Sahitya)',
    'M.A. Prayojanmulak Hindi (Functional Hindi)',
    'M.A.(English)',
    'Master of Arts( Sanskrit / Prakrit )',
    'M.A.(Pali)',
    'PG Diploma in Ambedkar’s Thoughts on India’s National Security.',
    'M.A. Translation : Theory and Application',
    'M.A. in Indian Lagic and Epestemology',
    '	M.A. in Sanskrit Linguistics',
    'M.A.(Economics)',
    'M.A.(History)',
    'M.A.(Philosophy)',
    'M.A. & M. Sc(Anthropology)',
    'M.A. (Psychology) ',
    'M.A. (Politics)',
    'M.A.(Sociology)',
    'M.A./M.Sc. Defence and Strategic Studies.',
    'M.A. in Global Peace, Security and Strategic Studies',
    'M.A./M.Sc. Five Year Integrated Course in Defence and Strategic Studies',
    'M.A. in Global Peace, Security and Strategic Studies',
    'MSW',
    'MA in Gender, Culture and Development Studies',
    'M.A. Lifelong Learning ',
    'LL.M.',
    'B.Sc.B.Ed ',
    'B.Ed.M.Ed ',
  ];












  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
               Navigator.of(context)
              .push(
              MaterialPageRoute(
                builder: (context) =>HomeScreenAdmin()  )
          );
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 115, vertical: 80),
                child: Image.asset(
                  "assets/Images/logo.jpeg",
                  height: 30,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
          backgroundColor: Color(0xcc5ac18e),
        ),
        body: Form(
          child: SingleChildScrollView(
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
                                ]),
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
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text("Form",
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
                                buildDepartment(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                 buildDCourse(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  buildYear(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                 buildSem(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                buildsub1(),



                                 /* SizedBox(
                                    height: 10,
                                  ),
                                  buildkey(),*/

                                  Loginbutton(),
                                ]


                            ),
                          ),
                        ),
                      ],
                    ),
                  ))),
        ));
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

          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 12,
            ),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xcc5ac18e),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  )
                ]),
            height: 60,
            child: DropdownButton(
              hint: Text(
                "Select the Department",
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
              icon: Icon(Icons.arrow_drop_down),
              isExpanded: true,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
              value: value1,
              onChanged: (newValue) {
                setState(() {
                  value1 = newValue;
                });
              },
              items: listitem1.map((valueitem) {
                return DropdownMenuItem(
                  value: valueitem,
                  child: Text(valueitem),
                );
              }).toList(),
            ),
          ),
        ]);
  }


  Widget buildDCourse() {
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

          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 12,
            ),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xcc5ac18e),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  )
                ]),
            height: 60,
            child: DropdownButton(
              hint: Text(
                "Select the Course",
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
              icon: Icon(Icons.arrow_drop_down),
              isExpanded: true,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
              value: value2,
              onChanged: (newValue) {
                setState(() {
                  value2 = newValue;
                });
              },
              items: listitem2.map((valueitem) {
                return DropdownMenuItem(
                  value: valueitem,
                  child: Text(valueitem),
                );
              }).toList(),
            ),
          ),
        ]);
  }
  Widget buildYear() {
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

          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 12,
            ),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xcc5ac18e),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  )
                ]),
            height: 60,
            child: DropdownButton(
              hint: Text(
                "Select the Year",
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
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
        ]);
  }
  Widget buildSem() {
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
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(
            left: 12,
          ),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xcc5ac18e),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                )
              ]),
          height: 60,
          child: DropdownButton(
            hint: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Select the Semester",
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
            icon: Icon(Icons.arrow_drop_down),
            isExpanded: true,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
            value: valueChoosen,
            onChanged: (newValue) {
              setState(() {
                valueChoosen = newValue;
              });
            },
            items: listitems.map((valueitem) {
              return DropdownMenuItem(
                value: valueitem,
                child: Text(valueitem),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }


  Widget buildsub1() {
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
            onChanged: (value) => setState(() {
              sub1=value;
            }),
            //   keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              labelText: "Add Subject1",
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12,),
              hintText:'(e.g  MI-101 (Algebra))',
              hintStyle: TextStyle(
                color: Colors.black,

              ),
            ),
          ),

        ),

      ],

    );
  }
  Widget buildsub2() {
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
            onChanged: (value) => setState(() {
              sub2=value;
            }),
            //   keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              labelText: "Add Subject2",
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12,),
              hintText:'(e.g  MI-101 (Algebra))',
              hintStyle: TextStyle(
                color: Colors.black,

              ),
            ),
          ),

        ),

      ],

    );
  }
  Widget buildsub3() {
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
            onChanged: (value) => setState(() {
              sub3=value;
            }),
            //   keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              labelText: "Add Subject3",
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12,),
              hintText:'(e.g  MI-101 (Algebra))',
              hintStyle: TextStyle(
                color: Colors.black,

              ),
            ),
          ),

        ),

      ],

    );
  }
  Widget buildsub4() {
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
            onChanged: (value) => setState(() {
              sub4=value;
            }),
            //   keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              labelText: "Add Subject4",
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12,),
              hintText:'(e.g  MI-101 (Algebra))',
              hintStyle: TextStyle(
                color: Colors.black,

              ),
            ),
          ),

        ),

      ],

    );
  }
  Widget buildsub5() {
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
            onChanged: (value) => setState(() {
              sub5=value;
            }),
            //   keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              labelText: "Add Subject5",
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12,),
              hintText:'(e.g  MI-101 (Algebra))',
              hintStyle: TextStyle(
                color: Colors.black,

              ),
            ),
          ),

        ),

      ],

    );
  }
  Widget buildkey() {
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
            onChanged: (value) => setState(() {
              key=value;
            }),
            //   keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12,),
              hintText: "Enter Access Key",
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
        onPressed: () => {
          addData1()
        },
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
}
