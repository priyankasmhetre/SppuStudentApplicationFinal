import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
class Add_Screen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _AddScreenState();

  }

}

class _AddScreenState extends State<Add_Screen>{
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

            ListTile(
              title: Text("Home"),

              leading: Image.asset("assets/Images/logo.jpeg",
                height: 30,),
            ),
            ListTile(
              title: Text("Profile"),
              leading: SvgPicture.network("https://image.flaticon.com/icons/svg/1904/1904425.svg",height:30,),
            ),

            ListTile(
              title: Text("Add"),
              leading:
              Image.asset("assets/Images/Add.png",
                height: 30,),
            ),





            ListTile(
              title: Text(' Display Attendance'),
              leading: Image.asset("assets/Images/attendence.png",

                height: 30,
              ),

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

            padding:EdgeInsets.all(20.0),
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
                              Image.asset("assets/Images/logo.jpeg",
                              ),

                              Text(" University Home"),
                            ],
                          ),
                        ),
                        Card(

                          shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(

                            children:<Widget> [

                              Image.asset("assets/Images/lecture.png",height: 130,
                              ),

                              Text("Extra Lectures"),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children:<Widget> [

                              Image.asset("assets/Images/pdf.png",height: 130,
                              ),
                              Text("Pdf"),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children:<Widget> [

                              Image.asset("assets/Images/test.png",height: 130,
                              ),
                              Text("Exam Notification"),
                            ],
                          ),
                        ),

                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children:<Widget> [
                              Image.asset("assets/Images/play.png",height: 130,
                              ),
                              Text("Videos"),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children:<Widget> [
                              Image.asset("assets/Images/book.png",height: 130,
                              ),

                              Text("Syllabus"),

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
