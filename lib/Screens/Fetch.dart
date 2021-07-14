import"package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sppu_student_application/Screens/HomeScreen.dart';
import 'package:sppu_student_application/Screens/Profile_student.dart';
import 'package:sppu_student_application/Screens/updateProfile.dart';




class Fetch extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Fetch> {
  User user=FirebaseAuth.instance.currentUser;
  String FullName;
  String Email;



  @override
  Widget build(BuildContext context) {


    void _pushPage(BuildContext context, Widget page) {
      Navigator.of(context).push(
        MaterialPageRoute<void>(builder: (_) => page),
      );
    }


    return Scaffold(
            appBar: AppBar(
             leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white,
                ), onPressed: () {
               Navigator.of(context)
                   .push(
                   MaterialPageRoute(
                       builder: (context) =>HomeScreen())
               );
                
              },
              ),

              title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 60),
                    child: Text("My Profile",style: GoogleFonts.aclonica(
                        fontSize: 15.0,
                      ),),
                  ),
                ],
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.all(10.0),

                  child: FlatButton(
                    onPressed: () => _pushPage(context,updateProfile()),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 10.0,
                    ),
                    color: Colors.white70,
                    textColor: Colors.black,
                    child: Text(
                      "Update Profile",
                      style: GoogleFonts.aclonica(
                        fontSize: 10.0,
                      ),
                    ),
                  )
                ),
              ],


              backgroundColor :  Color(0xcc5ac18e),
            ),
            body:

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
              child: StreamBuilder<QuerySnapshot>(

                stream: FirebaseFirestore.instance.collection('Profile').where('Email', isEqualTo:Email ).snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final services = snapshot.data.docs;
                    List<Widget>servicesWidget = [];
                    for (var st in services) {
                      final Email = st.data()['Email'];
                      final FullName = st.data()['FullName'];
                      final Adress = st.data()['Adress'];
                      final rollNo = st.data()['rollNo'];
                      final ID = st.data()['ID'];

                      final  BloodGroup = st.data()['BloodGroup'];
                      final  MobNO = st.data()['MobNO'];
                      final Semister = st.data()['Semister'];
                      final  Year = st.data()['Year'];
                      









                      final values = buildTile(Email,FullName ,Adress, rollNo,ID,BloodGroup,MobNO,Year,Semister,context);
                      servicesWidget.add(values);
                    }
                    return ListView(
                      children: servicesWidget,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),

                    );
                  }
                  return Center(child: CircularProgressIndicator());
                }
                ),
            )



    );


  }
  buildTile(Email,FullName,Adress,rollNo,ID,BloodGroup,MobNO,Year,Semister,BuildContext context) {
    return ListTile(



          title: TextField(
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 12,),
              hintText: 'FullName : $FullName',
              hintStyle: GoogleFonts.aclonica(
                fontSize: 15.0,
              ),
            ),
          ),

        subtitle: Column(
          children: <Widget>[
            TextField(
              style: TextStyle(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 12,),
                hintText: 'Email : $Email',
                hintStyle: GoogleFonts.aclonica(
                  fontSize: 15.0,
                ),
              ),
            ),
            TextField(
              style: TextStyle(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 12,),
                hintText: 'Adress : $Adress',
                hintStyle: GoogleFonts.aclonica(
                  fontSize: 15.0,
                ),
              ),
            ),
            TextField(
              style: TextStyle(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 12,),
                hintText: 'rollNo : $rollNo',
                hintStyle: GoogleFonts.aclonica(
                  fontSize: 15.0,
                ),
              ),
            ),
            TextField(
              style: TextStyle(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 12,),
                hintText: 'ID : $ID',
                hintStyle: GoogleFonts.aclonica(
                  fontSize: 15.0,
                ),
              ),
            ),
            TextField(
              style: TextStyle(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 12,),
                hintText: 'BloodGroup : $BloodGroup',
                hintStyle: GoogleFonts.aclonica(
                  fontSize: 15.0,
                ),
              ),
            ),
            TextField(
              style: TextStyle(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 12,),
                hintText: 'MobNO : $MobNO',
                hintStyle: GoogleFonts.aclonica(
                  fontSize: 15.0,
                ),
              ),
            ),
            TextField(
              style: TextStyle(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 12,),
                hintText: 'Year : $Year',
                hintStyle: GoogleFonts.aclonica(
                  fontSize: 15.0,
                ),
              ),
            ),
            TextField(
              style: TextStyle(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 12,),
                hintText: 'Semister : $Semister',
                hintStyle: GoogleFonts.aclonica(
                  fontSize: 15.0,
                ),
              ),
            ),


          ],
        )


    );
  }




  }
