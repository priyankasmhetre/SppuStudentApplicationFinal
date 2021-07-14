import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sppu_student_application/Screens/Add.dart';
import 'package:sppu_student_application/Screens/FetchTeacher_Profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sppu_student_application/Screens/select_role.dart';


class  TeacherHomeScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _TeacherHomeScreenState();

  }

}

class _TeacherHomeScreenState extends State<TeacherHomeScreen>{
  FirebaseAuth _auth=FirebaseAuth.instance;
  Future<void>logout() async{
    User user=_auth.signOut() as User;

  }
String valueChoose;
String sub1;
String pdf1;
List listitem = ['Extra Lectures','Syllabus','Pdf','Videos','Exam Notification'];
addData1() {
  User user = FirebaseAuth.instance.currentUser;
  FirebaseFirestore.instance.collection('Subject').doc(user.uid).set({
    "Subject": sub1,


  }).then((value) {

    FirebaseFirestore.instance
        .collection("Subject")
        .doc(user.uid)
        .collection("pdf")
        .add({
      "pdf": pdf1,
    });
  });
}

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     backgroundColor:   Color(0xff5ac18e),

      appBar:AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Images/logo.jpeg",
              height: 30,alignment: Alignment.center,),
          ],
        ),

        backgroundColor:   Color(0xcc5ac18e),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),

            child: Icon(Icons.notifications),
          ),
        ],
      ),
      drawer:Drawer(

        child: ListView(

          children:<Widget> [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("assets/Images/uni_image.jpeg"),
                      fit: BoxFit.cover)
              ),
            ),

            ListTile(
              title: Text("Home"),

              leading: Image.asset("assets/Images/logo.jpeg",
                height: 30,),
            ),
            InkWell(
               onTap: (){
                 Navigator.of(context)
                     .push(
                     MaterialPageRoute(
                       builder: (context) =>FetchTeacherProfile(),)
                 );
               },

              child: ListTile(
                title: Text("Profile"),
                leading: SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904425.svg",height:30,),
              ),
            ),

               InkWell(
                 onTap: (){
                   Navigator.of(context)
                       .push(
                       MaterialPageRoute(
                         builder: (context) =>Add_Screen(),)
                   );
                 },
                 child: ListTile(
                  title: Text("Add"),
                  leading:
                     Image.asset("assets/Images/Add.png",
                      height: 30,),
                  ),
               ),
            
              



            ListTile(
              title: Text(' Display Attendance'),
              leading: Image.asset("assets/Images/attendence.png",

                height: 30,
              ),

            ),

            InkWell(
              onTap: (){
                logout();
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(
                        builder: (context) =>select_role())
                );

              },
              child: ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.logout),


              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[


          SafeArea(child:Padding(

            padding:EdgeInsets.all(40.0),
            child: Column(

              children:<Widget> [
                Expanded(
                  child: GridView.count(

                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      padding: EdgeInsets.all(8),
                      primary:false,
                      children:<Widget> [

                         Card(

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children:<Widget> [
                                Image.asset("assets/Images/logo.jpeg",
                                ),

                                Text("Home"),
                              ],
                            ),
                          ),
                         
                         InkWell(
                           onTap: (){
                             Navigator.of(context)
                                 .push(
                                 MaterialPageRoute(
                                   builder: (context) =>FetchTeacherProfile(),)
                             );
                           },
                           child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),

                              // ignore: deprecated_member_use
                             child: Column(
                               children:<Widget> [
                                 SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904425.svg",height:128,),

                                 Text(" Profile "),
                               ],
                             ),


                                ),
                         ),

                            






                     InkWell(
                       onTap: (){
                         Navigator.of(context)
                             .push(
                             MaterialPageRoute(
                               builder: (context) =>Add_Screen(),)
                         );

                       },

                       child: Card(

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),


                                child: SingleChildScrollView(
                                  child: Column(
                                    children:<Widget> [


                                      Image.asset("assets/Images/Add2.png",
                                      ),

                                      Text(" Add "),

                                    ],
                                  ),
                                ),

                            ),
                     ),

                         Card(

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children:<Widget> [
                                Image.asset("assets/Images/attendence.png",
                                ),
                                Text(" Display Attendence"),
                              ],
                            ),
                          ),

                      ],
                      crossAxisCount:2),
                ),
              ],

            ),

          ),
          ),

        ],
      ),

    );
  }

}
