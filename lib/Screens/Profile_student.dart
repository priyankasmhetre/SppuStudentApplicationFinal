import 'dart:io';

import"package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sppu_student_application/Screens/FetchSubject.dart';
import 'package:sppu_student_application/Screens/HomeScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:sppu_student_application/Screens/Verify_student.dart';
import 'package:sppu_student_application/Screens/YourSuject.dart';
import 'package:sppu_student_application/Screens/finalFetchSubject.dart';
import 'package:sppu_student_application/Screens/login.dart';
import 'package:sppu_student_application/Screens/years.dart';

class Profile_student extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return student_State();
  }
}
class student_State extends State<Profile_student> {
  final db = FirebaseFirestore.instance;
  User user = FirebaseAuth.instance.currentUser;
  PickedFile imageFile;
  ImagePicker _picker = ImagePicker();
  String Fullname;
  int RollNo;
  String CourseName;
  String Email;
  String ID;
  int MobNO;
  String BlooG;
  String Adress;
  String valueChoose;
  String valueChoosen;
  addData1() {
    Map<String,dynamic> demodata={"FullName":Fullname,"rollNo": RollNo,"Year":valueChoose,"Semister":valueChoosen,"ID":ID,"Email":Email,"MobNO":MobNO
      ,"BloodGroup":BlooG,
      "Adress":Adress};
    User user=FirebaseAuth.instance.currentUser;
    FirebaseFirestore.instance.collection('Profile').doc(user.uid).set(demodata

    );





  }





  List listitem = [
    " year-I",
    " year-II",
    " year-III"
  ];
  List listitems = [
    " Sem-I",
    " Sem-II",
    " Sem-III",
    " Sem-IV",
    " Sem-V",
    " Sem-VI"
  ];
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white,
            ), onPressed: () {
            Navigator.of(context)
                .push(
                MaterialPageRoute(
                    builder: (context) => Verify_student())
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
                                      backgroundColor: Color(0xcc5ac18e) ,
                                      backgroundImage: imageFile==null
                                          ?AssetImage("assets.images/logo.jpeg")
                                          :FileImage(File(imageFile.path)),

                                    ),
                                    Positioned(bottom: 1,right: 1,
                                        child:Container(
                                          height: 20,
                                          width: 20,
                                          child:InkWell(
                                            onTap: (){
                                              showModalBottomSheet(context: context,
                                                builder: ((builder)=>bottomsheet()),
                                              );
                                            },
                                            child: Icon(Icons.add_a_photo,color: Colors.white,),
                                          ),
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
                                height: 10,
                              ),
                              build_Roll_No(),

                              SizedBox(
                                height: 10,
                              ),
                              build_Year(),
                              SizedBox(
                                  height: 10
                              ),
                              build_Sem(),
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
                              SizedBox(
                                height: 10,
                              ),
                              build_Adress(),
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
        ));
  }
  Widget bottomsheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20
      ),
      child: Column(
        children:<Widget> [
          Text(
            "Choose a Profile",
            style: TextStyle(
              fontSize: 20,
            ),),
          SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                // ignore: deprecated_member_use
                FlatButton.icon( icon:Icon(Icons.camera_alt),onPressed:(){
                  takePhoto(ImageSource.camera);
                },
                    label:Text("Camera")
                ),
                // ignore: deprecated_member_use
                FlatButton.icon( icon:Icon(Icons.image),onPressed:(){
                  takePhoto(ImageSource.gallery);
                },
                    label:Text("Gallary")
                )
              ]
          )
        ],
      ),
    );
  }
  void takePhoto (ImageSource source) async {
    final pickedFile=await _picker.getImage(
      source : source,
    );
    setState(() {
      imageFile=pickedFile;
    });
  }
  Widget buildName() {
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
              Fullname=value;
            }),
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

  Widget build_Course() {
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
              Fullname=value;
            }),
            //   keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12,),
              hintText: "Course Name",
              hintStyle: TextStyle(
                color: Colors.black,

              ),
            ),
          ),

        ),

      ],

    );
  }

  Widget build_Roll_No() {
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
              RollNo=int.parse(value);
            }),
            //   keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12,),
              hintText: "Roll No",
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
              ID=value;
            }),
            //
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12,),
              hintText: "University Unique Id No",
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
              Email=value;
            }),
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

  Widget build_blood_group() {
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
              BlooG=value;
            }),
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
              MobNO=int.parse(value);
            }),
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

  Widget build_Year() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        SizedBox(height: 10,),
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
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                )
              ]
          ),
          height: 60,
          child: DropdownButton(
            hint: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Select the Year",
                style: TextStyle(
                  color: Colors.black87,
                ),),
            ),

            icon: Icon(Icons.arrow_drop_down),
            isExpanded: true,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
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

      ],

    );
  }

  Widget build_Sem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        SizedBox(height: 10,),
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
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                )
              ]
          ),
          height: 60,
          child: DropdownButton(
            hint: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Select the Semester",
                style: TextStyle(
                  color: Colors.black87,
                ),),
            ),

            icon: Icon(Icons.arrow_drop_down),
            isExpanded: true,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
            ),
            value: valueChoosen,
            onChanged: (newValue) {
              setState(() {
                valueChoosen= newValue;
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

  Widget build_Adress() {
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
              Adress=value;
            }),
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12,),
              hintText: "Address",
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
        onPressed: () {
          addData1();
          Navigator.of(context)
              .push(
              MaterialPageRoute(
                  builder: (context) =>login())
          );
        },
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
