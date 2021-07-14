import"package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sppu_student_application/Screens/HomeScreen.dart';
import 'package:sppu_student_application/Screens/Profile_student.dart';




class delete extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<delete> {
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
                  onPressed: () => _pushPage(context,Profile_student()),
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

              stream: FirebaseFirestore.instance.collection('Profile').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final services = snapshot.data.docs;
                  List<Widget>servicesWidget = [];
                  for (var st in services) {
                    final Email = st.data()['Email'];
                    final FullName = st.data()['FullName'];
                    final docid=st.data()['id'];


                    final values = buildTile(Email,FullName ,docid,context);
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
  buildTile(Email,FullName,docid,BuildContext context) {
    return ListTile(
      onTap: (){


         Scaffold(
                    body: Container(
                      child: Column(
                        children:<Widget> [
                          Text("are you want to delete"),
                        SizedBox(height:10),
                          Center(
                            child: IconButton(
                              icon:Icon(Icons.delete_forever,color: Colors.red,),
                              onPressed: (){
                                FirebaseFirestore.instance.collection('Profile').doc(docid).delete().whenComplete((){
                                  Navigator.pop(context);
                                });
                              }
                            ),
                          )
                        ],
                      ),
                    ),
         );

         },
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






    ]
    ),
    );
  }




}
