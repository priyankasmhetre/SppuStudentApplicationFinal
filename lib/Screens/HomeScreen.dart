import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
class HomeScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();

  }

}

class _HomeScreenState extends State<HomeScreen>{
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
             Image.asset("assets/images/logo.jpeg",
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
                      image: AssetImage("assets/images/uni_image.jpeg"),
                      fit: BoxFit.cover)
              ),
            ),

            ListTile(
              title: Text("Home"),
              leading: Image.asset("assets/images/logo1.png",
              height: 30,),

            ),
            ListTile(
              title: Text("Profile"),
               leading: SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904425.svg",height:30,),

            ),
            ListTile(
              title: Text("exams"),
              leading:  SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904437.svg",height:30,),

            ),
            ListTile(
              title: Text("timetable"),
              leading:SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904565.svg",height:30,),

            ),
            ListTile(
              title: Text('Result'),
             leading: SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904527.svg",height:30,),



            ),
            ListTile(
              title: Text('Attendance'),
              leading: Image.asset("assets/images/attendence.png",

                height: 30,
              ),

            ),
            ListTile(
              title: Text('Fee Receipt'),
              leading: SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904221.svg",height:30,),

            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout),


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
                      primary:false,
                      children:<Widget> [
                        Card(

                          shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(

                            children:<Widget> [
                              Image.asset("assets/images/logo1.png",
                                ),

                              Text("Home"),
                            ],
                          ),
                        ),
                        Card(
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
                        Card(
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
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children:<Widget> [
                              SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904235.svg",height:128,),
                              Text("Courses"),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children:<Widget> [
                              SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904221.svg",height:128,),
                              Text("Fee Receipt"),
                            ],
                          ),
                        ),
                        Card(
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
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children:<Widget> [
                              Image.asset("assets/images/attendence.png",
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
