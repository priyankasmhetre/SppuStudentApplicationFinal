import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:sppu_student_application/Screens/select_role.dart';
import 'package:path_provider/path_provider.dart';
import 'package:google_fonts/google_fonts.dart';


class splash_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}
class _SplashScreen extends State<splash_screen > {
  @override
  Widget build(BuildContext context) {

    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new select_role(),
      title: new Text(
        'Savitribai Phule Pune University',
       // style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        style: GoogleFonts.aclonica(fontSize: 22.0),
      ),
      image:Image.asset("assets/Images/Home_Page.jpeg"),
      photoSize: 200,
      backgroundColor: Color(0xcc5ac18e),
      loaderColor: Colors.redAccent,
    );





  }
}