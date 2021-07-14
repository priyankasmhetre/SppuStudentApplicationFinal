import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sppu_student_application/Screens/Fetch.dart';
import 'package:sppu_student_application/Screens/FetchSubject.dart';
import 'package:sppu_student_application/Screens/Student_SPV.dart';
import 'package:sppu_student_application/Screens/select_role.dart';
import 'package:sppu_student_application/pdf/Fetch_timetable.dart';
import 'package:sppu_student_application/pdf/Fetch_result.dart';
class HomeScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();

  }

}

class _HomeScreenState extends State<HomeScreen>{
  FirebaseAuth _auth=FirebaseAuth.instance;
  Future<void>logout() async{
    User user=_auth.signOut() as User;

  }
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;

    // TODO: implement build
    return Scaffold(
      //backgroundColor: Color(0xff5ac18e),
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

           /* ListTile(
              title: Text("Home"),
              leading: Image.asset("assets/Images/logo.jpeg",
              height: 30,),

            ),*/
            InkWell(
              onTap: (){
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(
                      builder: (context) =>Fetch(),)
                );
              },

              child: ListTile(
                title: Text("Profile"),
                 leading: SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904425.svg",height:30,),

              ),
            ),
            ListTile(
              title: Text(" upcoming exams"),
              leading:  SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904437.svg",height:30,),

            ),
            InkWell(
              onTap: (){
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(
                        builder: (context) =>FetchTimetable())
                );
              },
              child: ListTile(
                title: Text("timetable"),
                leading:SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904565.svg",height:30,),

              ),
            ),
            InkWell(
             onTap: () {
               Navigator.of(context)
                   .push(
                   MaterialPageRoute(
                       builder: (context) => Fetch_result())
               );
             },
              child: ListTile(
                title: Text('Result'),
               leading: SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904527.svg",height:30,),



              ),
            ),
            ListTile(
              title: Text('Attendance'),
              leading: Image.asset("assets/Images/attendence.png",

                height: 30,
              ),

            ),
            InkWell(
              onTap: (){
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(
                      builder: (context) =>Student_SPV())
                );

              },
              child: ListTile(
                title: Text('Course Material'),
                leading: SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904235.svg",height:30,),

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

            padding:EdgeInsets.all(20.0),
            child: Column(

              children:<Widget> [
                Expanded(
                  child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary:false,
                      children:<Widget> [
                       /* Card(

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
                        ),*/
                        InkWell(
                          onTap: (){
                            Navigator.of(context)
                                .push(
                                MaterialPageRoute(
                                  builder: (context) =>Fetch(),)
                            );

                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children:<Widget> [
                                SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904425.svg",height:128,),
                                Text("Profile"),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.of(context)
                                .push(
                                MaterialPageRoute(
                                    builder: (context) =>Fetch_result())
                            );
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children:<Widget> [
                                SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904527.svg",height:128,),
                                Text("Result"),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children:<Widget> [
                              SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904437.svg",height:128,),
                              Text("Upcoming Exams"),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.of(context)
                                .push(
                                MaterialPageRoute(
                                  builder: (context) =>Student_SPV())
                            );

                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children:<Widget> [
                                SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904235.svg",height:128,),
                                Text("Course Material"),
                              ],
                            ),
                          ),
                        ),
                      /*  Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children:<Widget> [
                              SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904221.svg",height:128,),
                              Text("Fee Receipt"),
                            ],
                          ),
                        ),*/
                        InkWell(
                          onTap: (){
                            Navigator.of(context)
                                .push(
                                MaterialPageRoute(
                                    builder: (context) =>FetchTimetable())
                            );

                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children:<Widget> [
                                SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904565.svg",height:128,),

                                Text("Timetale"),
                              ],
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
                              Text("Attendence"),
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
