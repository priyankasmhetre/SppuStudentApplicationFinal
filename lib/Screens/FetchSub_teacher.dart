import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sppu_student_application/Screens/HomeScreen.dart';
import 'package:sppu_student_application/Screens/TeacherAdd.dart';
import 'package:sppu_student_application/Screens/TeacherHomeScreen.dart';
import 'package:sppu_student_application/Screens/login.dart';
import 'package:logcat/logcat.dart';
import 'package:sppu_student_application/Screens/teacher_login.dart';

class FetchSubjectteacher extends StatefulWidget {


  // final doc;
  // SubCategoery(this.doc);


  @override
  _SubCategoryClassState createState() => _SubCategoryClassState();

}

class _SubCategoryClassState extends State<FetchSubjectteacher> {




  final db = FirebaseFirestore.instance;


  User user1 = FirebaseAuth.instance.currentUser;
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,
          ), onPressed: () {
          Navigator.of(context)
              .push(
              MaterialPageRoute(
                  builder: (context) =>login_teacher())
          );

        },
        ),

        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 60),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:25,vertical: 20),
                child: Text("My Subjects",style: GoogleFonts.aclonica(
                  fontSize: 15.0,
                ),),
              ),
            ),
          ],
        ),



        backgroundColor :  Color(0xcc5ac18e),
      ),
      body: Container(
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
        child:


        new StreamBuilder<QuerySnapshot>(
          stream: db.collection("AdminAdd").doc("123").collection('Subject').snapshots(),

          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var doc = snapshot.data.docs;
              return new ListView.builder(
                  itemCount: doc.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Column(
                        children:<Widget>[
                          SizedBox(
                            height:100,
                            width: 200,
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context)
                                    .push(
                                    MaterialPageRoute(
                                        builder: (context) =>TeacherHomeScreen())
                                );

                              },

                              child: SizedBox(
                                width: double.infinity,
                                height: 1000,
                                child: Card(

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  color: Colors.teal,
                                  elevation: 10,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,


                                    children: <Widget>[
                                      Center(
                                        child: Text(doc[index].get('Subject'),
                                            style:TextStyle(
                                              fontSize: 20,
                                            )
                                        ),
                                      ),
                                      /* SizedBox(
                                    height: 10.0,

                                  ),*/

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          /* SizedBox(
                          height:70,
                          width: 100,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context)
                                  .push(
                                  MaterialPageRoute(
                                    builder: (context) =>HomeScreen(),)
                              );
                            },

                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              color: Colors.green,
                              elevation: 10,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,

                                children: <Widget>[
                                  Text(doc[index].get('Subject2')),
                                  SizedBox(
                                    height: 10.0,
                                    width: 70,
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height:70,
                          width: 100,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context)
                                  .push(
                                  MaterialPageRoute(
                                    builder: (context) =>HomeScreen(),)
                              );

                            },
                            child: Card(


                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),

                              ),
                              color: Colors.deepOrange,
                              elevation: 10,

                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(doc[index].get('Subject3')),
                                  SizedBox(
                                    height: 10.0,
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height:70,
                          width: 100,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context)
                                  .push(
                                  MaterialPageRoute(
                                    builder: (context) =>HomeScreen(),)
                              );

                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              color: Colors.pinkAccent,
                              elevation: 10,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(doc[index].get('Subject4')),
                                  SizedBox(
                                    height: 10.0,
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height:70,
                          width: 100,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context)
                                  .push(
                                  MaterialPageRoute(
                                    builder: (context) =>HomeScreen(),)
                              );

                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              color: Colors.lightBlue,
                              elevation: 10,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(doc[index].get('Subject5')),
                                  SizedBox(
                                    height: 10.0,
                                    width: 70,
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),*/
                        ],
                      ),



                    );
                  });
            } else {
              return LinearProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}